# TCFS Inter-Rater Reliability Script
# Input: TCFS Coder Sheet Filled.csv

packages <- c("tidyverse", "irr", "psych", "lme4", "lmerTest", "binom")
for (p in packages) if (!requireNamespace(p, quietly=TRUE)) install.packages(p)
library(tidyverse); library(irr); library(psych); library(lme4); library(lmerTest); library(binom)

df <- read_csv("TCFS Coder Sheet Filled.csv", comment="#", show_col_types=FALSE)

score_cols <- c("repair_outcome","accountability_outcome","evidence_outcome","consequence_outcome","pattern_outcome")
df <- df %>% mutate(across(all_of(score_cols), as.numeric),
                    tcfs_total=as.numeric(tcfs_total),
                    coder_confidence=as.numeric(coder_confidence))

wide_total <- df %>% select(item_id, coder_id, tcfs_total) %>%
  pivot_wider(names_from=coder_id, values_from=tcfs_total) %>% select(-item_id)
print(irr::icc(wide_total, model="twoway", type="agreement", unit="average"))

for (m in score_cols) {
  wide_m <- df %>% select(item_id, coder_id, all_of(m)) %>%
    pivot_wider(names_from=coder_id, values_from=all_of(m)) %>% select(-item_id)
  cat("\nMarker:", m, "\n")
  print(irr::kripp.alpha(t(as.matrix(wide_m)), method="ordinal"))
}

summary_by_condition <- df %>% group_by(condition) %>%
  summarise(n=n(), mean_tcfs=mean(tcfs_total, na.rm=TRUE), sd_tcfs=sd(tcfs_total, na.rm=TRUE), .groups="drop")
print(summary_by_condition)

if ("function_preserved_3of4_excluding_pattern" %in% names(df)) {
  bin <- df %>% filter(condition=="Laundered", function_preserved_3of4_excluding_pattern %in% c("Y","N")) %>%
    mutate(preserved=function_preserved_3of4_excluding_pattern=="Y")
  if (nrow(bin)>0) print(binom::binom.confint(sum(bin$preserved), nrow(bin), methods="wilson"))
}

if (length(unique(df$condition)) > 1) {
  mixed <- lmer(tcfs_total ~ condition + (1|prompt_id) + (1|coder_id), data=df)
  print(summary(mixed))
}

write_csv(summary_by_condition, "TCFS_condition_summary.csv")
