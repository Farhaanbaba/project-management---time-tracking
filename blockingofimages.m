s1=ones(32,32)
s2=s1*3
s2(1:4,1:4)
for i=1:4:32
    for j=1:41:32
 block=s2(i:i+3,j:j+3)
 block2=mean(block)
    end
end
uint8(block2)
s3=dec2bin(block2)
s4=bin2dec(s3)

for i =1:8
    s(i)=s3(i)
end