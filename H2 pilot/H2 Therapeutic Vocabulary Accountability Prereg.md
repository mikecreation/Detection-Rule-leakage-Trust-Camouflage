# Pre-registration: H2 – Therapeutic Vocabulary Reduces Accountability Perception
### Trust Camouflage — Study 1 Vignette Experiment – v3

**OSF: to be registered before data collection**  
**Date:** 2026-06-19  
**PI:** Michael Zot — ORCID 0009-0001-9194-938X  
**Companion paper:** Zot, M. (2026). Detection-Rule Leakage and Trust Camouflage. TCFS v0.2

---

## 1. Hypothesis

**H2: Observers will rate the same avoidant or coercive behavior as less harmful when it is wrapped in therapeutic language.**

Confirmatory prediction: **The Therapeutic_Mild-language condition will produce significantly lower Accountability Composite scores than the Blunt-language condition.**

Therapeutic_Mild is the reviewer-safe primary test because it tests plausible therapy-language camouflage without making the stimulus obvious/parodic. Therapeutic_Strong is retained as an exploratory high-intensity condition for dose-response and ceiling-effect analysis only.

Exploratory dose-response: Blunt > Neutral > Therapeutic_Mild > Therapeutic_Strong on the Accountability Composite.

---

## 2. Design

Between-subjects vignette experiment, 1 factor × 4 levels, random assignment.

- **Condition A – Blunt:** Actor uses direct/hostile language, no clinical terms
- **Condition B – Neutral:** Actor uses plain non-clinical language
- **Condition C – Therapeutic_Mild:** Same behavior, wrapped in plausible low-intensity therapeutic / self-awareness language. May include partial accountability language, emotional overwhelm, need for space, self-awareness, vague deferral, softer tone. MUST NOT include: a concrete repayment plan, a specific repair time/date, an actual apology plus next step, evidence comparison, or a clear accountability pathway. Behavior is held constant across all conditions – only the linguistic wrapper changes.
- **Condition D – Therapeutic_Strong:** Same behavior, wrapped in explicit clinical / safety vocabulary (boundaries, dysregulation, trauma response, nervous system safety, etc.). Exploratory only.

12 vignette stems × 4 language versions = 48 total stimuli.

Each participant sees 4 vignettes, **stratified by the 4 TCFS domains** (one Responsibility Avoidance, one Conversation Avoidance, one Blame Relocation, one Reality Dissolution), randomly sampled within domain, randomized presentation order, Latin-square counterbalanced across participants.

Vignette sampling allocation is logged per participant. The analysis report will include a frequency table showing how many participants saw each stem, by condition.

Vignette domains:
1. Responsibility Avoidance – shared obligation ignored (3 stems)
2. Conversation Avoidance – repair conversation blocked (3 stems)
3. Blame Relocation – harm caused, victim reaction blamed (3 stems)
4. Reality Dissolution – factual contradiction reframed as subjective experience (3 stems)

All stems hold the **underlying behavior constant** across all four conditions. Only the actor's linguistic wrapper changes. Therapeutic_Mild versions are deliberately plausible and do NOT add concrete repair steps that are absent in the Blunt/Neutral versions.

Full stimulus set: `H2_vignette_stimuli_v3.csv`

---

## 3. Participants

**Inclusion:** US/UK/CA/AU, age 18+, fluent English, Prolific/MTurk/CloudResearch  
**Exclusion:** <2 min completion, failed 2/2 attention checks, straight-lining (SD=0 across all DVs for ≥3 vignettes)

**Power analysis – G*Power 3.1**

Primary confirmatory contrast: Therapeutic_Mild vs Blunt (two-tailed t)
- d = 0.50 medium
- α = .05, power = 0.80
- Required n = 64 per group

With 4 groups total → N = 256

Accounting for 15% exclusions → **recruit N = 300, target analyzable N ≥ 260**

One-way ANOVA, 4 groups, f = 0.25: N = 180 minimum – satisfied at N=260.

Dose-response contrast (Blunt > Neutral > Therapeutic_Mild > Therapeutic_Strong, Jonckheere-Terpstra): powered at N=260, >0.85 for monotonic d=0.35 steps.

Pilot path: N=40–60 exploratory – estimate effect direction, variance, item clarity. Pilot data will be clearly labeled as exploratory and will NOT be pooled with confirmatory data.

---

## 4. Measures

All 7-point Likert, 1 = strongly disagree / not at all, 7 = strongly agree / extremely

**Primary DV – Accountability Composite (α target ≥ .75)**
Mean of:
1. "The speaker should take responsibility for what happened." 
2. "The speaker owes the other person a repair / apology / concrete next step."
3. "How harmful was the speaker's behavior?" 

**Secondary DVs (exploratory)**
4. Credibility: "How credible / believable was the speaker?"
5. Emotional maturity: "How emotionally mature did the speaker sound?"
6. Blame assignment: "Who is primarily at fault here?" –1 = other person entirely … +1 = speaker entirely, rescaled 1–7
7. Consequence endorsement: "Should there be consequences for the speaker's behavior?"
8. Safety perception: "Did the speaker sound psychologically safe / regulated?"

