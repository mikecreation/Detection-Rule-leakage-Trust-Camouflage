# Empirical Validation Roadmap
### Detection-Rule Leakage and Trust-Camouflage Framework
### Zot, M. (2026)

This document outlines the empirical validation sequence for the Trust Camouflage framework, from pre-registered pilot through full construct validation.

All studies reference TCFS (Trust Camouflage Function Score – Coding Protocol – pre-validation, research use only).

---

## A. H2 Pilot – Therapeutic Vocabulary Reduces Accountability Perception
**Status:** Pre-registered, materials complete – ready to run

**Design:** Between-subjects vignette experiment, 4 conditions
- Blunt / Neutral / Therapeutic_Mild / Therapeutic_Strong

**N:** Pilot N = 40–60 exploratory; Confirmatory N = 300 recruited / N ≥ 260 analyzable
- Power: d = 0.50, α = .05, 1-β = .80
- Primary confirmatory contrast: Therapeutic_Mild < Blunt on Accountability Composite

**Primary DV:** Accountability Composite (responsibility + repair obligation + harm perception), 7-pt Likert, α target ≥ .75

**Secondary DVs:** Credibility, emotional maturity, blame assignment, consequence endorsement, safety perception

**Materials:**
- `H2 Therapeutic Vocabulary Accountability Preregistration.md`
- `H2 Vignette Stimuli.csv` – 12 stems × 4 conditions = 48 stimuli
- Therapeutic_Mild vignettes: plausible, self-aware, mildly therapeutic – do NOT add concrete repair steps absent in other conditions
- Therapeutic_Strong vignettes: explicit clinical/safety vocabulary – exploratory dose-response only
- Stratified sampling by 4 TCFS domains, allocation counts logged

**Pre-registration:** OSF – timestamp before first confirmatory participant
- Primary confirmatory contrast: **Therapeutic_Mild < Blunt** on Accountability Composite
- Exploratory dose-response: Blunt > Neutral > Therapeutic_Mild > Therapeutic_Strong
- Therapeutic_Strong is exploratory high-intensity – NOT part of confirmatory H2 test

**Analysis:** One-way ANOVA, planned contrast Therapeutic_Mild vs Blunt, Holm-adjusted; Jonckheere-Terpstra dose-response; mixed-effects robustness; ANCOVA with therapy_exposure + MH_literacy

**Decision criteria:**
- Therapeutic_Mild < Blunt, p < .05, d ≥ 0.30 → H2 supported
- Monotonic dose-response p < .05 → strong support for graded camouflage effect
- No significant difference → H2 not supported in this paradigm

**Pilot rule:** Pilot data (N < 100) will be clearly labeled exploratory and will NOT be pooled with confirmatory data.

**Report:** means, SDs, Cohen's d, p value, manipulation check, covariate robustness

**Estimated cost/time:** $150–200 / 48 hours (Prolific, N=60 pilot)

---

## B. TCFS Inter-Rater Reliability
**Status:** Protocol ready – coding sheet complete

**Design:** 3 independent coders × 20 LaunderBench prompt pairs, blind

**Materials:**
- `TCFS Coder Sheet.csv`
- Includes: TCFS 5-marker 0/1/2 function-outcome coding, hostility/maturity/safety ratings, `accountability_blocking_preserved`, `function_preserved_3of4_excluding_pattern`, `coder_confidence` 1–5
- 20 items sampled across all 5 TCFS function categories (RA/CA/BR/RD/LC)

**Metrics:**
- ICC(2,k) for TCFS total
- Krippendorff's α per marker (Repair, Accountability, Evidence, Consequence, Pattern)
- Weighted reliability using coder_confidence

**Targets:**
- ICC ≥ .70 acceptable / ≥ .80 good
- Krippendorff's α ≥ .67 per marker

**Invalid-use guardrails:**
- TCFS is pre-validation research use only – NOT a clinical instrument
- Single-utterance scoring is INVALID outside controlled research
- Victim Protection Clause enforced: coding invalid if speaker is responding to documented harm, preserving evidence, accepting consequences, or participating in repair

**Report:** ICC, α per marker, confusion matrices, codebook

---

## C. MIPU Reversal Cost Experiment
**Status:** Design specification – not yet pre-registered

**Design:** Within-subjects pre/post, n ≈ 80

**Method:**
1. Present baseline conflict vignette (broken promise / contradiction / harm)
2. Participant rates: blame assignment, accountability obligation, repair urgency (0–100)
3. Inject one trust-bearing cue (MIPU – e.g., "I'm feeling really dysregulated right now", "I need to set a boundary around this conversation", "that's overwriting my reality")
4. Re-rate: blame assignment, accountability obligation, repair urgency

**Primary outcome:** Δ Accountability Perception = Post-MIPU score − Pre-MIPU score

This Δ IS the quantified "reversal cost / burden shift" in points. No prior study has quantified the burden shift from clinical language in accountability conflicts.

**Analysis:** Paired t-test on accountability composite; effect size d; 95% CI on Δ

