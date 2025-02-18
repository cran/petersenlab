% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/equivalenceTest.R
\name{equiv_chi}
\alias{equiv_chi}
\title{Chi-Square Equivalence Test for Structural Equation Models.}
\usage{
equiv_chi(alpha = 0.05, chi, df, m, N_sample, popRMSEA = 0.08)
}
\arguments{
\item{alpha}{Value of the significance level, which is set to
.05 by default.}

\item{chi}{Value of the observed chi-square test statistic.}

\item{df}{Number of model (or model difference in) degrees of freedom.}

\item{m}{Number of groups.}

\item{N_sample}{Sample size.}

\item{popRMSEA}{The value of the root-mean square error of approximation
(RMSEA) to set for the equivalence bounds, which is set to .08 by default.}
}
\value{
p-value indicating whether to reject the null hypothesis that the
model is a poor fit to the data.
}
\description{
Function that performs a chi-square equivalence test for structural equation
models.
}
\details{
Created by Counsell et al. (2020):
Counsell, A., Cribbie, R. A., & Flora, D. B. (2020). Evaluating equivalence
testing methods for measurement invariance. Multivariate Behavioral Research,
55(2), 312-328. https://doi.org/10.1080/00273171.2019.1633617
}
\examples{
# Prepare Data
data("mtcars")

# Fit structural equation model

# Extract statistics
N1 <- 1222
m <- 1
Tml1 <- 408.793
df1 <- 80

# Equivalence test
equiv_chi(alpha = .05, chi = Tml1, df = df1, m = 1, N_sample = N1, popRMSEA = .08)
}
\seealso{
Other structural equation modeling: 
\code{\link{make_esem_model}()},
\code{\link{puc}()},
\code{\link{satorraBentlerScaledChiSquareDifferenceTestStatistic}()},
\code{\link{semPlotInteraction}()}
}
\concept{structural equation modeling}
