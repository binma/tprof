\name{tprof}
\alias{tprof}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tprof(trfper)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{trfper}{
%%     ~~Describe \code{trfper} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (trfper) 
{
    par(tck = -0.3, tcl = -0.3, cex = 1, cex.axis = 0.8, las = 1, 
        lab = c(5, 5, 7), mgp = c(1.6, 0.3, 0), mar = c(0, 3, 
            4, 1), yaxs = "i")
    nr <- nrow(trfper)
    rname <- row.names(trfper)
    cname <- as.numeric(colnames(trfper))
    mat1 <- matrix(rep(c(1:nr, nr), nr), nrow = nr + 1, ncol = nr)
    layout(mat1)
    par(mar = c(0, 3, 0, 1))
    for (i in 1:(nr - 1)) {
        plot(-100, xlim = c(0, 800), ylim = c(0, 100), ylab = rname[i])
        arrows(cname, 0, cname, trfper[i, ], code = 1, length = 0)
    }
    par(mar = c(3, 3, 0, 1), xaxt = "s", yaxt = "s")
    plot(-100, xlim = c(50, 600), ylim = c(0, 69), ylab = name[9], 
        xlab = "length of RFs")
    arrows(cname, 0, cname, trfper[nr, ], code = 1, length = 0)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
