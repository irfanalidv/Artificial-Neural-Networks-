# Artificial-Neural-Networks-
Analysing and validating the outputs and modelled functions of artificial neural networks (ANNs) in terms of predictive, replicative and structural validity.

The ann function is a method for training single hidden layer MLPs with a specified model structure (i.e. number of hidden layer nodes, hidden and output layer activation functions).

This function is similar to the available nnet function from package nnet; however, it gives greater flexiblity by providing a choice between four alternative activation functions for the hidden and output layer nodes, including the logistic sigmoid, hyperbolic tangent (tanh), linear (or identity) and exponential functions, as well as allowing a user-defined error or objective function.
More importantly, in the context of ANN validation, this function returns partial derivatives of the hidden and output node outputs with respect to their inputs, enabling computation of absolute and relative input sensitivities using the PaD structural validation method.
