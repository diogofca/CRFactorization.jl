# CRFactorization
Code for Columns and Rows factorization of a matrix.
 
 ## Quick setup guide
Install the package with 
```julia
Pkg.add("https://github.com/diogofca/CRFactorization.jl")
```

 ## Usage
```julia
using CRFactorization
cr(rand(1:9, 2,2))
```

 ## Mathematical Foundations ($A = CR$)
This is perhaps the simplest matrix factorization of them all, that consists of slicing a matrix $A$ into its independent columns and rows. The easiest way to think about it is considering a matrix $C$, that consists of the independent columns of $A$, then, the coefficients of each column of $R$ will be those that make the linear combinations of the columns of $C$ equal the columns of $A$.

From this description on can immediately realize that the matrix $R$ will have the identity matrix contained.

More resources and explanation on the mathematical foundations of $A = CR$ can be found on [this webpage](https://ocw.mit.edu/courses/18-065-matrix-methods-in-data-analysis-signal-processing-and-machine-learning-spring-2018/) and on Gilberts Strang's book *Linear Algebra and Learning from Data*.

Finally, a concrete example: 

$$ \begin{bmatrix} 1 & 2 & 3 \\ 5 & 11 & 23 \end{bmatrix} = 
\begin{bmatrix} 1 & 2 \\ 5 & 11 \end{bmatrix} \begin{bmatrix} 1 & 0 & -13 \\ 0 & 1 8 \end{bmatrix} $$