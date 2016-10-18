% retourne le point pt est le point sur la courbe P(t) correspondant à t
% controlex et controley représente les coordonées des points de controles
function pt = interp_decasteljau(controlex, controley, t)
  n = length(controlex);
  Px = [];
  Py = [];
  for i=1:n
    Px(1, i) = controlex(i);
    Py(1, i) = controley(i);
  end
  % formule du cours
  for j=2:n+1
    for i=1:n-j+1
      Px(j, i) = (1-t)*Px(j-1, i) + t*Px(j-1, i+1);
      Py(j, i) = (1-t)*Py(j-1, i) + t*Py(j-1, i+1);
    end
  end
  pt = [Px(n,1), Py(n,1)];
end
