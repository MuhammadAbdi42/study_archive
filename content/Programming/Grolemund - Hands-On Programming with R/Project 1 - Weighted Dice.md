## Syntax Notes
1. Data is stored in "objects" via `<-` command.
```R
> apple <- 1
> apple
[1] 1
```

> [!note] The bracket shows the index of the first element in the line.

```R
> banana <- 1:30
> banana
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18
[19] 19 20 21 22 23 24 25 26 27 28 29 30
```

2. Lines are commented via `#`.
```R
# This is a comment!
```

3. The colon operator (:) returns every integer between two integers.
```R
> die <- 1:6
> die
[1] 1 2 3 4 5 6
```

4. R does not always follow the rules of matrix multiplication. Instead, R uses element-wise execution. When you manipulate a set of numbers, R will apply the same operation to each element in the set. So for example, when you run `die - 1`, R subtracts one from each element of `die`. 
	- When you use two or more vectors in an operation, R will line up the vectors and  perform a sequence of individual operations. For example, when you run die * die, R lines up the two die vectors and then multiplies the first element of vector 1 by the  first element of vector 2. It then multiplies the second element of vector 1 by the second  element of vector 2, and so on, until every element has been multiplied. The result will  be a new vector the same length as the first two.
	- ![[Pasted image 20260118175530.png]]
	- If you give R two vectors of unequal lengths, R will repeat the shorter vector until it is  as long as the longer vector, and then do the math. If the length of the short vector does not divide evenly into the length of the long vector,  R will return a warning message. This behavior is known as *vector recycling*, and it helps R do element-wise operations.
	- ![[Pasted image 20260118175607.png]]
	- You can do inner multiplication with the `%*%` operator and outer multiplication with the `%o%` operator:
```R
> die <- 1:6
> die %*% die
     [,1]
[1,]   91
> die %o% die
     [,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    2    3    4    5    6
[2,]    2    4    6    8   10   12
[3,]    3    6    9   12   15   18
[4,]    4    8   12   16   20   24
[5,]    5   10   15   20   25   30
[6,]    6   12   18   24   30   36
```

5. Functions are called in form of `func(args)`.
```R
> round(3.1415, digits = 2)
[1] 3.14
```
- They are also defined as this: ![[Pasted image 20260118175855.png]]

## Functions
1. `ls()`: Shows the object names that are already used.
```R
> ls()
[1] "apple"  "banana" "die"
```
2. `round()`, `factorial()`, `mean()`: basic functions
3. `args()`: Shows the arguments of a function.
```R
> args(round)
function (x, digits = 0, ...) 
NULL
```
4. `sample()`: Takes two arguments: a vector named `x` and a number named `size`. `sample` will return `size` elements from the vector. (without replacement by default)
```R
> die <- 1:6
> sample(die, 2)
[1] 1 5
> sample(die, 2, replace = TRUE)
[1] 1 1
```