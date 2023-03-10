% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultipleTables-method-exported.R
\name{MultipleTables.summary}
\alias{MultipleTables.summary}
\title{Summarize the object of class \code{MultipleTables}.}
\usage{
MultipleTables.summary(
  multiple_tables_object,
  alpha = 0.05,
  verbose = TRUE,
  digit = 3,
  control = list()
)
}
\arguments{
\item{multiple_tables_object}{The object created by \code{MultipleTables.create}
and fitted by \code{MultipleTables.modelFit}.}

\item{alpha}{a numeric value specifying the significant level. Default value sets to 0.05.}

\item{verbose}{a logical value; if TRUE (default), the detailed summary messages will display.}

\item{digit}{an integer value specifying how many decimal places to keep. Default value sets to 3.}

\item{control}{a list can be specified to control the fitting process.}
}
\value{
A list with the following components: model, posterior mean & equal tail confidence interval of overall measure,
estimated hyperparameters, the chi-square test statistics & the p-value of the likelihood ratio test,
posterior means & the lower/upper bounds of the equal tail confidence intervals of study-specific measure.
}
\description{
Summarize the model of the class \code{MultipleTables} fitted by \code{MultipleTables.modelFit}.
}
\examples{
\donttest{
 library(mmeta)
 library(ggplot2)
 ## Analyze the dataset colorectal to conduct exact inference of the odds ratios
 data(colorectal)
 colorectal['study_name'] <- colorectal['studynames']
 ## If exact method is used, the codes for sampling method are similar.
 ## Create object multiple_tables_obj_exact
 multiple_tables_obj_exact <- MultipleTables.create(data=colorectal,
 measure='OR', model= 'Sarmanov')
 ## Model fit default
 multiple_tables_obj_exact <- MultipleTables.modelFit(multiple_tables_obj_exact, method = 'exact')
 ## Summary of the fitting process (default)
 multiple_tables_obj_exact <- MultipleTables.summary(multiple_tables_obj_exact)
 ## Structure of SingleTable object
 str(multiple_tables_obj_exact)
 ## If set alpha level to 0.1
 multiple_tables_obj_exact <- MultipleTables.summary(multiple_tables_obj_exact, alpha = 0.1)
 ## If set digit to 4
 multiple_tables_obj_exact <- MultipleTables.summary(multiple_tables_obj_exact,
 alpha = 0.05, digit = 4)
 ## If decided not to print out
 multiple_tables_obj_exact <- MultipleTables.summary(multiple_tables_obj_exact,
 alpha = 0.05, digit = 4,verbose = FALSE)
}
}
\seealso{
\code{MultipleTables.create}, \code{MultipleTables.modelFit}, and \code{MultipleTables.plot}.
}
