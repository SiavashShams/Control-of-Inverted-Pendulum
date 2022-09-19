
u = linspace(-4*4096,4*4096,2*4*4096+1);
dd = [];
for i=1:length(u)
    degree = u(i)*360/(4*4096);
    degree = -1*degree;
    degree = mod(degree,360);
    degree = degree - 180;
    if degree > 180
        degree = degree - 360;
    end
    if degree < -180
        degree = degree +360;
    end

    if degree > 90 
        degree = degree - 180;
    elseif degree < -90
        degree = degree + 180;
    end
    dd = [dd,degree];
end
plot(u,dd);


