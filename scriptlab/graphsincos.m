%******************************* Question 3 ******************************
function varargout = graphsincos(varargin)
if nargout == 0
    first=sin(varargin{1});
    second=cos(varargin{1});
    figure(2);
    plot(varargin{1}, first);
    hold on;
    plot(varargin{1}, second);
    hold off;
    legend("sin(x)", "cos(x)");
else
    varargout{1}=sin(varargin{1})+cos(varargin{1});
end

end
