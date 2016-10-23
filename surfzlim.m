function surfzlim(source,callbackdata)
    p11 = source.Value;
    p0 = 0.1;   % Probability of '0' transmission
    p1 = 1 - p0;

    % Build the Probability Transition Matrix
    p00 = [0 .1 .2 .3 .4 .5 .6 .7 .8 .9 1];
    p01 = 1.- p00;
    p10 = 1 - p11;
    cb1 = (p0*p01) + (p1*p10);
    cb2 = (p0*p00) + (p1*p11);
    cb3 = p1;
    cb3 = [cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3];
    cb4 = p0;
    cb4 = [cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4];
    
    plot(p00,cb1,'blue');
    title('Bayes Cost for fixed P(1/1)');
    xlabel('P00');
    ylim([0 1]);
    ylabel('Bayes Cost');
    
    hold all
    plot(p00,cb2,'green');
    hold all
    plot(p00,cb3,'magenta');
    hold all
    plot(p00,cb4,'red');
    legend('Rule 1','Rule 2','Rule 3','Rule 4');
    hold off
 % Minimum Bayes cost determinination
    c = [cb1 cb2 cb3 cb4];
    [cb,i] = min(c);        
end