\docType{methods}
\name{opendir}
\alias{opendir}
\alias{opendir,Zproject-method}
\title{Open the directory of a Zproject using the system file browser.}
\usage{
opendir(x)

\S4method{opendir}{Zproject}(x)
}
\arguments{
  \item{x}{a \code{\link{Zproject}} object.}
}
\value{
invisible
}
\description{
Currently support Windows Explorer (Windows) amd Dolphin
(Linux/KDE).
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}
\seealso{
\code{\link{Zproject-class}} and
\code{\link{Zvariant-class}}
}

