\name{fImport-package}


\alias{fImport-package}


\alias{fImport}


\docType{package}


\title{Import Data Package}


\description{

    Package of utility functions to download and manage data sets
    from the Internet or from other sources.
}


\details{

    \tabular{ll}{
        Package:    \tab fImport\cr
        Type:       \tab Package\cr
        Date:       \tab 2008, 2009, 2010\cr
        License:    \tab GPL Version 2 or later\cr
        Copyright:  \tab (c) 1999-2008 Diethelm Wuertz and Rmetrics Foundation\cr
        URL:        \tab \url{http://www.rmetrics.org}
    }
    
    The package contains:
    
    1) Three example import funcions for Yahoo, Oanda, and the Federal Reserve.
    
    2) Several utility functions to read and write data, including functions
    which allow system calls to the \code{Links}, \code{Lynx}, and \code{W3M} 
    text browser, and a function to read \code{xls} Excel files.
    
    3) Several csv files with provider listings.
      
}
    
  
\section{Overview on Time Series Data:}{

    The package makes functions available to download financial market
    data from the internet. Functions are available for the 
    follwing web sites:
    
    1. Data from research.stlouisfed.org\cr
    2. Data from www.oanda.com\cr
    3. Data from chart.yahoo.com
    
    There are two kinds of functions available, the first kind is called 
    \code{*Series} which downloads a \code{"timeSeries"} object from a
    web site wher the star \code{*} is a placeholder for the web site
    (fred, oanda, and yahoo), and the second kind is called
    \code{*Import} which downloads an S4 object of class \code{"fWEBDATA"}
    wit a \code{@Data} slot which keeps the \code{"timeSeries"} object
    and further slots which keep additional download information.
    
    We recommend the first kind of functions for easy download of economic
    and financial time series, whereas we recommend to use the second kind
    of functions when additional information is required for example for
    the storage of the data in a data base management system.
    
    IMPORTANT NOTE: The download from the web site www.forecasts.org has
    been withdrawn since the time series are no longer updated. Note, all 
    the series offered by the "forecasts.org" web site are also available
    from the FRED St. Louis database.
    
}


\section{Downloading 'timeSeries' Objects:}{

    The following functions 

    1. fredSeries\cr
    2. oandaSeries\cr
    3. yahooSeries
    
    allow for an easy download of economic and financial time series data 
    as objects of class \code{"timeSeries"}.   
    
    Note, with version 280.73 major changes were made in the argument list of 
    the downloading functions. We apologize for any inconveniences caused
    by these changes. The reason was that now all functions have the same
    arguments which makes their usage much easier. For details we refer to 
    the help pages of the functions mentioned above.

    If you like to keep additional download information, use the functions
    
    1. fredImport\cr
    2. oandaImport\cr
    3. yahooImport
    
    which return objects of class \code{"fWEBDATA"}.
    
}    


\section{Fomer Yahoo Utilities:}{

    The function \code{yahooKeystats} allows to download key statistics
    from Yahoo's web site.

    The function \code{yahooBriefings} allows to download a briefing
    from Yahoo's web site.
        
    Note: The Yahoo utilities \code{yahooKeystats} and \code{yahooBriefings}
    are (as of March 2012) no longer supported.
    
}   


\section{License:}{

    This Rmetrics package is written for educational usage teaching
    "Computational Finance and Financial Engineering" and licensed
    under GPL.
    
}


\references{
Diethelm Wuertz, Yohan Chalabi, and Andrew Ellis, (2010);
    \emph{Financial Market Data for R/Rmetrics}, 
    Rmetrics eBook, Rmetrics Association and Finance Online, Zurich,
    www.rmetrics.org.   
}

   
\keyword{data} 
       
    