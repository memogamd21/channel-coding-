for i = 1:300
    signal(i) = randi(2) - 1;
end
% repeating the codes 0's and 1's 3 times
for j = 1:length(signal)
    for k = 2:-1:0
        replist(3*j - k) = signal(j);
    end
end
for m = 1:length(replist)
    if(replist(m) == 1)
        replist(m) = 1;
    else 
        replist(m) = -1;
    end
end
BER = [];
snr = [0:2:20];
temp = 10 .^ (snr/10);
AWGN_amp = sqrt(1./temp);
for y = 1:length(AWGN_amp)
    BER = [ BER decod(signal,replist,AWGN_amp(y)) ] ;
end
plot(snr,BER)
%%
hold on 
for i = 1:300
    signal(i) = randi(2) - 1;
end
% repeating the codes 0's and 1's 3 times
for j = 1:length(signal)
    for k = 4:-1:0
        replist(5*j - k) = signal(j);
    end
end
for m = 1:length(replist)
    if(replist(m) == 1)
        replist(m) = 1;
    else 
        replist(m) = -1;
    end
end
BER = [];
snr = [0:2:20];
temp = 10 .^ (snr/10);
AWGN_amp = sqrt(1./temp);
for y = 1:length(AWGN_amp)
    BER = [ BER decod(signal,replist,AWGN_amp(y)) ] ;
end
plot(snr,BER)