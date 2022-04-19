set datafile separator ','
set key autotitle columnhead
set xdata time # tells gnuplot the x axis is time data
set timefmt "%Y-%m-%dT%H:%M:%S" # specify our time string format
set format x "%H:%M:%S" # otherwise it will show only MM:SS
plot "data/data-thorium.csv" using 1:2 with lines