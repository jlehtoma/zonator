\docType{class}
\name{Zvariant}
\alias{Zvariant}
\alias{Zvariant-class}
\title{The Zvariant class}
\description{
\code{Zvariant} class represents a Zonation analysis
variant with the associated parameters.
}
\details{
Currently \code{Zvariant} must be instantiated based on an
existing Zonation batch file. If the variant has been run,
then the results are also associated with the instance of
\code{Zvariant-class}.
}
\section{Slots}{
  \describe{ \item{\code{name}:}{Character string name of
  the variant.} \item{\code{bat.file}:}{Character string
  path to a Zonation-style batch file.}
  \item{\code{dat.data}:}{List holding the parsed data from
  Zonation dat-file} \item{\code{spp.data}:}{Data frame
  holding the parsed data from Zonation spp-file}
  \item{\code{output.dir}:}{Character string path to the
  output directory.} \item{\code{groups}:}{Data frame
  holding the parsed data from Zonation groups-file}
  \item{\code{call.params}:}{List of parsed call parameters
  from the batch file.} \item{\code{results}:}{List holding
  the results (data frames).} }
}
\author{
Joona Lehtomaki <joona.lehtomaki@gmail.com>
}

