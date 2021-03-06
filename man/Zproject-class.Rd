\docType{class}
\name{Zproject}
\alias{Zproject}
\alias{Zproject-class}
\title{The Zproject class}
\description{
\code{Zproject} class represents a Zonation project
project, i.e. all the input and output files and folders.
}
\details{
A project contains one or more variants of particular
Zonation analysis setup. A single variant is represented as
an instance of
\code{\link[zonator:Zvariant-class]{Zvariant-class}}.
}
\section{Slots}{
  \describe{ \item{\code{root}:}{Character string path
  pointing to the root (dir) of the project.}
  \item{\code{variants}:}{List of objects of class
  \code{\link[zonator:Zvariant-class]{Zvariant-class}}.} }
}
\author{
Joona Lehtomaki <joona.lehtomaki@gmail.com>
}

