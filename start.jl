cd("SS22_julia_workshop/")
using Pkg; Pkg.activate("."); Pkg.instantiate();
# using NodeJS; run(`$(npm_cmd()) install highlight.js`);
using Franklin;
serve()
