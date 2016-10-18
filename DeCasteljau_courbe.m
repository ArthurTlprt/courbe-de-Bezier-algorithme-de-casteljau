Px = [1 2 5 8 9];
Py = [2 6 7 6 2];
% points d'echantillons

echantillons = 0:0.1:1;
Pix = [];
Piy = [];
for i=1:length(echantillons)
  Pix(i) = interp_decasteljau(Px, Py, echantillons(i))(1)
  Piy(i) = interp_decasteljau(Px, Py, echantillons(i))(2)
end

Pn(1, 1:length(Pix)) = Pix;
Pn(2, 1:length(Piy)) = Piy;

tracer_courbe_bezier(transpose(Pn), length(Pix)-1);
