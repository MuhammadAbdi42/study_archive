% This is the exercise for '4. Convert US$ to Euros Using up-to-date Info'

%% Importing URL
htmldata = urlread('https://www.xe.com/currencyconverter/convert/?Amount=1&From=USD&To=EUR');

%% Finding the rates
rate_indicator = '<p class="sc-c5062ab2-1 jKDFIr">';
rate_ind = strfind(htmldata, price_indicator) + length(rate_indicator);

usd_to_euro = str2double(htmldata(rate_ind:rate_ind+3));
euro_to_usd = 1/usd_to_euro;

%% Main Function
fprintf('1. USD to EURO\n')
fprintf('2. EURO to USD\n')
option = input('Enter Option: ');
amount = input('Input the amount to convert: ');

switch option
    case 1
        fprintf('%g USD = %g EURO\n', amount, amount*usd_to_euro)
    case 2
        fprintf('%g EURO = %g USD\n', amount, amount*euro_to_usd)
    otherwise
        error('Invalid input!')
end
