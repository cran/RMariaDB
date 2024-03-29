% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MariaDBDriver.R, R/dbGetInfo_MariaDBDriver.R,
%   R/dbIsValid_MariaDBDriver.R, R/dbUnloadDriver_MariaDBDriver.R
\docType{class}
\name{MariaDBDriver-class}
\alias{MariaDBDriver-class}
\alias{dbGetInfo_MariaDBDriver}
\alias{dbGetInfo,MariaDBDriver-method}
\alias{dbIsValid_MariaDBDriver}
\alias{dbIsValid,MariaDBDriver-method}
\alias{dbUnloadDriver_MariaDBDriver}
\alias{dbUnloadDriver,MariaDBDriver-method}
\title{Class MariaDBDriver with constructor MariaDB.}
\usage{
\S4method{dbGetInfo}{MariaDBDriver}(dbObj, ...)

\S4method{dbIsValid}{MariaDBDriver}(dbObj, ...)

\S4method{dbUnloadDriver}{MariaDBDriver}(drv, ...)
}
\description{
An MariaDB driver implementing the R database (DBI) API.
This class should always be initialized with the \code{\link[=MariaDB]{MariaDB()}} function.
It returns a singleton that allows you to connect to MariaDB.
}
\keyword{internal}
