% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MigrationJobModel.r
\name{MigrationJobModel}
\alias{MigrationJobModel}
\title{MigrationJobModel Class}
\description{
MigrationJobModel Class

MigrationJobModel Class
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{}

\item{\code{class}}{}

\item{\code{UUID}}{}

\item{\code{remote_UUID}}{}

\item{\code{src_state}}{}

\item{\code{dkubeJobUUIDS}}{}

\item{\code{migrationUUID}}{}

\item{\code{status}}{}

\item{\code{progress}}{}

\item{\code{datums}}{}

\item{\code{details}}{}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{MigrationJobModel$new()}}
\item \href{#method-toJSON}{\code{MigrationJobModel$toJSON()}}
\item \href{#method-fromJSON}{\code{MigrationJobModel$fromJSON()}}
\item \href{#method-toJSONString}{\code{MigrationJobModel$toJSONString()}}
\item \href{#method-fromJSONString}{\code{MigrationJobModel$fromJSONString()}}
\item \href{#method-clone}{\code{MigrationJobModel$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MigrationJobModel$new(
  name,
  class,
  UUID,
  remote_UUID,
  src_state,
  dkubeJobUUIDS,
  migrationUUID,
  status,
  progress,
  datums,
  details
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MigrationJobModel$toJSON()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MigrationJobModel$fromJSON(MigrationJobModelJson)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MigrationJobModel$toJSONString()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MigrationJobModel$fromJSONString(MigrationJobModelJson)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MigrationJobModel$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
