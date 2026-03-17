
# 01_loans_exploration.R
# Exploratory analysis of loan applicants dataset

library(ggplot2)
library(psych)

# 1. Load data
loans <- read.csv("data/Loans.csv", stringsAsFactors = FALSE)

# Quick sanity check
str(loans)
summary(loans)

# 2. Histograms
png("plots_hist_missed_late_payments.png", width = 800, height = 600)
ggplot(loans, aes(x = Number.of.MissedLate.Payments)) +
  geom_histogram(binwidth = 1, fill = "steelblue", color = "black") +
  labs(
    title = "Histogram of Missed/Late Payments",
    x = "Missed or Late Payments",
    y = "Count"
  )
dev.off()

png("plots_hist_monthly_income.png", width = 800, height = 600)
ggplot(loans, aes(x = Monthly.Income)) +
  geom_histogram(binwidth = 250, fill = "darkgreen", color = "black") +
  labs(
    title = "Histogram of Monthly Income",
    x = "Monthly Income",
    y = "Count"
  )
dev.off()

# 3. Boxplot of credit score
png("plots_boxplot_credit_score.png", width = 800, height = 600)
ggplot(loans, aes(y = Credit.Score)) +
  geom_boxplot(fill = "orange") +
  labs(
    title = "Boxplot of Credit Score",
    y = "Credit Score"
  )
dev.off()

# 4. Pearson correlation matrix (exclude ID + target)
num_cols <- c(
  "Number.of.MissedLate.Payments",
  "Lines.of.Credit",
  "Credit.Score",
  "Monthly.Income",
  "Age.at.First.Credit",
  "Age.in.Years"
)
cor_mat <- cor(loans[ , num_cols], use = "complete.obs")
print(cor_mat)

# 5. Independent t-test: Credit Score by Make.Loan (0/1)
t_res <- t.test(
  Credit.Score ~ Make.Loan,
  data = loans
)
print(t_res)
