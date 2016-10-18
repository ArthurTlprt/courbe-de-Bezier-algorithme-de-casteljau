function pt = interp_decasteljau(controlex, controley, t)
  n = length(controlex);
  Px = [];
  Py = [];
  for i=1:n
    Px(1, i) = controlex(i);
    Py(1, i) = controley(i);
  end
  for j=2:n+1
    for i=1:n-j+1
      Px(j, i) = (1-t)*Px(j-1, i) + t*Px(j-1, i+1);
      Py(j, i) = (1-t)*Py(j-1, i) + t*Py(j-1, i+1);
    end
  end
  Px
  Py
  pt = [Px(n,1), Py(n,1)];
end
