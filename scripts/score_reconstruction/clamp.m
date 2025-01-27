% This function is from Gabriel Peyre.
% Thanks to Gabriel for sharing his code.

function y = clamp(x,a,b)

% clamp - clamp a value
%
%   y = clamp(x,a,b);
%
% Default is [a,b]=[0,1].
%
%   Copyright (c) 2004 Gabriel Peyr�

if nargin<2
    a = 0;
end
if nargin<3
    b = 1;
end

if iscell(x)
    for i=1:length(x)
        y{i} = clamp(x{i},a,b);
    end
    return;
end

y = max(x,a);
y = min(y,b);
