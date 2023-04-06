module CRFactorization

export cr

function IsLinearlyIndependant(E)
    try
        m = size(E)[1]
        E \ zeros(m, 1)
        
    catch
        return false
    end
    return true
end

#function to get the C component of the factorization A = CR
function crC(A)
    n = size(A)[2]
    m = size(A)[1]
    setC = []
    for column ∈ [A[:, i] for i ∈ 1:n]
        push!(setC, column)
        if IsLinearlyIndependant([setC[j][i] for i in 1:m, j in 1:length(setC)])
            continue
        else
            deleteat!(setC, length(setC))
        end
    end
    # finally converting back to matrix form   !TODO make a function to convert from set back back to matrix to clear up the code
    return [setC[j][i] for i in 1:m, j in 1:length(setC)]
end

struct CRpack
    C::Matrix
    R::Matrix
end


function cr(A)
    C = crC(A) # note that C is a matrixr, not a set of vectors
    # now we will construct the R matrix solving linear systems Cx=collum of a
    setR = []
    n = size(A)[2]
    for column_of_a ∈ [A[:, i] for i ∈ 1:n]
        push!(setR, C \ column_of_a)
    end
    R = [setR[j][i] for i in 1:length(setR[1]), j in 1:length(setR)]
    return CRpack(C, R)
end

end # module CRFactorization
