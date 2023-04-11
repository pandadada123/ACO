# ACO
 Applied Convex Optimizaiton Project 2 Grp 3

Codes for Subgradient Descent Method for SVM, including Pegasos and mini-batch Pegasos
* Objective function of Subgradient Descent Method  

$$ 
f(\mathbf{w}, b)=\frac{\lambda}{2}\|\mathbf{w}\|^2+\frac{1}{n}\left[\sum_{i=1}^n \max \left(0,1-y_i\left(\mathbf{w}^T \mathbf{x}_{\mathbf{i}}+b\right)\right)\right] \quad i=1,2, \ldots, n
$$

* Pegasos

$$
f(\mathbf{w})=\frac{\lambda}{2}\|\mathbf{w}\|^2+\max \left(0,1-y_{i t}\left(\mathbf{w}^T \mathbf{x}_{i t}\right)\right)
$$

* mini-batch Pegasos

$$
f(\mathbf{w}, k)=\frac{\lambda}{2}\|\mathbf{w}\|^2+\frac{1}{k}\left[\sum_{i=1}^k \max \left(0,1-y_i\left(\mathbf{w}^T \mathbf{x}_{\mathbf{i}}\right)\right)\right] \quad i=1,2, \ldots, k
$$

### Reference
[1] Shalev-Shwartz, S., & Ben-David, S. (2014). [Understanding machine learning - from theory to algorithms](https://www.cs.huji.ac.il/w~shais/UnderstandingMachineLearning/understanding-machine-learning-theory-algorithms.pdf),
Cambridge University Press.  

[2] Shalev-Shwartz, S., Singer, Y., Srebro, N., & Cotter, A. (2011). [Pegasos: Primal estimated sub-gradient solver
for svm](https://home.ttic.edu/~nati/Publications/PegasosMPB.pdf), Mathematical programming, 127 (1), 3–30.
