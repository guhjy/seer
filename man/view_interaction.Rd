% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/view_interaction.R
\name{view_interaction}
\alias{view_interaction}
\title{Generates a plot similar to the GWAS Manhattan plots, which are useful to
show significance across multiple significance testings.}
\usage{
view_interaction(data, groups = "~Yterms", ylab = "Exposure")
}
\arguments{
\item{data}{Dataset from a regression with the p-values}

\item{groups}{The column that splits the tests up, usually is the dependent
variable for regression type analyses.}

\item{ylab}{The label for the y-axis.}
}
\description{
See the example for a better idea of how to use the function. This style of
plot is really useful to use when you have run many eg. interaction testing
in a regression analysis and you want to see which variables are barely
significant vs very significant, etc.  Thus, multiple comparison problems can
be dealt with as the plot shows how significant a variable is compared to the
rest of the significance tests.  This is generally the same reason why GWAS
studies use Manhattan plots.
}

