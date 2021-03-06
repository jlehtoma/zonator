\name{read_bat}
\alias{read_bat}
\title{Read Zonation-specific (MS Windows) batch file.}
\usage{
read_bat(infile)
}
\arguments{
  \item{infile}{Character string input file path.}
}
\value{
List of parsed bat-parameters.
}
\description{
Batch files include calls to Zonation core and look like
following: call zig3.exe -r [INPUT_PATH].dat
[INPUT_PATH].spp [OUTPUT_PATH].txt 0.0 0 1.0 0
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}

