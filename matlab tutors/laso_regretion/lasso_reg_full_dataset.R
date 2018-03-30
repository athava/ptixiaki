# This script runs the Lasso regression, the first columns represent
# the predictor variables and the last one the target.

# Import libraries in order to run the script 
library(glmnet)
library(R.matlab)

# Set the dataset
mtarrays <- readMat('first_dataset_short.mat')
# In df0 all features are numeric values
df0 <- as.data.frame(mtarrays$feat.data)

# The first 24 variables are the predictors
x <- data.matrix(df0[,-c(25)])
# The last variable is the predictor, in our case is a numeric value 
y <- as.double(mtarrays$feat.data[,25])

# Run lasso regression
# Note alpha=1 for lasso 
# alpha=0 for ridge 
glmmod <- cv.glmnet(x, y, alpha=1)

# Print the coeeficients of the lasso regression
coef(glmmod, s = glmmod$lambda.min)
