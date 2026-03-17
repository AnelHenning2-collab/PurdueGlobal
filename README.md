# PurdueGlobal
Purdue Global projects
r-foundation-data-analysis/
  README.md
  01_loans_exploration.R
  02_loans_power_testing.R
  data/
    Loans.csv        # same structure as in the assignment
# 01_loans_exploration.R
# Exploratory analysis of loan applicants dataset

library(ggplot2)
library(psych)

# 1. Load data
loans <- read.csv("data/Loans.csv", stringsAsFactors = FALSE)

# Quick sanity check
str(loans)
summary(loans)

# 2. Histograms: Number of Missed/Late Payments and Monthly Income
png("plots/hist_missed_late_payments.png", width = 800, height = 600)
ggplot(loans, aes(x = Number.of.Missed.Late.Payments)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "black") +
  labs(
    title = "Histogram of Missed/Late Payments",
    x = "Missed or Late Payments",
    y = "Count"
  )
dev.off()

png("plots/hist_monthly_income.png", width = 800, height = 600)
ggplot(loans, aes(x = Monthly.Income)) +
  geom_histogram(binwidth = 250, fill = "darkgreen", color = "black") +
  labs(
    title = "Histogram of Monthly Income",
    x = "Monthly Income",
    y = "Count"
  )
dev.off()

# 3. Boxplot of reliability-like attribute (replace with actual column name)
# Example: Credit.Score
png("plots/boxplot_credit_score.png", width = 800, height = 600)
ggplot(loans, aes(y = Credit.Score)) +
  geom_boxplot(fill = "orange") +
  labs(
    title = "Boxplot of Credit Score",
    y = "Credit Score"
  )
dev.off()

# 4. Pearson correlation matrix (exclude ID and target)
num_cols <- c(
  "Number.of.Missed.Late.Payments",
  "Lines.of.Credit",
  "Credit.Score",
  "Monthly.Income",
  "Age.at.First.Credit",
  "Age.in.Years"
)
cor_mat <- cor(loans[ , num_cols], use = "complete.obs")
print(cor_mat)

# 5. Independent t-test: Credit Score by Make Loan (0/1)
t_res <- t.test(
  Credit.Score ~ Make.Loan,
  data = loans
)
print(t_res)# 02_loans_power_testing.R
# Power analyses for t-test, ANOVA, and correlation

library(pwr)

# 1. Two-sample t-test power
effect_size_t <- 0.5  # example; compute from your pilot data
pwr.t.test(
  d = effect_size_t,
  sig.level = 0.05,
  power = 0.95,
  type = "two.sample"
)

# 2. ANOVA power (e.g., Lines of Credit groups)
pwr.anova.test(
  k = 3,          # number of groups
  f = 0.3,        # medium effect
  sig.level = 0.05,
  power = 0.95
)

# 3. Correlation power (e.g., r = 0.25)
pwr.r.test(
  r = 0.25,
  sig.level = 0.05,
  power = 0.95
)

