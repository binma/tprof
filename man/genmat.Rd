\name{genmat}
\alias{genmat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
genmat(ori.csv)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ori.csv}{
%%     ~~Describe \code{ori.csv} here~~
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
function (ori.csv) 
{
    str = as.integer(ori.csv[, 3] + 0.5)
    area = ori.csv[, 4]
    height = ori.csv[, 4]
    name = ori.csv[, 2]
    trflp = data.frame(name, str, area)
    name1 = unique(name)
    str1 = sort(unique(str))
    len = length(name1)
    matr = NULL
    for (i in 1:len) {
        col1 = trflp[trflp[, 1] == name1[i], 2:3]
        col2 = rbind(str1, area = 0)
        col3 = t(cbind(col2, t(col1)))
        t1 = tapply(col3[, 2], col3[, 1], sum)
        matr = rbind(matr, t1)
    }
    rownames(matr) <- name1
    matr
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
