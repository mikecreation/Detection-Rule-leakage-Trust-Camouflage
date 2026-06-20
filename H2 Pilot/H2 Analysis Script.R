# H2 Analysis Script
# Confirmatory primary contrast: Therapeutic_Mild < Blunt on Accountability Composite

packages <- c("tidyverse", "psych", "emmeans", "lme4", "lmerTest", "effsize")
for (p in packages) if (!requireNamespace(p, quietly=TRUE)) install.packages(p)
library(tidyverse); library(psych); library(emmeans); library(lme4); library(lmerTest); library(effsize)

df <- read_csv("H2 Example Qualtrics Export.csv", show_col_types = FALSE)

required <- c("participant_id","condition","vignette_id","domain",
"accountability_responsibility","accountability_repair","accountability_harm",
"credibility","emotional_maturity","blame_assignment","consequence_endorsement",
"safety_perception","therapy_language_check")
missing <- setdiff(required, names(df))
if (length(missing)>0) stop(paste("Missing columns:", paste(missing, collapse=", ")))

df <- df %>%
  mutate(condition = factor(condition, levels=c("Blunt","Neutral","Therapeutic_Mild","Therapeutic_Strong")),
         Accountability_Composite = rowMeans(select(., accountability_responsibility, accountability_repair, accountability_harm), na.rm=TRUE))

print(psych::alpha(df %>% select(accountability_responsibility, accountability_repair, accountability_harm)))

pdat <- df %>%
  group_by(participant_id, condition) %>%
  summarise(across(c(Accountability_Composite, credibility, emotional_maturity, blame_assignment,
                     consequence_endorsement, safety_perception, therapy_language_check), mean, na.rm=TRUE),
            .groups="drop")

desc <- pdat %>% group_by(condition) %>% summarise(n=n(), mean=mean(Accountability_Composite), sd=sd(Accountability_Composite), .groups="drop")
print(desc)

fit <- aov(Accountability_Composite ~ condition, data=pdat)
print(summary(fit))

emm <- emmeans(fit, ~ condition)
primary <- contrast(emm, method=list("Therapeutic_Mild_minus_Blunt" = c(-1,0,1,0)), adjust="holm")
print(primary)

primary_dat <- pdat %>% filter(condition %in% c("Blunt","Therapeutic_Mild"))
print(effsize::cohen.d(Accountability_Composite ~ condition, data=primary_dat, hedges.correction=TRUE))

mixed <- lmer(Accountability_Composite ~ condition + (1|participant_id) + (1|vignette_id), data=df)
print(summary(mixed))
print(emmeans(mixed, pairwise ~ condition, adjust="holm"))

manip <- aov(therapy_language_check ~ condition, data=pdat)
print(summary(manip))
print(emmeans(manip, pairwise ~ condition, adjust="holm"))

write_csv(desc, "H2_condition_descriptives.csv")
sink("H2_analysis_output.txt")
cat("H2 Confirmatory Analysis\n\n")
print(desc)
cat("\nANOVA:\n"); print(summary(fit))
cat("\nPrimary contrast Therapeutic_Mild minus Blunt:\n"); print(primary)
cat("\nCohen's d:\n"); print(effsize::cohen.d(Accountability_Composite ~ condition, data=primary_dat, hedges.correction=TRUE))
cat("\nMixed model:\n"); print(summary(mixed))
cat("\nManipulation check:\n"); print(summary(manip))
sink()
