# This file was generated, do not modify it. # hide
function in_unit_circle(N::Integer)
    M = 0
    
    for i in 1:N
        if (rand()^2 + rand()^2) < 1
            M += 1
        end
    end

    return M
end

function estimate_pi(f::Function, N::Integer)
    return 4 * f(N) / N
end

function get_accuracy(f::Function, N::Integer)
    return abs(
        estimate_pi(f, N) - pi
        )
end

N = 2^30
get_accuracy(in_unit_circle, N)