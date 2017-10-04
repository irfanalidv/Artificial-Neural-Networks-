library(validann)
# load ar9 data and select input (x) and output (y) data
data(ar9)
samp <- sample(1:1000, 200)
y <- ar9[samp, ncol(ar9)]
x <- ar9[samp, c(1,4,9)]

# fit ANN model with 1 hidden node, tanh activation on the hidden layer
# nodes and linear activation on the output node.
fit <- ann(x, y, size = 1, act_hid = "tanh", act_out = "linear", rang = 0.1)
# get validation results for ANN model 'fit'. Input data 'x' required for 
# sensitivity analyses
results <- validann(fit, x = x)

# get observed and fitted (training) data
obs <- observed(fit)
sim <- fitted(fit)

# plot ANN validation results
plot(results, obs, sim)
