% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/view_boxplots.R
\name{view_boxplots}
\alias{view_boxplots}
\title{For 'boxes_dots', useful for presenting multiple variables with a similar
scale or unit.}
\usage{
view_boxplots(data, variables, values, box.groups = NULL, groups = NULL,
  dots = TRUE, dot.colour = "grey50", ylab = "Variables",
  xlab = "Value", group.label.pos = "both")
}
\arguments{
\item{box.groups}{Grouping by boxplot}

\item{groups}{Grouping by faceting}

\item{dots}{Whether or not to include the dots on the chart}

\item{ylab}{Y-axis label}

\item{xlab}{X-axis label}
}
\value{
Creates a plot with boxplots and dots.
}
\description{
For 'boxes_dots', useful for presenting multiple variables with a similar
scale or unit.
}
\examples{

\dontrun{
library(dplyr)
library(tidyr)
ds <- data.frame(state.region, state.x77) \%>\% tbl_df()
ds2 <- ds \%>\%
    mutate(HS.Grad = factor(HS.Grad < 50, label = c('Yes', 'No'))) \%>\%
    gather(Measure, Value, -state.region, -HS.Grad) \%>\%
    group_by(Measure) \%>\%
    mutate(Value = scale(Value))

view_boxplots(ds2, 'Measure', 'Value', dots = FALSE, groups = '~HS.Grad')
view_boxplots(ds2, 'Measure', 'Value', dots = FALSE, groups = '~HS.Grad',
 group.label.pos = NULL)
view_boxplots(ds2, 'Measure', 'Value', dots = FALSE, groups = 'HS.Grad~.')
view_boxplots(ds2, 'Measure', 'Value', box.groups = 'HS.Grad')
}

}

