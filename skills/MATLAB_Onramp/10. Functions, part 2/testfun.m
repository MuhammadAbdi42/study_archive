function testfun
n = 4000;
v = zeros(n, 1);
for i = 1:n
    d = det(repmat(i:i+10, 11, 1)) + i;
    f = fft(d);
    t = lu(randn(50));
    q = ifft(f);
    v(i) = q;
    fprintf('%g, ', i);
    if mod(i, 50) == 0, fprintf('\n'); end
end
fprintf('\n')
