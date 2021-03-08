function test_prediction(p, y, nlabels)
sm = 0;
for i=1:nlabels
    n = sum(p==i);
    sm = sm + n;
    m = sum(y==i);
    fprintf('i %d; num true i %d, num predicted %d\n',i, m, n);
end
fprintf('sum elements classified %d\n',sm);
end