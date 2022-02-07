function [NV]=Bellman(VF)

delta=0.1;

for state=1:size(VF,1)  % corresponding to X in [0,100]

consos=0:state-1;       % admissible consumption levels: c in [0,X]

[m,n]=max(log(consos')+(1/(1+delta))*VF(state-consos,1));

NV(state,:)=[m,consos(n)];

end

end