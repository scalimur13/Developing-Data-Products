Developing Data Products - Course Project
========================================================
author: Joel Calixto Murcia
date:  28/08/2016
autosize: true
transition:rotate
transition-speed:slow

MtCars Explorer
========================================================

This presentation was created as part of project for Developing Data Products course.

The assignement is request for to practice with shiny app, R-presentation or slidify

 - shiny app build
 - R presentation for this work

The Application
========================================================

The app contains two widgets for choices var and plot type for explore data in Mtcars data set

Data set contains eleven var from each you can choice one for explore data 

And a choice plot for combinate explore.

From this way you can plotter, check summary, a test of single model and check a preview of data from this.

This app has been developed and deployed in <https://scalimur.shinyapps.io/shinyapp/>

The source code is allocate in <https://github.com/scalimur13/Developing-Data-Products>

Dataset Mtcars
========================================================

The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

You can explore data , next show a preview

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

```
                   mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
Duster 360        14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
Merc 240D         24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230          22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Merc 280          19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
```

Dataset Plot and modeling
========================================================
Here we can see a plot examples that you can make in this app por compare data for each var.


![plot of chunk unnamed-chunk-2](project presentation-figure/unnamed-chunk-2-1.png)
