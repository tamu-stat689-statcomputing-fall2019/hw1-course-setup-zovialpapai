# Generate data from linear regression model and calculate the least squares vector of coefficients
#####################################################################################################

# Model parameters
n = 100 # sample size
p = 10 # number of covariates
sigma = 2 # noise standard deviation
beta = rep(2,p) # true vector of coefficients
X = matrix(rnorm(n*p), n, p) # n by p matrix of predictors

# [ToDo] Use generateY function to generate Y
Y = generateY(X, beta, sigma, seed = 5832652) # Response Y is generated according to specified model parameters.
# [ToDo] Use calculateBeta function to calculate beta_LS
beta_LS = calculateBeta(X, Y) # The least square estimate of beta is calculated
# [ToDo] Use calculateMSE to assess the estimation error measured by squared eucledian distance - ||beta - beta_LS||_2^2
MSE = calculateMSE(beta, beta_LS)# MSE in estimation of beta is calculated.
