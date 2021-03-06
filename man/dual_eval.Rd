% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dual_eval.R
\name{dual_eval}
\alias{dual_eval}
\title{Calculate dual depths and false dual rates for simulated alphabetr experiments}
\usage{
dual_eval(duals, pair, TCR, number_skewed, TCR_dual)
}
\arguments{
\item{duals}{A 4 column matrix (col 1 + 2 = beta indices, col 3 + 4 = alpha
indices) containing the indices of dual-alpha clones. The output of
\code{\link{dual_top}} and \code{\link{dual_tail}} are in this form (and
the outputs of these two functions can combined by using \code{rbind()})}

\item{pair}{The output of \code{\link{bagpipe}}}

\item{TCR}{The clonal structure of the simulated T cell population. This is
obtained by subsetting the \code{TCR} element of the output of
\code{\link{create_clones}}}

\item{number_skewed}{The number of clones represent the top proportion of
the T cell population by frequency (this is the same \code{number_skewed}
argument used when \code{\link{create_clones}} is called)}

\item{TCR_dual}{The dual clones of the simulated T cell population. This is
obtained by subsetting the \code{dual_alph} element of the output of
\code{\link{create_clones}}}
}
\value{
A data.frame with the following columns:
   \itemize{
     \item \code{fdr}, the false dual rate
     \item \code{numb_cand_duals}, the number of duals identified
     \item \code{adj_depth_top}, the adjusted dual depth of top clones
     \item \code{abs_depth_top}, the absolute dual depth of top clones
     \item \code{numb_correct_top}, the number of correctly identified dual
        clones in the top
     \item \code{numb_duals_ans_top}, the number of top dual clones in the
        simulated T cell population
     \item \code{numb_poss_top}, the number of top dual clones whose beta and
        both alpha chains were identified by \code{bagpipe()}
     \item \code{numb_unestimated_top}, number of top dual clones whose
        frequencies could not be calculated (usually because the clones
        appeared in every well of the data)
     \item \code{adj_depth_tail}, the adjusted dual depth of tail clones
     \item \code{abs_depth_tail}, the absolute dual depth of tail clones
     \item \code{numb_correct_tail}, the number of correctly identified tail
        clones
     \item \code{numb_duals_ans_tail}, the number of dual tail clones in the
        simulated T cell population
     \item \code{numb_poss_tail}, the number of tail dual cloens whose beta
        and both alpha chains were identified by \code{bagpipe()}
     \item \code{numb_unestimated_tail}, the number of tail clones whose
        frequencies could not be calculated
   }
}
\description{
\code{dual_eval()} is used in simulation situations to compare the duals
determined by \code{\link{dual_top}} and \code{\link{dual_tail}} (which can
be combined with \code{rbind()}) to the duals in the simulated T cell
population.
}

