using Test
using CRFactorization

@test (
    cr([1 0 0; 0 1 0; 0 0 1]).C == [1 0 0; 0 1 0; 0 0 1]
)
@test (
    A = [1 2 3];
    # display(A);
    # display(cr(A));
    (cr(A)).C ≈ [1;;] && (cr(A)).R ≈ [1 2 3]

)
@test (
    A = [1 2 3; 2 4 6];
    # display(A);
    # display(cr(A));
    (cr(A)).C ≈ [1;2;;] && (cr(A)).R ≈ [1 2 3]

)