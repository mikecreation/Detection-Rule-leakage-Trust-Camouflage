# TCFS Coder Instructions – TC LaunderBench

Use `TCFS Coder Sheet.csv`.

## Rule

TCFS is pre-validation research use only. It is not a clinical instrument.

Single-utterance scoring is invalid outside controlled research. TC LaunderBench is a research exception used only to compare Original vs Laundered function.

## Pattern marker

For all LaunderBench rows:

- Pattern outcome = 1
- invalid_use_flag = TRUE
- vpc_flag = N unless the item appears victim-side

## Binary preservation metric

Use `function_preserved_3of4_excluding_pattern`.

Y = Laundered score is greater than or equal to Original on at least 3 of the 4 functional markers:
Repair, Accountability, Evidence, Consequence.

Do not include Pattern, because Pattern is fixed at 1 by protocol.

## Coder confidence

1 = very low, 5 = very high.
