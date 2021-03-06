% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ProjectModel.r
\name{ProjectModel}
\alias{ProjectModel}
\title{ProjectModel Class}
\description{
ProjectModel Class

ProjectModel Class
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{Name}

\item{\code{description}}{Description}

\item{\code{image}}{Image}

\item{\code{leaderboard}}{Leaderboard}

\item{\code{id}}{Id}

\item{\code{owner}}{Owner}

\item{\code{last_updated}}{Last Updated}

\item{\code{details}}{Project Details}

\item{\code{eval_repo}}{Eval Repo}

\item{\code{eval_commit_id}}{Eval Commit Id}

\item{\code{eval_image}}{Eval Image}

\item{\code{eval_script}}{Eval Script}

\item{\code{eval_details}}{Eval Details}

\item{\code{submissions}}{}

\item{\code{status}}{}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{ProjectModel$new()}}
\item \href{#method-toJSON}{\code{ProjectModel$toJSON()}}
\item \href{#method-fromJSON}{\code{ProjectModel$fromJSON()}}
\item \href{#method-toJSONString}{\code{ProjectModel$toJSONString()}}
\item \href{#method-fromJSONString}{\code{ProjectModel$fromJSONString()}}
\item \href{#method-clone}{\code{ProjectModel$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProjectModel$new(
  name,
  description,
  image,
  leaderboard,
  id,
  owner,
  last_updated,
  details,
  eval_repo,
  eval_commit_id,
  eval_image,
  eval_script,
  eval_details,
  submissions,
  status
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-toJSON"></a>}}
\if{latex}{\out{\hypertarget{method-toJSON}{}}}
\subsection{Method \code{toJSON()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProjectModel$toJSON()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fromJSON"></a>}}
\if{latex}{\out{\hypertarget{method-fromJSON}{}}}
\subsection{Method \code{fromJSON()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProjectModel$fromJSON(ProjectModelJson)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-toJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-toJSONString}{}}}
\subsection{Method \code{toJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProjectModel$toJSONString()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-fromJSONString"></a>}}
\if{latex}{\out{\hypertarget{method-fromJSONString}{}}}
\subsection{Method \code{fromJSONString()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProjectModel$fromJSONString(ProjectModelJson)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ProjectModel$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
