set datafile separator ','
set key autotitle columnhead
set xdata time # tells gnuplot the x axis is time data
set timefmt "%Y-%m-%dT%H:%M:%S" # specify our time string format
plot "data/data-thorium.csv" using 1:2 with lines
