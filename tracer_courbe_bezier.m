function tracer_courbe_bezier(Pn, n)
  t=0:0.05:1;
  P=zeros(2,length(t));
  % calcul de P pour tous les t € [0, 1]
  for u=1:length(t)
    for i=1:n+1
      P(1, u) = P(1, u) + Pn(i, 1)*base_bernstein(i-1, n, t(u));
      P(2, u) = P(2, u) + Pn(i, 2)*base_bernstein(i-1, n, t(u));
    end
  end
  plot(P(1, 1:end), P(2, 1:end));
  pause(3)
end
