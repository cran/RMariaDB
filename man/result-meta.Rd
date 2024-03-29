% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dbColumnInfo_MariaDBResult.R,
%   R/dbGetRowCount_MariaDBResult.R, R/dbGetRowsAffected_MariaDBResult.R,
%   R/dbHasCompleted_MariaDBResult.R, R/query.R
\name{result-meta}
\alias{result-meta}
\alias{dbColumnInfo_MariaDBResult}
\alias{dbColumnInfo,MariaDBResult-method}
\alias{dbGetRowCount_MariaDBResult}
\alias{dbGetRowCount,MariaDBResult-method}
\alias{dbGetRowsAffected_MariaDBResult}
\alias{dbGetRowsAffected,MariaDBResult-method}
\alias{dbHasCompleted_MariaDBResult}
\alias{dbHasCompleted,MariaDBResult-method}
\title{Database interface meta-data.}
\usage{
\S4method{dbColumnInfo}{MariaDBResult}(res, ...)

\S4method{dbGetRowCount}{MariaDBResult}(res, ...)

\S4method{dbGetRowsAffected}{MariaDBResult}(res, ...)

\S4method{dbHasCompleted}{MariaDBResult}(res, ...)
}
\arguments{
\item{res}{An object of class \linkS4class{MariaDBResult}}

\item{...}{Ignored. Needed for compatibility with generic}
}
\description{
See documentation of generics for more details.
}
\examples{
if (mariadbHasDefault()) {
  con <- dbConnect(RMariaDB::MariaDB(), dbname = "test")
  dbWriteTable(con, "t1", datasets::USArrests, temporary = TRUE)

  rs <- dbSendQuery(con, "SELECT * FROM t1 WHERE UrbanPop >= 80")
  rs

  dbGetStatement(rs)
  dbHasCompleted(rs)
  dbColumnInfo(rs)

  dbFetch(rs)
  rs

  dbClearResult(rs)
  dbDisconnect(con)
}
}
