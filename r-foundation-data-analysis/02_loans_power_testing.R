# 02_loans_power_testing.R
# Power analyses for t-test, ANOVA, and correlation

library(pwr)

# 1. Two-sample t-test power (example)
effect_size_t <- 0.5
pwr.t.test(
  d = effect_size_t,
  sig.level = 0.05,
  power = 0.95,
  type = "two.sample"
)

# 2. ANOVA power (e.g., 3 groups of lines of credit)
pwr.anova.test(
  k = 3,
  f = 0.3,
  sig.level = 0.05,
  power = 0.95
)

# 3. Correlation power (e.g., r = 0.25)
pwr.r.test(
  r = 0.25,
  sig.level = 0.05,
  power = 0.95
)

