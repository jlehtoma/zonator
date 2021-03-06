# This file is a part of zonator package

# Copyright (C) 2012-2014 Joona Lehtomäki <joona.lehtomaki@gmai.com>. All rights 
# reserved.

# This program is open source software; you can redistribute it and/or modify 
# it under the terms of the FreeBSD License (keep this notice): 
# http://en.wikipedia.org/wiki/BSD_licenses

# This program is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

#' Calculate alpha value for distribution smoothing.
#' 
#' alpha-value of biodiversity feature-specific scale of landscape use. The
#' value indicates the range of connectivity of biodiversity features. For 
#' example, it may refer to how a species uses the surrounding landscape. This 
#' value can be calculated based on, for example, the dispersal capability or 
#' the home range sizes of the species.
#'
#' @param landscape.use Use of landscape (in relation to connectivity) in given
#'   map units. Note that if the units used here differ from the real map units
#'   of the biodiversity feature the ratio between two must be set using 
#'   \code{ratio} argument. 
#' @param ratio Defines the ratio between units used in \code{landscape.use} and
#'   the actual map units in the biodiversity feature. E.g. if the map unit of
#'   a feature is m and use of landscape is defined as 1.5 km, then ratio should
#'   be set to 1000.
#' 
#' @return numerical alpha.
#' 
#' @seealso Zonation manual.
#' 
#' @export
#' 
#' @author Joona Lehtomaki \email{joona.lehtomaki@@gmail.com}
#' 
#' @examples
#'   ds_alpha(1.5, 1000)
#' 
ds_alpha <- function(landscape.use, ratio) {
   return(2 / (landscape.use * ratio))
}

#' Check if Zonation is installed.
#'
#' @param exe Character string for overriding the default Zonation executable
#'   (default: zig3).
#' 
#' @return A logical indicating whether requested Zonation executable is found.
#' 
#' @export
#' 
#' @author Joona Lehtomaki \email{joona.lehtomaki@@gmail.com}
#' 
#' @examples \dontrun{
#'   check_zonation("zig4")
#' }
#' 
check_zonation <- function(exe="zig3") {

  if (.Platform$OS.type == "unix") {
    z.exe <- exe
    check <- system(paste("which", z.exe), intern=FALSE, ignore.stdout=TRUE,
                    ignore.stderr=TRUE)
  } else  {
    z.exe <- paste0(exe, ".exe")
    suppressWarnings(check <- shell(z.exe, intern=FALSE, ignore.stdout=TRUE,
                                    ignore.stderr=TRUE))
  }
  
  if (check == 0) {
    return(TRUE)
  } else {
    warning("Zonation executable ", z.exe, " not found in the system.")
    return(FALSE)
  }
}

#' Parse the content of a Zonation batch (bat) file and make OS specific 
#' adjustments if needed. 
#' 
#' The main issues faced between differerent platforms are the name of the 
#' executable, ways of calling it, and path separators. Relative file paths
#' need to be expanded into full absolute paths.
#'
#' @param bat.file Character string path to a Zonation batch (bat) file.
#' @param exe Character string for overriding the Zonation executable
#'   specified in the bat-file.
#' 
#' @return A character string command sequence suitable for execution.
#' 
#' @export
#' 
#' @author Joona Lehtomaki \email{joona.lehtomaki@@gmail.com}
#' 
parse_bat <- function(bat.file, exe=NULL) {
  # Read in the content of the bat file, surpress any info
  cmd.sequence <- scan(file=bat.file, "character", sep=" ", quiet=TRUE)
  
  cmd.sequence[4] <- cmd.sequence[4]
  cmd.sequence[5] <- cmd.sequence[5]
  cmd.sequence[6] <- cmd.sequence[6]

  # Which index is the *.exe command at?
  exe.index <- 2
  
  if (.Platform$OS.type == "unix") {
    # Don't take the 1st element, "call" is specific only to Windows
    if (cmd.sequence[1] == "call") {
      cmd.sequence <- cmd.sequence[2:length(cmd.sequence)]
      exe.index <- 1
    }
    # Remove the *.exe or replace it if needed
    if (is.null(exe)) {
      cmd.sequence[exe.index] <- gsub(".exe", "", cmd.sequence[exe.index])
    } else {
      cmd.sequence[exe.index] <- exe
    }
  } else {
    # Remove the *.exe or replace it if needed
    if (!is.null(exe)) {
      cmd.sequence[exe.index] <- exe
    }
  }
  return(paste(cmd.sequence, collapse=" "))
}

#' Try to run a given batch (bat) files.
#'
#' @param bat.file Character string path to a Zonation batch (bat) file.
#' @param exe Character string for overriding the default Zonation executable
#'   (default: zig3).
#' 
#' @return A logical indicating whether running the batch file was successful.
#' 
#' @export
#' 
#' @author Joona Lehtomaki \email{joona.lehtomaki@@gmail.com}
#' 
run_bat <- function(bat.file, exe="zig3") {
  if (!file.exists(bat.file)) {
    stop("Bat file ", bat.file, " does not exist.")
  }
  if (check_zonation(exe)) {
    # Temporarily set the working dir to where the bat file is being executed
    # from.
    current.dir <- getwd()
    setwd(dirname(bat.file))
    exit.status <- shell(parse_bat(bat.file, exe))
    
    setwd(current.dir)
    
    if (exit.status == 0) {
      return(TRUE)  
    } else {
      stop("Running bat file ", bat.file, " failed.")
    }
  }
}
