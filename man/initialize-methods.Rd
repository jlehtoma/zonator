\docType{methods}
\name{initialize,Zproject-method}
\alias{initialize,Zproject-method}
\alias{initialize,Zresults-method}
\alias{initialize,Zvariant-method}
\title{Create an instance of the Zproject class using new/initialize.}
\usage{
\S4method{initialize}{Zproject}(.Object, root, debug = FALSE)

\S4method{initialize}{Zresults}(.Object, root)

\S4method{initialize}{Zvariant}(.Object, name = NULL, bat.file)
}
\arguments{
  \item{root}{Character string path to the root of the
  project (must exist).}

  \item{debug}{logical indicating whether debug logging is
  used}

  \item{name}{Character string naming the variant.}

  \item{bat.file}{Zonation specific batch (.bat) file to
  read the variant specifics from (must exist).}

  \item{name}{Character string naming the variant.}

  \item{bat.file}{Zonation specific batch (.bat) file to
  read the variant specifics from (must exist).}

  \item{.Object}{ An object: see the Details section.}
}
\description{
Create an instance of the Zproject class using
new/initialize.

Create an instance of the Zresults class using
new/initialize.

Create an instance of the Zvariant class using
new/initialize.
}
\author{
Joona Lehtomaki <joona.lehtomaki@gmail.com>

Joona Lehtomaki <joona.lehtomaki@gmail.com>

Joona Lehtomaki <joona.lehtomaki@gmail.com>
}
\seealso{
\code{\link{initialize}}

\code{\link{initialize}}

\code{\link{initialize}}
}
\keyword{internal}

