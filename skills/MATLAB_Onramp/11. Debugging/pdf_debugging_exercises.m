%% Exercise 1
% linspace doesn't work with : operator
asdf = linspace(-30,30,1); 
% array index can't be 0
cm=rand(1,10); morty=cm(1);
% Since one column is selected, a vector must be assigned
tu(:,4) = nan(4,1); 
% mean() only returns one value, it can't be assigned into an array
m1 = mean([randn(1,10) zeros(5,1)']);
% Wrong spelling
asdf=zeros(3,4); asdf(3,2);
% end can't come after an expression without ;
for i=1:3 
    tmp(i)=i;
end
% Dimensions doesn't match
bsxfun(@times,randn(5,2),linspace(1,5,5)')
% Dimensions doesn't match
cat(1,zeros(10,3),ones(10,3))
% Dimensions doesn't match
dsearchn(linspace(-10,10,100)',[3 4]')
% Must specify x for the log(1:10)
plot(1:10,(1:10).^2,1:10,log(1:10))
% Index must be non-zero positive integer
r=1:10; r(ceil(rand))
% Both must be row vectors
[randn(1,10) zeros(5,1)']
% Second argument can only be 0 or 1
std(randn(1000,1),0)
% Third dimension should have 3 channels
imagesc(randn(5,3,3))
% Left side should be a matrix, not a vector
q(:,:) = bsxfun(@times,randn(5,2),linspace(1,5,2));
% Clear removes the workspace, can't assign after that
a=rand; c=a;
% Number of elements must not change. Use [] as one of the size inputs to
% automatically calculate the appropriate size for that dimension.
e = reshape(randn(5,3,4),2,3,[]);
% Non-singleton dimensions of the two input arrays must match each other.
bsxfun(@times,randn(5,2),linspace(1,5,5)')
% round(rand) may produce 0
r=1:10; r(ceil(rand))
% index cannot be zero or negative
for i=-3:3, tmp(i+4)=i; end
% Can't pass empty argument
plot(1:5,5:9)
% 5:1 is empty vector
plot(1:5,5:-1:1)

%% Exercise 2
nums2sq = -15:1.2:19;
sqmat = zeros(length(nums2sq),2);
for i=2:length(nums2sq)
    sqmat(i,1) = abs(nums2sq(i))^1.2 - mean(sqmat(i-1:i,1));
    sqmat(i,2) = nums2sq(i)^2 - sign(nums2sq(i))*log(abs(nums2sq(i)));
end

nums2sq = -15:1.2:19;
for i=2:length(nums2sq)
    if i == 2
        sqmat = zeros(length(nums2sq),2);
    end
    sqmat(i,1) = abs(nums2sq(i))^1.2 - mean(sqmat(i-1:i,1));
    sqmat(i,2) = nums2sq(i)^2 - sign(nums2sq(i))*log(abs(nums2sq(i)));
end

%% Exercise 3
outdat = zeros(100000,3);
l = 50;
r = 1;
while l>1
    % computations here...
    outdat(r,:) = results;
    r = r+1;
    l = l*.973;
end
toremove = sum(outdat,2)==0;
outdat(toremove,:) = [];