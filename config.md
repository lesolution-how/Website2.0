+++
author = "LeSolution"
mintoclevel = 2

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

prepath = ""
production = "PRODUCTION" in keys(ENV) ? true : false

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = false
website_title = "Website2.0"
website_descr = "Example website containing Julia tutorials"
website_url   = "https://website2.0.lesolution.how"

+++

