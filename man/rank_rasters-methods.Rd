\docType{methods}
\name{rank_rasters}
\alias{rank_rasters}
\alias{rank_rasters,Zproject-method}
\title{Get Zonation result rank rasters of a project.}
\usage{
rank_rasters(x, variants = NULL)

\S4method{rank_rasters}{Zproject}(x, variants = NULL)
}
\arguments{
  \item{x}{\code{\link{Zproject}} object.}

  \item{variants}{a numeric (IDs) or character (name)
  vector defining which variants are included in the
  returned stack (default: NULL means all).}
}
\value{
\code{\link[raster:RasterStack-class]{RasterStack}} object.
}
\description{
Each \code{\link{Zproject}} object has a set of variants
and their results associated with it. This method will get
the selected available rank rasters (1 per variant) and
create a
\code{\link[raster:RasterStack-class]{RasterStack}} object.
Argument \code{variants} can be used to the define which
variants are included, the default is to return all.
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}
\seealso{
\code{\link{rank_raster}} \code{\link{get_variant}}
}

