# This example is based on the "Bar and line graphs" example
# from "Cookbook for R", by Winston Chang. The original is available
# at http://www.cookbook-r.com/Graphs/Bar_and_line_graphs_(ggplot2)/.
# This work is licensed under the
# Creative Commons Attribution-Share Alike 3.0 Unported License
# https://creativecommons.org/licenses/by-sa/3.0/

# Output as image files for easier viewing in browser
options(device="png")

# Load some example data:
#   time total_bill
#  Lunch      14.89
# Dinner      17.23
df <- data.frame(time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
                 total_bill = c(14.89, 17.23))

# Load the ggplot2 library
library(ggplot2)

# Plot the example data:
ggplot(data=df, aes(x=time, y=total_bill, fill=time)) +
    geom_bar(colour="black", stat="identity") +
    guides(fill=FALSE) +
    ylab("Total Bill") +
    xlab("Time")
    
# Explanation
# ===========
#
# To plot a very basic bar graph:
#
#     ggplot(data=df, aes(x=time, y=total_bill)) +
#         geom_bar(stat="identity")
#
# The ggplot function sets up new graph, and the geom_bar function adds the bars into it.
# More documentation: http://docs.ggplot2.org/current/geom_bar.html
#
# Colored bars
# ------------
# 
# Use a 'fill' argument to color the bars:
#
#     ggplot(data=df, aes(x=time, y=total_bill, fill=time)) +
#         geom_bar(stat="identity")
#
#
# Outline
# -------
#
# Use a 'color' argument to the geom_bar method to add a colored outline:
#
#     ggplot(data=df, aes(x=time, y=total_bill, fill=time)) +
#         geom_bar(colour="black", stat="identity")
#
# Remove the legend
# -----------------
#
# Remove the legend by setting the 'fill' argument in the 'guides' method to FALSE:
#
#    ggplot(data=df, aes(x=time, y=total_bill, fill=time)) +
#        geom_bar(colour="black", stat="identity") +
#        guides(fill=FALSE)
#
# Label the axes
# --------------
#
# Label the axes with the 'xlab' and 'ylab' methods:
#
#     ggplot(data=df, aes(x=time, y=total_bill, fill=time)) +
#         geom_bar(colour="black", stat="identity") +
#         guides(fill=FALSE) +
#         xlab("Time") +
#         ylab("Total Bill")