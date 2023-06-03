function isStable = checkStability(A, lambda)
    % Compute the eigenvalues of the matrix A - lambda*I
    eigenvalues = eig(A - lambda*eye(size(A)));
    
    % Print the eigenvalues
    disp('Eigenvalues:');
    disp(eigenvalues);
    
    % Check if all eigenvalues have negative real parts
    isStable = all(real(eigenvalues) < 0);
end