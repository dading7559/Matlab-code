function sim=TSBAE(train,k,alpha,m)
    [V1s,X1,V1t]=svds(train,k);
    Us=V1s*sqrt(X1);
    V1t=V1t.';
    Ut=sqrt(X1)*V1t;
    simAE=Us*Ut;
    simm=sparse(eye(size(train,1)));
    for i=1:m
        simm=(alpha^m)*(simAE^m)+simm;
    end
    sim=simm*simAE;
end