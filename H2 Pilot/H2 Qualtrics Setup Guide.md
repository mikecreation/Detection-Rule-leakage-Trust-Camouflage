# H2 Qualtrics Setup Guide

Use `H2 Vignette Stimuli.csv` as the locked stimulus file.

## Survey flow

1. Consent
2. Randomizer: assign exactly one condition:
   - Blunt
   - Neutral
   - Therapeutic_Mild
   - Therapeutic_Strong
3. Stratified sampling:
   - 1 Responsibility_Avoidance vignette
   - 1 Conversation_Avoidance vignette
   - 1 Blame_Relocation vignette
   - 1 Reality_Dissolution vignette
4. Randomize the 4 vignette blocks.
5. After each vignette, ask the 9 rating questions listed in `H2 Qualtrics Build Sheet.csv`.
6. Demographics, therapy exposure, attention checks.
7. Debrief.

## Locked confirmatory contrast

The design has 4 conditions, but the primary confirmatory contrast is:

`Therapeutic_Mild < Blunt`

Therapeutic_Strong is exploratory only.
