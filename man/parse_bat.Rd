\name{parse_bat}
\alias{parse_bat}
\title{Parse the content of a Zonation batch (bat) file and make OS specific
adjustments if needed.}
\usage{
parse_bat(bat.file, exe = NULL)
}
\arguments{
  \item{bat.file}{Character string path to a Zonation batch
  (bat) file.}

  \item{exe}{Character string for overriding the Zonation
  executable specified in the bat-file.}
}
\value{
A character string command sequence suitable for execution.
}
\description{
The main issues faced between differerent platforms are the
name of the executable, ways of calling it, and path
separators. Relative file paths need to be expanded into
full absolute paths.
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}

