y=[1
    1
    1
    1
    1
    1
    1
    2
    2
    2
    2
    2
    2
    2
    3
    3
    3
    3
    3
    3
    3
    4
    4
    4
    4
    4
    4
    4];
length(y)
x = y'
x(:)
b = lasso (lasso_data, y);
[bb,fitinfo] = lasso(lasso_data,y,'lambda',0.00002);
%%
X = randn(100,5);
weights = [0;2;0;-3;0]; % Only two nonzero coefficients
y = X*weights + randn(100,1)*0.1; % Small added noise

B = lasso(X,y);

[b,fitinfo] = lasso(X,y,'lambda',200);