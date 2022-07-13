//the triangle function is a function of time 't'
//triangle(t) = 1 - |t|, if |t| < 1
// else 0

function y = triangle(t)
    y = (1 - abs(t)) .* (t >= -1) .* ( t < 1)
endfunction
