\name{MVB-package}
\alias{MVB-package}
\alias{MVB}
\docType{package}
\title{
  MVB as Multivariate Bernoulli
}
\description{
Functionality for multivairate Bernoulli distribution including
log-linear models, lasso variable selection and mixed effects models.
}
\details{
\tabular{ll}{
Package: \tab MVB\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-03-21\cr
License: \tab GPL (>=2)\cr
}
}
\author{
Bin Dai
<daibin at stat dot wisc dot edu>
}
\keyword{ Multivariate Bernoulli, lasso}
\examples{
# fit a simple MVB log-linear model
n <- 1000
p <- 5
kk <- 2
tt <- NULL
alter <- 1
for (i in 1:kk) {
  vec <- rep(0, p)
  vec[i] <- alter
  alter <- alter * (-1)
  tt <- cbind(tt, vec)
}
tt <- 1.5 * tt
tt <- cbind(tt, c(rep(0, p - 1), 1))

x <- matrix(rnorm(n * p, 0, 4), n, p)
res <- mvb.simu(tt, x, K = kk, rep(.5, 2))
fitMVB <- mvbfit(x, res$response, output = 1)
}
