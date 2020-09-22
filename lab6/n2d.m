format compact
format short
clear all
clc
%%

for c=1:4

    stock = 100;
    sigma = 0.04;
    w=0.01;
    if c==2
        theta=0;
    elseif c==3
        theta = 0.3;
    else
        theta=-0.3;
    end
    if c==4
        delta = 0.25;
    else
        delta=0.15;
    end
    q1=1;
    bond=1;
    mu = log(stock/bond) - sigma^2/2 - log((1-w)+w*exp(theta+delta^2/2));



    d= @(k,k1,k2) (log(k)-k1)/(k2^(1/2));
    f= @(k,k1,k2) q1*k*normcdf(d(k,k1,k2))-q1*exp(k1+k2/2)*normcdf(d(k,k1,k2)-k2^(1/2));

    steps=21;
    calls=zeros(steps,1);

    for i=1:steps
        k=89+i;
        term1=(1-w)*f(k,mu,sigma^2);
        term2=w*f(k,mu+theta,sigma^2+delta^2);
        put=term1+term2;
        call=put+stock-bond*k;
        calls(i)=call;
    end

    disp('call prices');
    disp(calls);

    %%


    k=90:110;








    d=@(sigma,strike) (log(stock/(bond*strike))+sigma^2/2)/sigma;
    call_price = @(sigma,strike) stock * normcdf(d(sigma,strike)) - bond * strike * normcdf(d(sigma,strike)-sigma);
    f=@(sigma,call,strike) call_price(sigma,strike) - call;



    vol=zeros(steps,1);
    for i=1:steps

        strike = k(i);
        call = calls(i);

        x0=0.05;
        x1=1;

        fx0=f(x0,call,strike);
        fx1=f(x1,call,strike);

        fx2=100000;
        tol=1.e-8;

            while(abs(fx2) > tol)


                x2 = x1 - fx1*((x1-x0)/(fx1-fx0));

                fx2=f(x2,call,strike);

                x0=x1;
                x1=x2;

                fx0=f(x0,call,strike);
                fx1=f(x1,call,strike);

            end
        vol(i)=x2;
    end
    disp('implied vol');
    disp(vol);

    subplot(2,2,c),plot(k,vol);
    title(strcat('case: ',sprintf('%d',c)),'FontWeight','bold');
end

