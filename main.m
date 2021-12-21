load("linear_svm.mat");

cvx_begin
    variable w(2) 
    variable b
    minimize(norm(w))
    subject to
        for i = 1:length(X_train)
            1 - labels_train(i) * (X_train(i, :) * w + b) <= 0
        end
cvx_end
 
% plot the given datasets
visualize(X_train, labels_train, w, b, 'training data');
visualize(X_test, labels_test, w, b, 'testing data');


