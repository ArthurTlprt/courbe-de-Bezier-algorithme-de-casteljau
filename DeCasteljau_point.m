
Pts = [1, 2; 2, 6; 5, 7; 8, 6; 9, 2];

ptsToKeep = zeros(size(Pts));
ptsToKeep(1, 1:2) = Pts(1, 1:2)

% pts(1, end+1) = (Px(1)+Px(2))/2;
% pts(2, end+1) = (Py(1)+Py(2))/2;


% for i=1:length(Px)-1
%   pts(end+1) = [(Px(i)+Px(i+1))/2, (Py(i)+Py(i+1))/2];
% end

% pts = zeros(2, length(Px)*2-1)
% interp_decasteljau(Px, Py, []);
