clear all
close all

load("linear_svm.mat");
X_train=zscore(X_train);

cvx_begin
    variable w(2) 
    variable b
    minimize(norm(w))
    subject to
        for i = 1:length(X_train)
            1 - labels_train(i) * (X_train(i, :) * w + b) <= 0
        end
cvx_end
 
% calculate test accuracy
wb=[w;b];
Y_hat=predict_SVM(wb,X_test);
test_accuracy=sum(Y_hat'==labels_test)/numel(labels_test) * 100

% plot the given datasets
% visualize(X_train, labels_train, w, b, 'training data');
% visualize(X_test, labels_test, w, b, 'testing data');
visualize(zscore(X_train), labels_train, w, b, 'training data');
visualize(zscore(X_test), labels_test, w, b, 'testing data');


