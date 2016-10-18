function tracer_base_bernstein(i, n)
  t=0:0.05:1;
  B = [];
  for u=1:length(t)
    B(end+1) = base_bernstein(i, n, t(u));
  end
  plot(t, B)
%  pause(3)
end
