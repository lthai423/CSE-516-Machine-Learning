function numberedMatrix = makeNumMatrix(n, m)
    x = zeros(n, m);
    for i = 1:n*m
        x(i) = i;
    end
    numberedMatrix = x;
end