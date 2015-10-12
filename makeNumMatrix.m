function numberedMatrix = makeNumMatrix(n)
    x = zeros(n);
    for i = 1:n^2
        x(i) = i;
    end
    numberedMatrix = x;
end