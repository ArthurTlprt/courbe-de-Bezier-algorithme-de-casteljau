Px = [1 2 5 8 9];
Py = [2 6 7 6 2];


% calcul du polygone
echantillons = 0:0.2:1;
Pix = [];
Piy = [];
for i=1:length(echantillons)
  Pix(i) = interp_decasteljau(Px, Py, echantillons(i))(1)
  Piy(i) = interp_decasteljau(Px, Py, echantillons(i))(2)
end
Pix
Piy



Pn(1, 1:length(Pix)) = Pix;
Pn(2, 1:length(Piy)) = Piy;


% calcul de la courbe de bézier-caseljau
Pn = transpose(Pn);
n = length(Pix)-1;
t=0:0.05:1;
P=zeros(2,length(t));
% calcul de P pour tous les t € [0, 1]
for u=1:length(t)
  for i=1:n+1
    P(1, u) = P(1, u) + Pn(i, 1)*base_bernstein(i-1, n, t(u));
    P(2, u) = P(2, u) + Pn(i, 2)*base_bernstein(i-1, n, t(u));
  end
end

% en vers le polygone, en rouge la courbe selon l'algo de Casteljau
plot(Pix,Piy,'g-x',P(1, 1:end), P(2, 1:end),'r')
pause(3)
