function Return = createMatrix( nSize )
%createMatrix function will create a matrix
%of nSize by nSize size.  The matrix created 
%will be used as an environment for q learning
%lab.
global size;
size = nSize;
Return = zeros(nSize, nSize);

end

