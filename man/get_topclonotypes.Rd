% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{get_topclonotypes}
\alias{get_topclonotypes}
\title{get_topclonotypes}
\usage{
get_topclonotypes(
  input,
  clonotype_by,
  group_by = NULL,
  patient_by = NULL,
  sample_by = NULL,
  ntop = 20,
  split_by = NULL,
  chain_type = NULL
)
}
\arguments{
\item{input}{Seurat Object or ExpressionSet}

\item{clonotype_by}{meta.data or pData column name for clonotype ID's}

\item{group_by}{meta.data or pData column names for grouping specific clonotype frequencies, if multiple columns are entered, columns are merged by paste}

\item{patient_by}{meta.data or pData column name for patient, ignored if split_by is not NULL}

\item{sample_by}{meta.data or pData column name for sample, ignored if split_by is not NULL}

\item{ntop}{the number of top clonotypes to return}

\item{split_by}{split tables by}

\item{chain_type}{subset table to chain type}
}
\description{
Return a table of clonal expansion. Default shows the clonal expansion of the top 20 unique clonotypes across all of a grouping variable,
or the number of clones of the top 20 clonotypes per each facet by multiple grouping variables
}
\examples{
get_topclonotypes(pfizer, clonotype_by = "CTaa", patient_by = "Patient", sample_by = "Sample") # ClonotypeIDs not listed, as not directly comparable across different patients
get_topclonotypes(pfizer, clonotype_by = "CTaa", group_by = "Sample")
get_topclonotypes(pfizer[,which(pData(pfizer)$Patient=="VB234")], clonotype_by = "CTaa", group_by="Sample")

}
