# This file was generated, do not modify it. # hide
G = zeros(nv, nv);

for i in 1:nv
    for j in 1:nv
        G[i, j] = w[i]
        if i == j
            G[i, j] = G[i, j] - 1
        end
    end
end