# ggmjs

A ggplot2 theme for the Milwaukee Journal Sentinel

## What's it look like?

#### Before
![Image of base bar chart](examples/bar-chart-base.png)

#### After
![Image of mjs bar chart](examples/bar-chart-mjs.png)

See the `examples/` folder for example graphics generated using the theme.

## How do I use it?

Add `+ theme_mjs()` to a ggplot2 chain of commands.

For example:
```R
ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point() +
  ggtitle('Title', 'Subtitle') +
  theme_mjs()
```

## Install

Install prequisites within the R console.
```
install.packages('devtools')
install.packages('roxygen2')
library(devtools)
library(roxygen2)
```

From the terminal, pull down this repo from github.
```
git pull https://github.com/datahub/ggmjs.git
```

Install `ggmjs` in the R console.
```
setwd('[parent folder to ggmjs]')
install('ggmjs')
```

Note:

A more streamlined way of installing this package would be to use the [`install_github()`](https://cran.r-project.org/web/packages/githubinstall/vignettes/githubinstall.html) function from the [devtools](https://github.com/hadley/devtools) package. Because it is currently a private repo you would enter `install_github('datahub/ggmjs', auth_token = PAT)` in the R console, where PAT is a personal access token generated here: https://github.com/settings/tokens. If this repo were made public then `install_github('datahub/ggmjs')` alone would work.

## Develop

Follow the instructions from the [Install](#install) section.

Make changes to the code in the `R/` folder. Add documentation to each exported function following [roxygen2](https://github.com/yihui/roxygen2) conventions.

When you're done, compile the documentation. Run this in the R console.
```
setwd('./ggmjs')
document()
```

Reinstall the package following the instructions in the [Install](#install) section and you'll be able to test the library.

See Hilary Parker's blog post on [writing R packages](https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/) for a bit more context.

Tips on editing ggplot themes: http://ggplot2.tidyverse.org/reference/theme.html
