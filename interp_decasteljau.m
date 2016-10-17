function pts = interp_decasteljau(previousPts, ptsToKeep)
  if length(previousPts) == 0
    pts = ptsTokeep;
  end
  for i=1:length(Px)-1
    pts(end+1) = [(Px(i)+Px(i))/2, (Py(i)+Py(i))/2];
  end
  pts = interp_decasteljau(previousPts, ptsToKeep)
end
