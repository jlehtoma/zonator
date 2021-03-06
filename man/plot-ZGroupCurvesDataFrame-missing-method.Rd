\docType{methods}
\name{plot,ZGroupCurvesDataFrame,missing-method}
\alias{plot,ZGroupCurvesDataFrame,missing-method}
\title{Plot Zonation performance curves for groups.}
\usage{
\S4method{plot}{ZGroupCurvesDataFrame,missing}(x, min = FALSE, mean = FALSE,
  w.mean = FALSE, max = FALSE, ext = FALSE, subs = NULL, ...)
}
\arguments{
  \item{x}{\code{\link{ZGroupCurvesDataFrame}} object.}

  \item{min}{logical plot the minimum feature performance
  of a group (default: FALSE).}

  \item{mean}{logical plot the minimum feature performance
  of a group (default: FALSE). If no other statistic is
  used, mean will always be plotted. If other satistic(s)
  are plotted and mean is to be disabled, this will have to
  be done by setting \code{mean} explicitly to FALSE.}

  \item{max}{logical plot the maxmimun feature performance
  of a group (default: FALSE).}

  \item{w.mean}{logical plot the weighted mean feature
  performance of a group (default: FALSE).}

  \item{ext}{logical plot extinction risk of a group
  (default: FALSE).}

  \item{subs}{character vector defining the names of groups
  (subset of all groups) to be plotted.}

  \item{...}{Additional arguments passed on to
  \code{\link{plot_curves}}.}
}
\description{
Generic plotting function for plotting group performance
curves. The method does some data pre-processing specific
to \code{\link{ZGroupCurvesDataFrame}} object before
passing the data and arguments for
\code{\link{plot_curves}}.
}
\note{
If no other statistic is selected, \code{mean} will be set
to TRUE and plotted.
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}
\seealso{
\code{\link{read_curves}} and \code{\link{plot_curves}}.
}

