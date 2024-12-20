Ipl
================

# Ipl: Analyzing IPL 2022 Data for Auction Strategy Optimization

The **Ipl** package provides tools to analyze and explore IPL 2022
player performance metrics such as batting averages, strike rates, and
bowling economies. This package also includes a Shiny app that allows
users to interactively explore player statistics and make informed
decisions for IPL auction strategy optimization.

## Installation

You can install the development version of the package from GitHub:

``` r
devtools::install_github("ETC5523-2024/assignment-4-packages-and-shiny-apps-shiveshkrishna
```

## Pkgdown Site

For full documentation and additional details, visit the Pkgdown
[Site](https://etc5523-2024.github.io/assignment-4-packages-and-shiny-apps-shiveshkrishna/).

## Shiny App

The `Ipl` package includes an interactive Shiny app for exploring IPL
2022 player performance data. To launch the app, use the following
command:

``` r
# Load the Ipl package and launch the Shiny app
library(Ipl)
launch_app()
```

The app enables you to:

- **Filter the data**: Select between batsmen and bowlers, and choose
  specific teams or view all teams.
- **View interactive visualizations**: Examine scatter plots showing key
  metrics like Batting Average vs. Strike Rate for batsmen, and Bowling
  Average vs. Economy Rate for bowlers.
- **Discover trends and insights**: Identify high-performing players
  based on IPL data, useful for auction strategies and team performance
  analysis.

This app is designed to support IPL teams, analysts, and fans in making
data-driven decisions by visualizing essential performance metrics.

## Documentation

The package includes the following key functions, which are documented
on the Pkgdown site:

- `launch_app`: Launches the Shiny app to explore IPL player data.

- Data objects and functions for loading and manipulating the IPL 2022
  dataset.

## Contributing

Feel free to open issues and submit pull requests for improvements. Make
sure to follow best practices and document your code with `roxygen2`.

## License

This package is licensed under the MIT License.
