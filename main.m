load("linear_svm.mat");

% plot the given datasets
visualize(X_train, labels_train, 'training data');
visualize(X_test, labels_test, 'testing data');