# Chat GPT Prompt : 
what are common hypoteses testing in data science and how to code them

# Result :
In data science, there are various common hypotheses tests used to make inferences and draw conclusions about a population based on sample data. Here are a few examples of common hypothesis tests and how to code them in Python using the SciPy library:


## 1. One-Sample T-Test:

•	Null Hypothesis (H0): The mean of a single sample is equal to a specified value.

•	Alternative Hypothesis (H1): The mean of a single sample is not equal to a specified value.

```
### Code
from scipy import stats

### Sample data
sample = [1, 2, 3, 4, 5]

### One-sample t-test
t_statistic, p_value = stats.ttest_1samp(sample, 3)

### Print results
print("T-Statistic:", t_statistic)
print("P-Value:", p_value)
```
### Assumptions and prerequisite
One-Sample T-Test:
- The data follows a normal distribution.
- The sample is a random sample from the population.

## Independent Two-Sample T-Test:
•	Null Hypothesis (H0): The means of two independent samples are equal.
•	Alternative Hypothesis (H1): The means of two independent samples are not equal.
Code
from scipy import stats

```
### Sample data
sample1 = [1, 2, 3, 4, 5]
sample2 = [3, 4, 5, 6, 7]
'''
### Independent two-sample t-test
t_statistic, p_value = stats.ttest_ind(sample1, sample2)

### Print results
print("T-Statistic:", t_statistic)
print("P-Value:", p_value) 
```

### Assumptions and prerequisite
Independent Two-Sample T-Test:
- The data in each group follows a normal distribution.
- The two samples are independent of each other.
- The variances of the two groups are equal (homogeneity of variances assumption), although some variations of the test allow for unequal variances

## Paired Two-Sample T-Test:
•	Null Hypothesis (H0): The means of paired samples are equal.
•	Alternative Hypothesis (H1): The means of paired samples are not equal.

### Code
from scipy import stats

### Sample data
before = [1, 2, 3, 4, 5]
after = [2, 4, 6, 8, 10]

### Paired two-sample t-test
t_statistic, p_value = stats.ttest_rel(before, after)

### Print results
print("T-Statistic:", t_statistic)
print("P-Value:", p_value)

## Chi-Square Test of Independence:
•	Null Hypothesis (H0): There is no relationship between two categorical variables.
•	Alternative Hypothesis (H1): There is a relationship between two categorical variables.

### Code
from scipy import stats
import numpy as np

### Contingency table
obs = np.array([[10, 15, 5],
                [20, 25, 15],
                [5, 10, 15]])

### Chi-square test of independence
chi2_stat, p_value, dof, expected = stats.chi2_contingency(obs)

### Print results
print("Chi-Square Statistic:", chi2_stat)
print("P-Value:", p_value)

## One-Way Analysis of Variance (ANOVA):
•	Null Hypothesis (H0): The means of multiple groups are equal.
•	Alternative Hypothesis (H1): At least one mean is different from the others.
from scipy import stats

### Sample data
group1 = [1, 2, 3, 4, 5]
group2 = [3, 4, 5, 6, 7]
group3 = [2, 4, 6, 8, 10]

### One-way ANOVA
f_statistic, p_value = stats.f_oneway(group1, group2, group3)

### Print results
print("F-Statistic:", f_statistic)
print("P-Value:", p_value)

## Mann-Whitney U Test (Wilcoxon Rank-Sum Test):
•	Null Hypothesis (H0): The distributions of two independent samples are equal.
•	Alternative Hypothesis (H1): The distributions of two independent samples are not equal.
from scipy import stats

### Sample data
sample1 = [1, 2, 3, 4, 5]
sample2 = [3, 4, 5, 6, 7]

### Mann-Whitney U Test
u_statistic, p_value = stats.mannwhitneyu(sample1, sample2)

### Print results
print("U-Statistic:", u_statistic)
print("P-Value:", p_value)

## Kruskal-Wallis H Test:
•	Null Hypothesis (H0): The distributions of multiple groups are equal.
•	Alternative Hypothesis (H1): At least one group has a different distribution.
from scipy import stats

### Sample data
group1 = [1, 2, 3, 4, 5]
group2 = [3, 4, 5, 6, 7]
group3 = [2, 4, 6, 8, 10]

### Kruskal-Wallis H Test
h_statistic, p_value = stats.kruskal(group1, group2, group3)

### Print results
print("H-Statistic:", h_statistic)
print("P-Value:", p_value)

## Pearson's Correlation Coefficient Test:
•	Null Hypothesis (H0): There is no linear correlation between two continuous variables.
•	Alternative Hypothesis (H1): There is a linear correlation between two continuous variables.
from scipy import stats

### Sample data
x = [1, 2, 3, 4, 5]
y = [2, 4, 6, 8, 10]

### Pearson's correlation coefficient test
corr_coef, p_value = stats.pearsonr(x, y)

### Print results
print("Correlation Coefficient:", corr_coef)
print("P-Value:", p_value)


Each hypothesis test has its own assumptions and prerequisites. Here are the prerequisites or assumptions for the hypothesis tests mentioned earlier:

One-Sample T-Test:
The data follows a normal distribution.
The sample is a random sample from the population.
Independent Two-Sample T-Test:
The data in each group follows a normal distribution.
The two samples are independent of each other.
The variances of the two groups are equal (homogeneity of variances assumption), although some variations of the test allow for unequal variances.
Paired Two-Sample T-Test:
The paired differences between the two samples are approximately normally distributed.
The paired samples are dependent or matched (e.g., before and after measurements on the same subjects).
Chi-Square Test of Independence:
The observations are independent of each other.
The expected frequency count for each cell in the contingency table is at least 5.
One-Way Analysis of Variance (ANOVA):
The data in each group follows a normal distribution.
The groups are independent of each other.
The variances of the groups are equal (homogeneity of variances assumption).
Mann-Whitney U Test (Wilcoxon Rank-Sum Test):
The data in each group is independent and comes from a continuous distribution.
The distributions of the two groups have similar shapes (equal shape assumption).
Kruskal-Wallis H Test:
The data in each group is independent and comes from a continuous distribution.
The distributions of the groups have similar shapes (equal shape assumption).
Pearson's Correlation Coefficient Test:
The variables are continuous.
The relationship between the variables is linear.
The data pairs are independent of each other.
The data follows a bivariate normal distribution.
These are the general assumptions or prerequisites for each hypothesis test. It's important to note that some tests have alternative versions or modifications that relax certain assumptions. It's always recommended to check the specific assumptions and conditions for the particular test you are using to ensure the validity of the results.







