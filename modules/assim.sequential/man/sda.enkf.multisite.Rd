% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sda.enkf_MultiSite.R
\name{sda.enkf.multisite}
\alias{sda.enkf.multisite}
\title{sda.enkf.multisite}
\usage{
sda.enkf.multisite(settings, obs.mean, obs.cov, Q = NULL,
  restart = FALSE, forceRun = TRUE, keepNC = TRUE,
  control = list(trace = TRUE, FF = FALSE, interactivePlot = FALSE,
  TimeseriesPlot = FALSE, BiasPlot = FALSE, plot.title = NULL, facet.plots
  = FALSE, debug = FALSE, pause = FALSE, Profiling = FALSE,
  OutlierDetection = FALSE), ...)
}
\arguments{
\item{settings}{PEcAn settings object}

\item{obs.mean}{List of dataframe of observation means, named with observation datetime.}

\item{obs.cov}{List of covariance matrices of state variables , named with observation datetime.}

\item{Q}{Process covariance matrix given if there is no data to estimate it.}

\item{restart}{Used for iterative updating previous forecasts. When the restart is TRUE it read the object in SDA folder written from previous SDA.}

\item{forceRun}{Used to force job.sh files that were not run for ensembles in SDA (quick fix)}

\item{keepNC}{Used for debugging issues. .nc files are usually removed after each year in the out folder. This flag will keep the .nc + .nc.var files for futher investigations.}

\item{control}{List of flags controlling the behaviour of the SDA. trace for reporting back the SDA outcomes, interactivePlot for plotting the outcomes after each step, 
TimeseriesPlot for post analysis examination, BiasPlot for plotting the correlation between state variables, plot.title is the title of post analysis plots and debug mode allows for pausing the code and examinign the variables inside the function.}
}
\value{
NONE
}
\description{
State Variable Data Assimilation: Ensemble Kalman Filter and Generalized ensemble filter. Check out SDA_control function for more details on the control arguments.
}
\author{
Michael Dietze and Ann Raiho \email{dietze@bu.edu}
}
