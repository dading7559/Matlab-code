function sim=AE(train,k)
    [V1s,X1,V1t]=svds(train,k);
    Us=V1s*sqrt(X1);
    V1t=V1t.';
    Ut=sqrt(X1)*V1t;
    sim=Us*Ut;
end