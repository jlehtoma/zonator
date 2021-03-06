\name{read_result_rasters}
\alias{read_result_rasters}
\title{Read Zonation-specific raster result files.}
\usage{
read_result_rasters(rasters, path = NULL, format = NULL)
}
\arguments{
  \item{rasters}{Character vector of raster names.}

  \item{path}{Character string indication an optional root
  path that is prepended to each \code{rasters} names.}

  \item{format}{Character string indicating the raster
  format used (i.e. the file extension).}
}
\value{
A \code{\link[raster:BasicRaster-class]{RasterStack}}
object of result rasters.
}
\description{
Input rasters are given as raster names (i.e. without the
raster file extension). Additional root (folder) path and
file extension can be provided to construct the full paths.
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}

