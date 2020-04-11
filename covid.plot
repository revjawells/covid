# covid.plot - gnuplot commands to generate COVID-19 graphs from online data

# Set up output graphic parameters.
set term png
set output "covid.png"

# Set up the graph title, axes labels and graph key.
set title "Number of Persons with COVID-19 in New Hampshire"
set xlabel "Date"
set ylabel "Cases"
set key top left

# Set up the x-axis to show dates.
set xdata time
set format x "%m/%d"

# Tell Gnuplot that we are reading dates in a specific format.
set timefmt "%m/%d/%Y"

# Set up line stylings.
set style line 1 linecolor rgb "red" pointtype 7
set style line 2 linecolor rgb "blue" pointtype 7

# Read data from file and plot into a graph.
plot "covid.dat" using 1:2 with linespoints linestyle 1 title "Total cases", \
 	 "covid.dat" using 1:3 with linespoints linestyle 2 title "New cases"
