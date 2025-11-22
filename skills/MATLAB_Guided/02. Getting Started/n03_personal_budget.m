% This is the exercise for '3. Using MATLAB for a Personal Budget'

% monthly income (post-tax)
income = 2500;


% list monthly expenses
rent  = 1200;
utils =  300; % water, electricity, internet, etc.
car   =  250; % gas and insurance
food  =  300; % assuming 75/week
phone =   50; % gotta have unlimited downloads!
retirement = income / 10; % you should be saving 10% of your income!


% total monthly expenditures
outflow = rent + utils + car + food + phone + retirement;

% amount left over for nonessential expenses
nonessentials = income - outflow;


% how much can you spend per day?
perday = nonessentials/30;
disp([ 'I can spend ' num2str(perday) ' extra each day.' ])


% what if you spend twice as much during the weekend as during the week?
day_share = [1 1 1 1 1 2 2];
a_month_shares = (30 / 7) * sum(day_share);
perday_oneshare = nonessentials/a_month_shares;
disp([ 'I can spend ' num2str(perday_oneshare) ' extra for each working day, and ' num2str(perday_oneshare * 2) ' extra for each weekend day.' ])
disp('Assuming every week has 5 weekdays and 2 weekend days')