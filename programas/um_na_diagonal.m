function [A] = um_na_diagonal(A)
  [Nlinhas, Ncolunas] = size(A);
  for ii = 1:Nlinhas
    A(ii,ii)=1;
  end
end
