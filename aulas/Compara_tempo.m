clear
limsup=1e7;
tic
for ii=1:limsup
    v1(ii)=ii;
end
toc

tic
v2=zeros(1,limsup);
for ii=1:limsup
    v2(ii)=ii;
end
toc
