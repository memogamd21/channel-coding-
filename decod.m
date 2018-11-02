function [ BER ] = decod( original, signal,noisecoeff )
    AWGN = noisecoeff * randn(1,length(signal));
    signal = signal + AWGN ;
    for n = 1:length(signal)
        if signal(n) >= 0
            signal(n)= 1
        else 
            signal(n) = 0
        end
    end
    for l = 1 : length(signal)/5
        decodsig(l) = signal(l*5)
    end
    BER = 300 - sum(decodsig == original)
end

