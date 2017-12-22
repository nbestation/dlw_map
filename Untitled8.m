flag = false;
count = 1;
while (~flag)
    for i=1:9
        a(i) = mod(count,i);
    end
    b = [0 1 0 1 4 3 0 1 0];
    if (sum(a == b) == 9)
        count
        flag = true;
    end
    count = count + 1;
end