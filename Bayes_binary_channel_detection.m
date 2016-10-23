% %-----------------------------------------------------------------------
% % Bayes Detection theory for a binary channel
% % This program evaluates the Bayes cost for all the 4 cases that occur in a
% % Binary Channel. This allows for a graphical visualization of finalizing
% % the minimum Bayes cost and hence deciding the rule that gives the minimum
% % Bayes Cost.
% % Written by Shreyas Tater, UG, Dept of ECE
% % NIT, Trichy
% % 22/10/2016
% %
% %-----------------------------------------------------------------------
% % ASSUMPTIONS
% % Probability of transmitting 0/1 is 0.5
% % Conditional costs are assumed to be 0 for correct prediction
% % Conditional costs are assumed to be 1 for incorrect prediction
% %-----------------------------------------------------------------------
% 
% p0 = 0.1;   % Probability of '0' transmission
% p1 = 1 - p0;
% 
% % Build the Probability Transition Matrix
% p00 = [0 .1 .2 .3 .4 .5 .6 .7 .8 .9 1];
% p11 = 0.5;
% p10 = 1 - p11;
% p01 = 1.- p00;
% % Bayes Cost = cb
% 
% % Develop the cases/rules
% % Rule 1
% % 1->1 && 0->0
% cb1 = (p0*p01) + (p1*p10);
% % Rule 2
% % 1->0 && 0->1
% cb2 = (p0*p00) + (p1*p11);
% % Rule 3
% % 1->0 && 0->0
% cb3 = p1;
% cb3 = [cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3 cb3];
% % Rule 4
% % 1->1 && 0->1
% cb4 = p0;
% cb4 = [cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4 cb4];

%plot cbs
f = figure('Name','Bayes Detection for Binary Channel');
% plot(p00,cb1,'blue');
% title('Bayes Cost for fixed P(1/1)');
% xlabel('P00');
% ylim([0 1]);
% ylabel('Bayes Cost');
% 
% hold all
% plot(p00,cb2,'green');
% hold all
% plot(p00,cb3,'magenta');
% hold all
% plot(p00,cb4,'red');
% legend('Rule 1','Rule 2','Rule 3','Rule 4');
% hold off

% Minimum Bayes cost determinination
c = [cb1 cb2 cb3 cb4];
[cb,i] = min(c);

% UI Panel implementation
% The slider varies the P11 value
sld = uicontrol('Style', 'slider','Min',0,'Max',1,'Value',.5,'Position', [550 550 250 15],...
        'Callback', @surfzlim);
txt = uicontrol('Style','text','Position',[500 550 50 15],'String','P11');
 
                                            