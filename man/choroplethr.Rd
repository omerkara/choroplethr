\name{choroplethr}
\alias{choroplethr}
\title{Create a choropleth}
\usage{
choroplethr(df, lod, num_buckets = 9, title = "", scaleName = "",
  showLabels = T, states = state.abb)
}
\arguments{
  \item{df}{A data.frame with a column named "region" and a
  column named "value".  If lod is "state" then region must
  contain state names (e.g. "California" or "CA").  If lod
  is "county" then region must contain county FIPS codes.
  if lod is "zip" then region must contain 5 digit ZIP
  codes.}

  \item{lod}{A string indicating the level of detail of the
  map.  Must be "state", "county" or "zip".}

  \item{num_buckets}{The number of equally sized buckets to
  places the values in.  A value of 1 will use a continuous
  scale, and a value in [2, 9] will use that many buckets.
  For example, 2 will show values above or below the
  median, and 9 will show the maximum resolution.  Defaults
  to 9.}

  \item{title}{A title for the map.  Defaults to "".}

  \item{scaleName}{An optional label for the legend.
  Defaults to "".}

  \item{showLabels}{For state choropleths, whether or not
  to show state abbreviations on the map. Defaults to T.}

  \item{states}{A vector of states to render.  Defaults to
  state.abb.}
}
\value{
A choropleth.
}
\description{
Creates a choropleth from a specified data.frame and level
of detail.
}
\examples{
data(choroplethr)

# 2012 US Presidential results
choroplethr(df_president, lod="state", title="2012 US Presidential Results")

# 2012 state population estimates - continuous vs. discrete scale
choroplethr(df_pop_state, lod="state", num_buckets=1, title="2012 State Population Estimates")
choroplethr(df_pop_state, lod="state", num_buckets=9, title="2012 State Population Estimates")

# West coast counties in 2012 which were above or below the median population
choroplethr(df_pop_county, lod="county", num_buckets=2, title="2012 County Population Estimates", states=c("CA", "OR", "WA"))

# Zip Code Tabulated Area (ZCTA) population estimates.
choroplethr(df_pop_zip, "zip", title="2012 Population of each ZIP Code Tabulated Area (ZCTA)")
}
\seealso{
\code{\link{choroplethr_acs}} which generates choropleths
from Census tables.
}
\keyword{choropleth}

