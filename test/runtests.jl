using Test
using CRFactorization

@test (
    cr([1 0 0; 0 1 0; 0 0 1]).C == [1 0 0; 0 1 0; 0 0 1]
)

@test (
    A = rand(1:9, 2, 2);
    # display(A);
    (cr(A)).C == A && (cr(A)).R == [1 0; 0 1]

)