**Manipulation check**
"Did the speaker use clinical / therapeutic / mental-health language?" 1–7
Expected ordering: Therapeutic_Strong > Therapeutic_Mild > Neutral > Blunt

**Covariates (exploratory)**
- Therapy exposure: "Have you ever been in therapy?" Y/N
- Mental-health literacy scale (brief, 5 items)
- Age, gender, education

All items randomized within vignette block.

---

## 5. Analysis plan

**Primary (confirmatory):**
One-way ANOVA: Accountability_Composite ~ Condition

Planned primary contrast: **The Therapeutic_Mild-language condition will produce significantly lower Accountability Composite scores than the Blunt-language condition.** Two-tailed, Holm-corrected.

H2 is supported if: Therapeutic_Mild < Blunt, p < .05, d ≥ 0.30

**Secondary / exploratory:**
- ANOVA on each secondary DV
- Pairwise contrasts: Therapeutic_Mild vs Neutral, Neutral vs Blunt, Therapeutic_Strong vs Therapeutic_Mild (exploratory, Holm)
- Dose-response trend: Jonckheere-Terpstra test for monotonic decrease: Blunt > Neutral > Therapeutic_Mild > Therapeutic_Strong
- Mixed-effects robustness: DV ~ Condition + (1|participant) + (1|vignette_stem)
- Manipulation check: Therapeutic_Strong > Therapeutic_Mild > Neutral > Blunt on therapy-language item, ANOVA p < .001 expected
- Covariate check: re-run primary ANCOVA with therapy_exposure + MH_literacy – result must hold

Therapeutic_Strong is retained as an exploratory high-intensity condition for dose-response and ceiling-effect analysis only. It is NOT part of the confirmatory H2 test.

**Exclusions – blind to condition:**
Preregistered above. Sensitivity analysis with/without exclusions reported.

**Missing data:** <5% expected – listwise. If >5%, FIML robustness.

**Stopping rule:** Fixed-N. No interim peeking on hypothesis tests. Pilot is separate.

---

## 6. Materials

- 12 vignette stems × 4 language versions = 48 stimuli
- Full stimulus set: `H2_vignette_stimuli_v3.csv`
- Levels per stem: Blunt / Neutral / Therapeutic_Mild / Therapeutic_Strong
- Qualtrics / jsPsych survey flow: consent → demographics → random condition → 4 vignettes (stratified by domain, randomized order) → attention checks → debrief
- Estimated time: 8–12 min
- Compensation: $2.50 / £2.00 (≥ $12/hr equivalent)

All vignettes are synthetic, decontextualized, no real persons, no graphic content.

**Vignette sampling method:** Stratified random sampling. Each participant is assigned to one language condition (between-subjects). Within that condition, the survey engine randomly selects one stem from each of the four TCFS domains (RA, CA, BR, RD), for a total of 4 vignettes. Presentation order is randomized. Stem allocation counts are logged and will be reported in the analysis, with a frequency table of participants per stem per condition.

**Therapeutic_Mild construction rule:** Therapeutic_Mild versions may include partial accountability language, emotional overwhelm, need for space, self-awareness, vague deferral, and softer tone. They MUST NOT include a concrete repayment plan, a specific repair time/date, an actual apology plus next step, evidence comparison, or a clear accountability pathway. Behavior is held constant across all conditions – only the linguistic wrapper changes.

---

## 7. Ethics / Open Science

- IRB / ethics review: exempt – anonymous survey, minimal risk, adult participants, no deception
- Informed consent obtained
- Debrief includes: study purpose, TC framework summary, mental health resources
- No deception used – participants are told they will read relationship conflict scenarios
- Data: de-identified, OSF public upon publication
- Materials, code, analysis script: CC BY 4.0 / MIT, OSF
- Pre-registration timestamp locks analysis plan before first confirmatory participant
- Pilot data (N<100) will be clearly labeled exploratory, will NOT be pooled with confirmatory data

**Misuse guardrail:** Vignette stimuli are accountability-blocking examples for research coding only. Do not redistribute as interpersonal scripts. Publication will report aggregate means only, not full therapeutic-language rewrites paired with their blunt originals in a copy-paste format.

---

## 8. Decision criteria

| Outcome | Interpretation |
|---|---|
| Therapeutic_Mild < Blunt, p < .05, d ≥ 0.30, holds with covariates | H2 supported |
| Therapeutic_Mild < Blunt, p < .05, d < 0.30 | Weak support, needs larger N |
| Monotonic dose-response Blunt > Neutral > Therapeutic_Mild > Therapeutic_Strong, p < .05 | Strong support for graded camouflage effect (exploratory) |
| No significant difference | H2 not supported in this paradigm |
| Therapeutic_Mild > Blunt (reverse) | H2 rejected, unexpected – report fully |

Therapeutic_Strong is exploratory only – used for dose-response / ceiling-effect analysis, not for the confirmatory H2 test.

If H2 is supported, proceed to H4 (LLM LaunderBench) and H3 (institutional review simulation) with expanded N.

---

**Pre-registration – H2 Therapeutic Vocabulary Reduces Accountability Perception – v3**  
Zot, M. – 2026-06-19 – TCFS v0.2  
OSF Preregistration DOI: [to be assigned upon submission]