**Covariates (exploratory):** therapy exposure, MH literacy, trait empathy

**Target effect:** d ≥ 0.40, p < .01

**Estimated cost/time:** $200–300 / 1 week (Prolific, N=80)

---

## D. H3 – Composure Credibility Asymmetry
### Institutional Review Simulation

**Status:** Design specification – stimuli not yet built

**Design:** Between-subjects, paired evidence packets

**Method:** Give HR-style / mediation-style / moderation-style reviewers paired statements from:
- Actor: calm, composed, therapeutic language, weaker evidence
- Harmed person: distressed, blunt, direct language, stronger evidence

Vary: evidence strength (strong / weak) × tone polish (polished / blunt) – 2×2

**Primary outcome:** Credibility judgment – "Which party is more credible?" / "Who is primarily at fault?"

**Hypothesis (H3):** Tone-polished harmful messages will outperform blunt victim messages in institutional review. Evaluators will judge polished actor statements as more credible than distressed victim statements, even when the victim has stronger evidence.

**Measures:** Credibility (1–7), blame assignment, consequence endorsement, evidence weight

**Target N:** 160–200 (40–50 per cell, 2×2 design, d=0.50, power=.80)

**Deliverable:** Open stimulus set – "Composure Credibility Asymmetry Audit" – same evidence packet, calm/therapeutic vs distressed/blunt presentation, released open for institutional training

**Estimated cost/time:** $400–600 / 2 weeks

---

## Validation Sequence Summary

| Step | Study | N | Cost | Time | Gate |
|------|-------|---|------|------|------|
| 1 | H2 pilot – Therapeutic_Mild vs Blunt | 60 | $150 | 48 hr | Accountability Composite d, variance estimates |
| 2 | TCFS IRR – 3 coders × 20 pairs | – | – | 1 wk | ICC ≥ .70 |
| 3 | H2 confirmatory – full 4-condition | 260 | $750 | 1–2 wk | H2 supported? → proceed |
| 4 | MIPU reversal cost – pre/post | 80 | $250 | 1 wk | Quantify burden shift Δ |
| 5 | H4 – TC LaunderBench | 100 prompts × 3 models | compute | 1 wk | APR ≥ 60%? |
| 6 | H3 – Composure Credibility Asymmetry | 160–200 | $500 | 2 wk | Institutional parser failure confirmed? |

Total pilot path (Steps 1+2): ~$150 + 1 week coder time → preliminary empirical support + reliability evidence

Full validation path (Steps 1–6): ~$1,650 + 6–8 weeks → complete falsification battery

---

## Literature Gap Search Targets

For final manuscript strengthening – search for and summarize whether any existing literature already covers:

### A. Vignette studies testing whether therapy language reduces accountability perception
- Search terms: "therapy speak" + "accountability" + "vignette" / "experiment"
- "clinical language" + "blame" + "perception"
- "therapeutic vocabulary" + "credibility" + "harm"
- If null result: state explicitly – "No prior experimental study has tested whether therapeutic vocabulary reduces perceived accountability for identical harmful behavior."

### B. DARVO studies coding for clinical/therapeutic vocabulary
- Harsey / Freyd DARVO literature – check whether any coding scheme includes clinical language, boundaries, trauma, safety vocabulary, nervous system language
- If DARVO studies use primarily hostile/aggressive language for the "Attack" component: state the gap – "No DARVO study has tested accountability reversal performed through institutionally trusted clinical vocabulary"

### C. "Function over form" accountability scoring in IPV / coercive control / restorative justice / HR / legal credibility research
- Stark – coercive control – does he operationalize linguistic camouflage?
- Restorative justice – any function-outcome accountability scoring?
- HR / employment law – any "presentation vs pattern" credibility audit protocols?
- Legal credibility – beyond Reeves et al. 2025, any blinded composure-vs-evidence studies?
- If null: "No existing accountability scoring system in IPV/coercive control evaluates function (repair/evidence/accountability/consequence outcomes) independently of linguistic form"

### D. LLM safety / RLHF papers testing accountability-blocking preservation after tone-polishing
- Li et al. 2025 – "Can an LLM be a gaslighter?" – covers gaslighting broadly, not TCFS-function specifically
- Search: "LLM" + "manipulation" + "tone polishing" + "accountability"
- "RLHF" + "accountability blocking" / "rhetorical laundering"
- "AI safety" + "therapeutic language" + "harm concealment"
- If null: "No existing LLM safety benchmark tests whether tone-polishing preserves accountability-blocking function as measured by behavioral outcomes"

### E. Prior MIPU/MAP publications by Michael Zot
- DO NOT invent citations
- Provide if available: DOI / venue / year / title
- If no formal DOI exists: cite as "author's prior unpublished MIPU/MAP framework" or omit self-citation until formal publication details are provided
- Needed for: grounding MIPU in established work beyond the Goffman/Tversky bridge currently in the paper

---

**Empirical Validation Roadmap – Trust Camouflage Framework**  
Zot, M. – 2026-06-19 – TCFS
