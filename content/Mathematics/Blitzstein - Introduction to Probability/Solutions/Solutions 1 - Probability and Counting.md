## Counting
### Question 1
${11 \choose 1}{10 \choose 4}{6 \choose 4}{2 \choose 2} = 34650$

---
### Question 2
**(a)** $8 * 10^6 = 8000000$

**(b)** $8 * 10^6 - (1) * 10^4 = 7990000$

---
### Question 3
**(a)** $10 * 9 * 8 * 7 * 6 = 30240$

**(b)** $10 * 9 * 9 * 9 * 9 = 65610$

---
### Question 4
**(a)** $2^{n \choose 2}$

**(b)** $n \choose 2$

---
### Question 5
**(a)** For $2^n$ players there are $n$ rounds.

**(b)** $\sum_{i=0}^{n-1} 2^{i} = 2^n-1$

**(c)** Every team except the champion needs to lose a game, so there should be $2^n - 1$ games, for this to happen.

---
### Question 6
$\frac{20!}{10!} = 670442572800$

---
### Question 7 
**(a)** ${7 \choose 3}{4 \choose 2}{2 \choose 2} = 35*6*1 = 210$

**(b)** The possible combinations for $4 - 3$ are: 
$\{4W, 3L\}, \{3W, 2D, 2L\}, \{2W,4D,1L\}, \{1W,6D\}$
${7 \choose 4}{3 \choose 3} + {7 \choose 3}{4 \choose 2}{2 \choose 2} + {7 \choose 2}{5 \choose 4}{1 \choose 1} + {7 \choose 1}{6 \choose 6} = 35 + 35*6 + 21*5 + 7 = 357$

**(c)** The valid outcomes until 6th round are $3.5-2.5$ and $3-3$ so the game ends on the 7th round, therefore the possible combinations are:
For $3.5 - 2.5$: $\{3W,3L\},\{2W,2D,2L\},\{1W,4D,1L\},\{6D\}$
For $3 - 3$: $\{3W,1D,2L\},\{2W,3D,1L\},\{1W,5D\}$ 
Therefore:
${6 \choose 3}{3 \choose 3} + {6 \choose 2}{4 \choose 2}{2 \choose 2} + {6 \choose 1}{5 \choose 4}{1 \choose 1} + {6 \choose 6} + {6 \choose 3}{3 \choose 1}{2 \choose 2} + {6 \choose 2}{4 \choose 3}{1 \choose 1} + {6 \choose 1}{5 \choose 5} = 267$

---
### Question 8
**(a)** $\frac{{12 \choose 2}{10 \choose 5}{5 \choose 5}}{2!} = 8316$

**(b)** $\frac{{12 \choose 4}{8 \choose 4}{4 \choose 4}}{3!} = 5775$

---
### Question 9
**(a)** ${{110+111} \choose 110}{111 \choose 111} = {221 \choose 110}$

**(b)** ${221 \choose 110} . {(211 - 111)+(210 - 110) \choose 210 - 110} = {221 \choose 110} . {200 \choose 100}$

---
### Question 10
**(a)** ${20 \choose 7} - {15 \choose 7} = 71085$

**(b)** Overcounting

---
### Question 11
**(a)** $m^n$

**(b)** $\frac{m!}{(m-n)!}$ if $m \geq n$ and $0$ if $m < n$

---
### Question 12
**(a)** ${52 \choose 13}$

**(b)** ${52 \choose 13}{39 \choose 13}{26 \choose 13}{13 \choose 13}$

**(c)** Because each player's hand is dependent on the on the other players'.

---
### Question 13
${52 + 10 - 1 \choose 10} = {61 \choose 10}$

---
### Question 14
${(4*2^8) + 2 - 1 \choose 2} = {1025 \choose 2} = 1025 * 512 = 524800$

## Story proofs
### Question 15
Suppose a pizza can have $n$ kinds of toppings (getting no toppings is allowed, as is getting all $n$) therefore for each topping there are two possibilities (on or off), by multiplication rule we have $2^n$ possibilities.
Alternatively each pizza can have $0 \leq k \leq n$ toppings, therefore for each $k$ there is ${n \choose k}$ topping possibilities. Summing over all possible values of $k$ gives: 
$$
{\sum_{k=0}^n {n \choose k}} = 2^n
$$

As desired.

---
### Question 16
**(a)**

$$
\begin{aligned}
{n \choose k} + {n \choose k-1} &= \frac{n!}{(n-k)!k!} + \frac{n!}{(n-k+1)!(k-1)!} \\
&=\frac{n!}{(k-1)!(n-k)!}\left( \frac{1}{k}+\frac{1}{n-k+1} \right) \\
&=\frac{n!}{(k-1)!(n-k)!}{\frac{n+1}{k(n+1-k)}} \\
&=\frac{(n+1)!}{k!(n+1-k)!}={n+1 \choose k}
\end{aligned}
$$ 

**(b)** Suppose a committee of $k$ people is chosen from a group of $n$ people plus Dave. The total number of committees is ${n+1 \choose k}$.
Alternatively the committees can be chosen by either including or excluding Dave:
- First, if Dave is included, the remaining $k-1$ people must be chosen from the remaining $n$ people, which can be done in ${n \choose k-1}$ ways.
- Second, if Dave is excluded, then all the $k$ people must be chosen from the remaining $n$ people, which can be done in ${n \choose k}$ ways.

Since these cases are disjoint and exhaustive, the total is the sum of the two:
$$
{n \choose k-1} + {n \choose k} = {n+1 \choose k}
$$

As desired.

---
### Question 17
Suppose there are two groups of $n$ people. a committee of $n$ people is chosen from these groups, the total number of committees is ${2n \choose n}$.
Alternatively the committees can be chosen by focusing on:
- The number of people included from the first group, $k$.
- And the number of people included from the second group $n-k$, resulting in ${n \choose n-k}$ possibilities; By the symmetry of the binomial coefficient, choosing $n−k$ people is equivalent to choosing $k$ people.

These result to ${n \choose k}^2$ committees for each $k$.
Summing over all possible values of $k$ gives:
$$
\sum_{k=0}^n {n \choose k}^2 = {2n \choose n}
$$

As desired.

---
### Question 18
Suppose there are two groups of $n$ people. A committee of $n$ people is chosen from these groups, additionally a president is chosen from the first group. There are $n$ ways to choose a president from the first group, and $2n−1 \choose n-1​$ ways to choose the remaining $n−1$ members from the remaining $2n−1$ people: $n{2n - 1 \choose n-1}$.
Alternatively these committees can be chosen by focusing on:
- The people included from the first group, $k$, which must be greater than $0$ because there must be a president, resulting in ${n \choose k}$ possibilities, additionally by choosing the president the possibilities are multiplied by $k$, resulting in $k{n \choose k}$ possibilities. 
- And the people included from the second group, $n-k$, resulting in ${n \choose n-k}$ possibilities, which is equivalent to the number of people excluded from the second group, $k$, resulting in ${n \choose k}$ possibilities.

These result to $k{n \choose k}^2$ committees for each fixed $k$.
Summing over all possible values of $k$ gives:
$$
\sum_{k=1}^n k{n \choose k}^2 = n{2n-1\choose n-1}
$$

As desired.

---
### Question 19
Suppose there is a set of $n+3$ elements, $\{1,2,\dots,n+3\}$. Choosing a subset of $5$ elements would have ${n+3 \choose 5}$ possibilities.
Alternatively each subset can be chosen by focusing on the middle element in the subset. Let the elements be ordered $\{1,2,…,n+3\}$, and  $(k+1)$th element to be the middle (3rd) element of the subset, there are $k$ elements to its left and $(n+3)−(k+1)$ elements to its right. then:
- $2$ elements from the left side of the middle element must be chosen: ${k \choose 2}$
- And 2 elements from the right side of the middle element as well: ${n + 3 - k - 1 \choose 2}={n - k + 2 \choose 2}$

Resulting in ${k \choose 2}{n - k + 2 \choose 2}$ subsets.
Summing over all possible values of $k$, ($2 \leq k \leq n$) gives:
$$
{\sum_{k=2}^{n} {k \choose 2}{n - k + 2 \choose 2} = {n+3 \choose 5}}
$$

As desired.

---
### Question 20
**(a)** Suppose we have a list of $n+1$ people ordered by age, the number $1$ being the youngest and the number $n+1$ being the oldest; Choosing a committee of $k+1$ people would have ${n+1 \choose k+1}$ possibilities.
Alternatively each committee can be chosen by focusing on the oldest member, let $i$, $(i\geq k+1)$ be the number of the oldest person in the committee, then we have to choose the remaining $k$ people from the $i-1$ younger people: ${i-1 \choose k}$
Summing over all the valid $i$ values would give:
$$
{\sum_{i=k+1}^{n + 1} {i - 1 \choose k} = {k \choose k} + {k + 1 \choose k} + \dots + {n \choose k}} = {n+1 \choose k+1}
$$

As desired.

**(b)** There are $21$ possibilities for the amount of the gummy bears inside a bag, ($\{30,31,\dots,50\}$), and 5 possibilities for each flavor. Each case of amount can be modeled as *Stars and Bars*, $5$ bins and $n$ gummies, ${n + k - 1 \choose k-1} = {5 + n - 1 \choose 5 - 1} = {n + 4 \choose 4}$ possibilities for each $n$; giving the total possibilities of:
$$
{34 \choose 4} + {35 \choose 4} + \dots {54 \choose 4}
$$
by using **(a)**:
$$
{34 \choose 4} + {35 \choose 4} + \dots + {54 \choose 4} = {55 \choose 5} - [{4 \choose 4} + {5 \choose 4} + \dots + {33 \choose 4}]
$$
by using **(a)** again:
$$
{55 \choose 5} - [{4 \choose 4} + {5 \choose 4} + \dots + {33 \choose 4}] = {55 \choose 5} - {34 \choose 5}
$$

---
### Question 21
**(a)** Partitioning $n$ people plus Dave into $k$ groups can be noted as ${n+1 \brace k}$. Alternatively it can be broken into two disjoint case:
- Dave is a group by itself, so there will be $n$ remaining people to be partitioned into $k-1$ groups, therefore there are ${n \brace k-1}$ possibilities.
- Dave is a part of a group, there will be $k$ groups for Dave to join, therefore there are $k{n \brace k}$ possibilities.

Therefore we have:
$$
{n \brace k-1} + k{n \brace k} = {n+1 \brace k}
$$
As desired.

**(b)** Partitioning $n$ people plus Dave into $k$ groups and Dave's group can be noted as ${n+1 \brace k+1}$.
Alternatively each partitioning can be done by focusing on how many people are going to be in Dave's group. Let $j$ be the number of the people not in Dave's group, there would be ${n \choose n-j}$ possibilities for the Dave's group, additionally the remaining people can partitioned in ${j \brace k}$ ways. Resulting in ${n \choose n-j}{j \brace k}$ ways for each $j$, $k \leq j \leq n$.
Summing over all possible values of $j$ results in:
$$
{\sum_{j=k}^{n} {n \choose n - j}{j \brace k}} = {\sum_{j=k}^{n} {n \choose j}{j \brace k}} = {n+1 \brace k+1}
$$

As desired.

---
### Question 22
**(a)** Suppose $n + 1$ people are playing in round-robin tournament, where each player plays with any other player exactly once. To find the number of matches, we simply find all the combinations to form a match, which is ${n + 1 \choose 2}$
Alternatively the number of games can be counted by focusing on players, the first player will has to face $n$ players, the second player has to face $n - 1$ remaining players and so on. This results to:
$$
n + (n - 1) + (n - 2) + \dots + 1 = {n+1 \choose 2}
$$
As desired.

**(b)** Consider a set of integers $\{0, 1, 2, \dots, n\}$ where we want to choose a number $k$ such that $k∈\{1,2,…,n\}$ and three numbers $x,y,z$ such that $x,y,z \in \{0, 1, 2, \dots, k-1\}$. For a fixed $k$, there are $k$ choices for $x,y$ and $z$, summing over all possible $k$ values gives:
$$
1^3 + 2^3 + 3^3 + \dots + n^3 = \sum_{k=1}^n k^3
$$
Alternatively, these numbers can be picked by focusing on how many distinct values $k$, $x$, $y$ and $z$ have:
- *4 Distinct values*; Choose 4 numbers from $n+1$. The largest is $k$. There are $3!=6$ ways to assign the remaining 3 values to $x, y$ and $z$: $6{n+1 \choose 4}$
- *3 Distinct Values*; Choose 3 numbers from $n+1$. The largest is $k$. One value among $x,y,z$ is repeated, or one matches $x,y,z$ in a specific pattern. There are 6 ways to arrange these: $6{n+1 \choose 3}$
- *2 Distinct Values*; Choose 2 numbers from $n+1$. The larger is $k$. All three of $x,y,z$ must be the smaller number. There is only 1 way to do this: ${n+1 \choose 2}$

Therefore:
$$
\sum_{k=1}^n k^3 = 6{n+1 \choose 4} + 6{n+1 \choose 3} + {n+1 \choose 2}
$$
As desired.

## Naive definition of probability
### Question 23
**Desired sets of buttons:** $\{2,3,4\}, \{3,4,5\}, \dots ,\{8,9,10\}$, ($7$ sets)

**Desired combinations:** $7 * 3! = 42$

**All combinations:** $9^3 = 729$

**Probability:** $P = \frac{42}{729} = \frac{14}{243}$

---
### Question 24
**Desired combinations:** 
$[G_{1},G_{2},G_{3},M_{1},M_{2},M_{3}], [G_{1},G_{3},G_{2},M_{1},M_{2},M_{3}], \dots$
resulting in $3! * 3! = 36$ combinations.

**All combinations:** $6! = 720$

**Probability:** $P = \frac{36}{720}=\frac{1}{20}$

---
### Question 25
**Undesired combinations:**
Where each district gets exactly one robbery, therefore there are $6! = 720$ combinations.

**All combinations:**
$6 \times 6 \times 6 \times 6 \times 6 \times 6 = 6^6 = 46656$

**Probability:** $P = 1 - \left( \frac{720}{46656} \right) = 0.0.015$

---
### Question 26
**(a)** Picking one person more than once is equivalent to at least two people sharing the same birthday.

**(b)** 

**Undesired combinations:** the combinations where different people are chosen each time.
$1000000 \times 999999 \times \dots \times 999001 = \frac{1000000!}{999000!}$

**All combinations:**
$(1000000)^{1000}$

**Probability:**
$P = 1 - \frac{\frac{1000000!}{999000!}}{(1000000)^{1000}}$

---
### Question 27
**Undesired combinations:** choosing $k$ locations from $n$ locations to store phone numbers without replacing: $n\times(n-1)\times(n-2)\times(n-k+1) = \frac{n!}{(n-k)!}$ 

**All combinations:** $n^k$

**Probability:** $P = 1 - \frac{n!}{(n-k)!n^k}$

---
### Question 28
**Undesired combinations:** choosing $3$ slots from $10$ slots for statistics course without replacing: $10\times(10-1)\times(10-2) = 720$ 

**All combinations:** $10^3 = 1000$

**Probability:** $P = 1 - \frac{720}{1000}=0.28$

---
### Question 29
**(a)** Since the maximum total of dices is 24, this problem can be modeled as *Stars and Bins*, where stars are negative ones and bins are the dices with 6 on them:
- 21: Three negative ones and four dices: ${(4 - 1) + 3 \choose 3} = {6 \choose 3} = 20$
- 22: Two negative ones and four dices: ${(4 - 1) + 2 \choose 2} = {5 \choose 2} = 10$

Total number of 21 is more likely.

**(b)**
- 2-letter: $P = \frac{26}{26^2} = \frac{1}{26}$
- 3-letter: $P = \frac{26*26}{26^3}=\frac{1}{26}$

Both are equally likely.

---
### Question 30
$n=7$:
- **Permutations:** $L_{1}L_{2}L_{3}L_{4}L_{3}L_{2}L_{1}$

- **Desired combinations:** $26^4$
- **All combinations:** $26^7$
- **Probability:** $P = \frac{26^4}{26^7} = \frac{1}{26^3}$

$n=8$:
- **Permutations:** $L_{1}L_{2}L_{3}L_{4}L_{4}L_{3}L_{2}L_{1}$
- **Desired combinations:** $26^4$
- **All combinations:** $26^8$
- **Probability:** $P = \frac{26^4}{26^8} = \frac{1}{26^4}$

---
### Question 31
**Desired combinations:** ${n \choose k}{N - n \choose m - k}$

**All combinations:** ${N \choose m}$

**Probability:** $P = \frac{{n \choose k}{N - n \choose m - k}}{{N \choose m}}$

---
### Question 32
Since guessing red cards would implicitly guess the black cards as well, it's impossible to have 1 or 3 correct guesses (imagine guessing one red card correct and one incorrect, then the other two remaining black and red cards would be guessed as black and one of them would be a correct guess, the same goes for three).
- For $j=0$ both guesses must be wrong, resulting in one combination.
- For $j=2$ only one red card guess must be correct, leaving two red cards to choose for the correct answer and two black cards for the wrong answer, resulting in $4$ combinations.
- For $j=4$ both guesses must be correct, resulting in one combination.

The total combinations would be ${4 \choose 2} = 6$, therefore:
- $P(j=0) = \frac{1}{6}$
- $P(j=1) = 0$
- $P(j=2) = \frac{4}{6} = \frac{2}{3}$
- $P(j=3) = 0$
- $P(j=4) = \frac{1}{6}$

---
### Question 33
**(a)** Since no new information is added to the experiment by removing one ball, therefore the probability remains the same.

**(b)** $S = \{RG,GG\}$
$$
\begin{aligned}
P &= P(RG) + P(GG) \\ &= \left( \frac{r}{r + g} \right)\left( \frac{g}{r+g-1} \right) + \left( \frac{g}{r + g} \right)\left( \frac{g-1}{r+g-1} \right) = \\
&=\frac{rg + g(g-1)}{(r+g)(r+g-1)} \\
&=\frac{g(r+g-1)}{(r+g)(r+g-1)}\\
&=\frac{g}{r+g}\\
&=P(G)
\end{aligned}
$$

---
### Question 34
**(a)** $P = \frac{4({13 \choose 5} - 1)}{52 \choose 5}$

**(b)** $P = \frac{{13 \choose 2}{4 \choose 2}{4 \choose 2}{11 \choose 1}{4 \choose 1}}{52 \choose 5}$

---
### Question 35
**Desirable combinations:** $4{13 \choose 3}^3{13 \choose 4}$

**Probability:** $P = \frac{4{13 \choose 3}^3{13 \choose 4}}{52 \choose 13}$

---
### Question 36
**Desirable combinations:** ${30 \choose 5}{25 \choose 5}{20 \choose 5}{15 \choose 5}{10 \choose 5}{5 \choose 5}$

**All combinations:** $6^{30}$

**Probability:** $P = \frac{{30 \choose 5}{25 \choose 5}{20 \choose 5}{15 \choose 5}{10 \choose 5}{5 \choose 5}}{6^{30}}$

---
### Question 37
**(a)**

**Desirable combinations:** Divide the deck into three parts, before-ace, the-ace, after-ace.
- The first part can't have Jack, Queen, King or Ace, leaving with 36 cards to choose from, let $i$ be the number of cards chosen.
- The-ace has 4 possibilities.
- The after-ace has 15 (Jack, Queen, King and 3 Aces) plus $36 - i$ cards.

These result to $i!{36 \choose i}\times {4} \times (36 - i +15)!$ for each $i$, summing over all possible $i$ values gives:
$$
4\times\sum_{i=0}^{36} i!{36 \choose i}(51 - i)! = 4 \times 36! \times\sum_{i=0}^{36} \frac{(51 - i)!}{(36-i)!}
$$

**Probability:**
$$
\frac{4 \times 36! \times\sum_{i=0}^{36} \frac{(51 - i)!}{(36-i)!}}{52!} = \frac{1}{4}
$$

> [!note]
> 
> This can be solved by just looking at the subset of Jacks, Queens, Kings and Aces, since only the relative order of these cards matter, therefore the probability would be the same as the probability of Ace being the first card in this subset:
> $$
> P = \frac{{4 \choose 1}}{{16 \choose 1}} = \frac{1}{4}
> $$

**(b)**

**Desirable combinations:** Same as the *note*, the subset should be order as $\{KQJ\}\{Ace\}\{\text{remaining cards}\}$, therefore:
$$
3!{4 \choose 1}^3\times{4 \choose 1}\times 12! = 12! \times 3! \times 4^4
$$

**Probability:**
$$
\frac{12!\times 3! \times 4^4}{16!} = \frac{6 \times 256}{16 \times 15 \times 14 \times 13} = \frac{16}{455}
$$

---
### Question 38
**(a)** Let's assume Tyrion seats first, which gives $12$ combinations, then Cersei would have two desirable seats and others would be arranged in $10!$ different combinations:
$$
P = \frac{12 \times 2 \times 10!}{12!} = \frac{2}{11}
$$

**(b)** Let's assume Tytion is seated, then the sample space for Cersei's seat would be of size $11$, there are only $2$ desirable seats, giving:
$$
P = \frac{2}{11}
$$

---
### Question 39
selecting $j$ couples gives ${n \choose j}$ combinations, now the remaining $k-2j$ must be selected. For that $k-2j$ couples are selected from the $n-j$ remaining couples, and for each couple there would be $2$ possibilities, resulting in:
$$
P = \frac{{n \choose j}{n-j \choose k - 2j}2^{k-2j}}{2n \choose k}
$$

---
### Question 40
**(a)** For this sequence to be strictly increasing, all $k$ values must be distinct, there would be only one way to arrange them:
$$
P = \frac{{n \choose k}}{n^k}
$$

**(b)** This can be modeled as *Stars and Bars*, where bins are the numbers and stars are how many times they are chosen:
$$
P = \frac{{k + n - 1 \choose k}}{n^k}
$$

---
### Question 41
To have exactly one empty box, the balls must be distributed such that one box has $2$ balls, one box has $0$, and the remaining $n−2$ boxes have $1$ ball each; There are $2n$ ways to select the pair of balls that will share a box. We now have $n−1$ distinct "items" to place (the $1$ pair and the $n−2$ single balls). There are $n$ ways to choose a box for the pair, and $n−1$ ways to choose an empty box from the remaining. The remaining $n−2$ balls can be arranged in the remaining $n−2$ boxes in $(n−2)!$ ways.
$$
{n \choose 2}{n \choose 1}{n - 1 \choose 1}(n-2)! = {n \choose 2}n!
$$
Therefore for the sample sample space of size $n^n$:
$$
P = \frac{{n \choose 2}n!}{n^n}
$$

---
### Question 42
The probability is defined as the number of permutations of $26$ letters divided by the total sum of all possible permutations of length $i$, where $i$ ranges from $1$ to $26$:
$$
P = \frac{26!{26 \choose 26}}{\sum_{i=1}^{26} i!{26 \choose i}} = \frac{1}{\sum_{i=1}^{26} \frac{1}{(26-i)!}} = \frac{1}{\sum_{k=0}^{25} \frac{1}{k!}} \approx \frac{1}{e}
$$

## Axioms of probability
### Question 43
**(a)** $P(A)+P(B) - 1 \leq P(A \cap B)$: From the properties of probability we have:
$$
P(A \cup B) = P(A) + P(B) - P(A \cap B)
$$
Additionally we know $0\leq P \leq 1$, therefore $P(A \cup B) \leq 1$, thus:
$$
P(A) + P(B) - P(A \cap B) \leq 1 \implies P(A) + P(B) - 1 \leq P(A \cap B)
$$
As desired.

*Equality:* suppose $A \cup B = S$, then $P(A \cup B) = 1$, therefore, from the property:
$$
1 = P(A) + P(B) - P(A \cap B) \implies P(A \cap B) = P(A) + P(B) -1
$$

**(b)** $P(A \cap B) \leq P(A \cup B)$: From the properties of probability we have:
$$
\text{if } A ⊆ B, \text{ then } P (A) ≤ P (B)
$$
Since $(A \cap B) ⊆ (A \cup B)$, therefore:
$$
P(A\cap B) \leq P(A \cup B)
$$
As desired.

*Equality:* if $A = B$ then $A \cap B = A \cup B$, therefor:
$$
P(A \cap B) = P(A \cup B)
$$

**(c)** $P(A \cup B) \leq P(A) + P(B)$: From the properties of probability we have:
$$
P(A \cup B) = P(A) + P(B) - P(A \cap B) \implies P(A \cap B) = P(A) + P(B) - P(A \cup B)
$$
Additionally we know $0\leq P \leq 1$, therefore $0\leq P(A \cap B)$, thus: 
$$
0 \leq P(A) + P(B) - P(A \cup B) \implies P(A \cup B) \leq P(A) + P(B)
$$
As desired.

*Equality:* If $A \cap B =\phi$ from the axioms we have:
$$
P(A \cup B) = P(A) + P(B)
$$

---
### Question 44
Since $B - A$ and $A$ are disjoint sets, from the axiom of additivity we have:
$$
P((B-A) \cup A) = P(B-A) + P(A)
$$
Since $A ⊆ B$, therefore $(B - A) \cup A = B$, thus:
$$
P(B) = P(B - A) + P(A) \implies P(B - A) = P(B) - P(A)
$$
As desired.

---
### Question 45
Since $(A \Delta B) = (A \cup B) - (A \cap B)$, therefore $(A \Delta B) \cup (A \cap B) = (A \cup B)$.
Since $(A \Delta B)$ and $(A \cap B)$ are disjoint sets, from the axiom of additivity we have:
$$
P((A \Delta B) \cup (A \cap B)) = P(A \Delta B) + P(A \cap B)
$$
Thus from the first equation:
$$
 P(A \cup B) = P(A \Delta B) + P(A \cap B) \implies P(A \Delta B) = P(A \cup B) - P(A \cap B)
$$
From the properties we have $P(A \cup B) = P(A) + P(B) - P(A \cap B)$, therefore:
$$
P(A \Delta B) = P(A) + P(B) - 2P(A \cap B)
$$
As desired.

---
### Question 46
By definition we have:
- $C_{k}$: The event that $k,k+1,k+2,…,$ or $n$ events occur.
- $C_{k + 1}$: The event that $k+1,k+2,…,$ or $n$ events occur.
- ​$B_{k}$: The event that exactly $k$ events occur.

And since $B_{k}$ and $C_{k+1}$ are disjoint events we have:
$$
C_{k} = C_{k+1} \cup B_{k} \implies P(C_{k}) = P(C_{k+1} \cup B_{k}) = P(C_{k+1}) + P(B_{k})
$$
Which can be rewritten as:
$$
P(B_{k}) = P(C_{k}) - P(C_{k+1})
$$

---
### Question 47
**(a)** Probability of number 6 appearing after rolling a dice ($P(A) = \frac{1}{6}$) and probability of number 5 appearing after rolling a second dice ($P(B) = \frac{1}{6}$); $P(A \cap B)$ is the probability of the first one being 6 and second one being 5 ($[6,5]$) which is $\frac{1}{36}$, thus:
$$
P(A \cap B) = \frac{1}{36} = P(A)P(B) = \frac{1}{36}
$$

**(b)** Whenever the common area between $A_{1}$ and $B_{1}$ is equal to $A_{1}B_{1}$ then $A$ and $B$ would be independent, an example:
$$
\text{Common area of } A_{1} \text{ and } B_{1} = \frac{1}{4} \text{ and } A_{1} = B_{1} = \frac{1}{2} \implies P(A\cap B) = P(A)P(B)
$$
An example of $A$ and $B$ not being independent:
$$
\text{Common area of } A_{1} \text{ and } B_{1} = 0 \text{ and } A_{1} = B_{1} = \frac{1}{2} \implies P(A\cap B) \neq P(A)P(B)
$$

**(c)**
$$
P(A \cup B) = P(A) + P(B) - P(A \cap B)
$$
Since $A$ and $B$ are independent, therefore $P(A\cap B) = P(A)P(B)$, thus:
$$
\begin{aligned}
P(A \cup B) &= P(A) + P(B) - P(A)P(B) \\
&= P(A)[1 - P(B)] + P(B) \\
&= P(A)P(B^{c}) + (1 - P(B^{c}))\\
&= 1 + P(B^{c})(P(A) - 1) \\
&= 1 - P(A^{c})P(B^{c})
\end{aligned}
$$

---
### Question 48

Since for Arby $P_{Arby}(A \cup B) \neq P_{Arby}(A) + P_{Arby}(B)$, for any disjoint events $A$ and $B$, therefore we have two cases:
$$
\text{1. }P_{Arby}(A \cup B) > P_{Arby}(A) + P_{Arby}(B)
$$
In this case we can do these series of actions repetitively until Arby goes bankrupt:
- Sell $A$ and $B$ certificates for $1000(P_{Arby}(A) + P_{Arby}(B))$
- Buy $A \cup B$ certificate for $1000(P_{Arby}(A \cup B))$

Since $P_{Arby}(A \cup B) > P_{Arby}(A) + P_{Arby}(B)$, Arby loses money.

$$
\text{2. }P_{Arby}(A \cap B) > P_{Arby}(A) + P_{Arby}(B)
$$
In this case we can do these series of actions repetitively until Arby goes bankrupt:
- Buy $A \cup B$ certificate for $1000(P_{Arby}(A \cup B))$
- Sell $A$  and $B$ certificates for $1000(P_{Arby}(A) + P_{Arbu}(B))$

Since $P_{Arby}(A \cup B) < P_{Arby}(A) + P_{Arby}(B)$, Arby loses money.

## Inclusion-exclusion
### Question 49
Let $A_{i}$ be the event where the number $i$ never appears, therefore for events $A_{1}, A_{2},\dots,A_{n}$ we have:
$$
P\left( \bigcup_{i=1}^{6} A_{i} \right) = \sum_{i=1}^{6} (-1)^{i+1}{6 \choose i}\left( \frac{{6-i}}{6} \right)^n
$$
Thus:
$$
\begin{aligned}
P( \bigcup_{i=1}^{6} A_{i}) &= {6 \choose 1}( \frac{5}{6})^n - {6 \choose 2}( \frac{4}{6})^n + {6 \choose 3}(\frac{3}{6})^{n} - {6 \choose 4}(\frac{2}{6})^{n} + {6 \choose 5}(\frac{1}{6})^{n} \\
&=6( \frac{5}{6})^n - 15( \frac{4}{6})^n + 20( \frac{3}{6})^n - 15( \frac{2}{6})^n + 6( \frac{1}{6})^n
\end{aligned}
$$

---
### Question 50
Let $D_{i}$ be the events where a hand is void in the respective suit ($i$ being Hearts, Clubs, Spades or Diamonds), therefore:
$$
P\left( \bigcup_{i=1}^{4} D_{i} \right) = \sum_{i=1}^{4} (-1)^{i+1}{4 \choose i}\left( \frac{52 - 13i \choose 13}{52 \choose 13} \right)
$$
Thus:
$$
P\left( \bigcup_{i=1}^{4} D_{i} \right) = \frac{4{39 \choose 13}}{52 \choose 13} - \frac{6{26 \choose 13}}{52 \choose 13} + \frac{4{13 \choose 13}}{52 \choose 13} \approx 0.051 
$$

---
### Question 51
Let $A_{i}$ be the event that season $i$ occurs at least once each among birthdays, so the probability of all seasons occurring at least once each among birthdays would be:
$$
P(\bigcap_{i=1}^{4} A_{i})
$$
By using De-Morgan's law we have:
$$
P(\bigcap_{i}^4 A_{i}) = 1 - P(\bigcup_{i=1}^4 A_{i}^{c})
$$
Where $A_{i}^{c}$ is the event of season $i$ not occurring at all among birthdays, which:
$$
P( \text{intersection of i events} ) = (\frac{4 - i}{4})^7
$$
By using Inclusion-Exclusion we have:
$$
\begin{aligned}
1-P\left( \bigcup_{i=1}^4 A_{i}^{c} \right) &= 1 - \left[ \sum_{i=1}^4 (-1)^{i+1}{4 \choose i}({\frac{4-i}{4}})^7 \right] \\
&= 1 - 4\left( \frac{3}{4} \right)^7 + 6\left( \frac{2}{4} \right)^7 - 4\left( \frac{1}{4} \right)^7 \\
&\approx 0.513
\end{aligned}
$$

---
### Question 52
Let $A_{i}$ be the event that student $i$ doesn't sit in the same place, therefore the probability of no student sitting in the same place would be:
$$
P(\bigcap_{i=1}^{20} A_{i})
$$
By De-Morgan's law we have:
$$
P(\bigcap_{i=1}^{20} A_{i}) = 1 - P(\bigcup_{i=1}^{20} A_{i}^{c})
$$
Where $A_{i}^{c}$ is the event that student $i$ sits in the same place, which gives:
$$
P( \text{intersection of i events} )=\frac{20!}{(20−i)!}​
$$
By inclusion-exclusion we have:
$$
\begin{aligned}
1 - P\left( \bigcup_{i=1}^{20} A_{i}^{c} \right) &= 1 - \left[ \sum_{i=1}^{20} (-1)^{i+1}{20 \choose i}{\frac{(20 - i)!}{20!}} \right] \\
&= 1 - \left[ \sum_{i=1}^{20} (-1)^{i+1} \frac{1}{i!} \right] \\
&= 
1 - \left[ \frac{1}{1!} - \frac{1}{2!} + \frac{1}{3!} - \dots - \frac{1}{20!} \right] \\
&\approx \frac{1}{e} \approx 0.3679

\end{aligned}
$$

---
### Question 53
Let:
- S be the set of all passwords.
- $L$ be the set of passwords that have at least one lower case character.
- $U$ be the set of passwords that have at least one upper case character.
- $N$ be the set of passwords that have at least one number.

Therefore:
- $L^c$ is the set of passwords that have no lower case characters.
- $U^c$ be the set of passwords that have no upper case characters.
- $N^c$ be the set of passwords that have no numbers.

**(a)**
$$
|L| = |S - L^c|
$$
since $L^c ⊆ S$, therefore:
$$
|S - L^c| = |S| - |L^c| = 62^8 - 36^8
$$

**(b)**
$$
|L \cap U| = |S - (L^c \cup U^c)|
$$
since $L^c \cup U^c ⊆ S$, therefore:
$$
|S - (L^c \cup U^c)| = |S| - |(L^c \cup U^c)|
$$
By inclusion-exclusion:
$$
|S| - |(L^c \cup U^c)| = |S| -[|L^c] + |U^c| - |L^c \cap U^c|] = 62^8 - [36^8 + 36^8 - 10^8]
$$

**(c)**
$$
|L \cap U \cap N| = |S - (L^c \cup U^c \cup N^c)|
$$
since $L^c \cup U^c \cup N^c ⊆ S$, therefore:
$$
|S - (L^c \cup U^c \cup N^c)| = |S| - |(L^c \cup U^c \cup N^c)|
$$
By inclusion-exclusion:
$$
\begin{aligned}
&|S| - |(L^c \cup U^c \cup N^c)| \\
&\quad = |S| -[|L^c] + |U^c| + |N^c| - |L^c \cap U^c| - |L^c \cap N^c|] - |U^c \cap N^c| + |L^c \cap U^c \cap N^c|] \\
&\quad= 62^8 - [36^8 + 36^8 + 52^8 - 10^8 - 26^8 - 26^8 + 0]
\end{aligned}
$$

---
### Question 54
Let $A_{i}$ be the event that day $i$ has at least one class, therefore the probability of having classes everyday would be:
$$
P(\bigcap_{i=1}^5 A_{i})
$$
By De-Morgan's law we have:
$$
P(\bigcap_{i=1}^5 A_{i}) = 1 - P(\bigcup_{i=1}^5 A_{i}^{c})
$$
Where $A_{i}^{c}$ is the event that day $i$ has no class at all, which gives:
$$
P( \text{intersection of j events} )=\frac{{30 - 6j \choose 7}}{30 \choose 7}​
$$
By inclusion-exclusion we have:
$$
\begin{aligned}
1 - P\left( \bigcup_{i=1}^5 A_{i}^{c} \right) &= 1 - \left[ \sum_{i=1}^5 (-1)^{i+1}{5 \choose i}\frac{{30 - 6i \choose 7}}{30 \choose 7} \right] \\
&= 1 - \frac{1}{30 \choose 7}[5{24 \choose 7} - 10{18 \choose 7} + 10{12 \choose 7}]
\end{aligned}
$$

---
### Question 55
**(a)**
$$
P = \frac{{15 \choose 3}{22 \choose 2}}{37 \choose 5}
$$

**(b)**
Let:
- $A$ be the event that at least one senior is in the group.
- $B$ be the event that at least one junior is in the group.
- $C$ be the event that at least one sophomore is in the group.

Therefore, the probability that the committee has at least one representative from each of the senior, junior, and sophomore classes would be:
$$
P(A \cap B \cap C)
$$
By De-Morgan's law:
$$
P(A \cap B \cap C) = 1 - P(A^{c} \cup B^{c} \cup C^{c})
$$
Where $A^{c}$, $B^{c}$ and $C^{c}$ are the events that no senior, junior and sophomore is in the group respectively.
By inclusion-exclusion we have:
$$
\begin{aligned}
&1 - P(A^{c} \cup B^{c} \cup C^{c}) \\
&\quad = 1 - [P(A^{c}) +P(B^{c}) + P(C^{c}) - P(A^{c} \cap B^{c}) - P(A^{c} \cap C^{c}) - P(B^{c} \cap C^{c}) + P(A^{c} \cap B^{c} \cap C^{c})] \\
&\quad= 1 - \frac{1}{37 \choose 5}[{27 \choose 5} + {25 \choose 5} + {22 \choose 5} - {15 \choose 5} - {12 \choose 5} - {10 \choose 5}]
\end{aligned}
$$

## Mixed practice
### Question 56
**(a)**
$$
{10 \choose 5} > {10 \choose 6}
$$

**(b)**
$$
\frac{{10 \choose 5}{5 \choose 5}}{2!} < {10 \choose 6}{4 \choose 4}
$$

**(c)**
$$
\left( \frac{1}{365} \right)^3 < \frac{1}{365} \times \frac{2}{365} \times \frac{3}{365}
$$

**(d)** Martin can only win only if the games starts with $HH$, probability of $\frac{1}{4}$. If anywhere in the a game $T$ appears, he loses.
$$
\text{(probability that Martin wins)} = \frac{1}{4}< \frac{1}{2}
$$

---
### Question 57
Let $A$ be the event where no Caesar molecule is inhaled, therefore the probability that at least one molecule in the breath was shared with Caesar’s last breath would be:
$$
P(A^c) = 1 - P(A)
$$
Since our breath is sampled *with* replacement the probability would be:
$$
1 - P(A) = 1 - \left( \frac{10^{44} - 10^{22}}{10^{44}} \right)^{10^{22}} = 1 - \left( 1 + \frac{-1}{10^{22}} \right)^{10^{22}} \approx 1 - e^{-1} \approx 0.632
$$

---
### Question 58
**(a)** Let $A$ be the event that the third defective widget is in the $n \geq 9$ position; this is the same as the event that the inspector has to test at least 9 widgets to find the defective widgets.
The complement, $A^{c}$, is the event that all defective widgets are in $n \leq 8$ position, which gives:
$$
P(A) = 1 - P(A^c) = 1 - \frac{{8 \choose 3}}{12 \choose 3}
$$

**(b)** Same as (a):
$$
P(A) = 1 - P(A^c) = 1 - \frac{{10 \choose 3}}{12 \choose 3}
$$

---
### Question 59
**(a)** It can be modeled as *Stars and Bins*, with bins being kids and stars being the chocolates:
$$
{15 + 10 - 1 \choose 10 -1} = {24 \choose 9}
$$

**(b)** Again, same as the previous, but with 5 chocolates this time:
$$
{5 + 10 - 1 \choose 10 - 1} = {14 \choose 9}
$$

**(c)** Each chocolate has 15 choices:
$$
10^{15}
$$

**(d)** Let $S$ be the sample space and $A_{i}$ be the event where person $i$ receives at least one chocolate, therefore the event where every child gets one chocolate would be:
$$
\bigcap_{i=1}^{10} A_{i}
$$
since $A = S - A^{c}$, by De-Morgan's law we have:
$$
\bigcap_{i=1}^{10} A_{i} = S - \bigcup_{i=1}^{10} A_{i}^c
$$
where $A_{i}^c$ is the event that person $i$ gets no chocolate, which gives:
$$
| \text{intersection of j events} | = (10 - j) ^ {15}
$$
Since $\bigcup_{i=1}^{10} A_{i}^c ⊆ S$, therefore:
$$
|S - \bigcup_{i=1}^{10} A_{i}^c| = |S| - |\bigcup_{i=1}^{10} A_{i}^c|
$$
By inclusion-exclusion we have:
$$
\begin{aligned}
|S| - |\bigcup_{i=1}^{10} A_{i}^c| &= |S| - \left[ \sum_{i=1}^{10} (-1)^{i+1} {10 \choose i} (10 - i)^{15} \right] \\
&= 10^{15} - {10 \choose 1}9^{15} + {10 \choose 2}8^{15} - {10 \choose 3}7^{15} + \dots - {10 \choose 9}1^{15}
\end{aligned}
$$

---
### Question 60
**(a)**
$$
n^n
$$

**(b)** This can be modeled as *Stars and Bins*, where bins are the $a_{i}$'s and stars are the times a number was chosen.
$$
{n + n - 1 \choose n -1} = {2n - 1 \choose n - 1}
$$

**(c)** Let $n_{i}$ be the number of times $a_{i}$ is chosen, $\sum n_{i} = n$. imagine an unordered bootstrap example:
$$
(a_{1},a_{1},a_{1},a_{2},a_{2},a_{2},a_{3},a_{3},a_{3},a_{4},a_{4},a_{4},a_{5},a_{5},a_{5})
$$
where:
$$
n_{1} = n_{2} = n_{3} = n_{4} = n_{5} = 3
$$

Let $|S|$ be the number of all possibilities, this particular unordered bootstrap would have the probability of:
$$
P = \frac{1}{|S|} \times\frac{15!}{\Pi_{i=1}^{15} n_{i}!}
$$
Where $|S| = n^n$, now this can be further generalized to:
$$
P = \frac{1}{n^n} \times\frac{n!}{\Pi_{i=1}^{n} n_{i}!}
$$
This results to: 
$$
\frac{p_{1}}{p_{2}} = \frac{{\Pi_{i=1}^{n} n_{2_{i}}!}}{{\Pi_{i=1}^{n} n_{1_{i}}}!}
$$
*example:*
Let $b_{1}$ be the unordered bootstrap $(a_{1}, a_{1}, \dots ,a_{1})$ and $b_{2}$ be the unordered bootstrap $(a_{1}, a_{2}, \dots , a_{n})$, and let $p_{1}$ and $p_2$ be the probability of getting $b_{1}$ and $b_{2}$, therefore:
$$
\frac{p_{1}}{p_{2}} = \frac{{\Pi_{i=1}^{n} n_{2_{i}}!}}{{\Pi_{i=1}^{n} n_{1_{i}}}!} = \frac{1! \times 1! \times \dots \times 1!}{n! \times 1! \times 1! \times \dots \times 1!} = \frac{1}{n!}
$$

---
### Question 61
> [!note]
> 
> The probability is 1/2. This is because, for the last passenger, only two seats truly matter: their own assigned seat (Seat 100) and the first passenger's assigned seat (Seat 1). Any passenger who finds their seat taken will eventually choose one of these two seats with equal probability. If Seat 1 is chosen first, the "chain" of displaced passengers ends and the last passenger gets their seat; if Seat 100 is chosen first, they do not. Since the process is perfectly symmetric regarding these two seats, the chance of the last passenger finding their seat available is exactly 50%.

---
### Question 62
**(a)** 
$$
P = 1 - \sum_{1≤j_1 <j_2 <···<j_k ≤365} k! \times p_{j_{1}}p_{j_{2}} \dots p_{j_{k}} = 1 - k! \times e_{k}(p_{1},p_{2}, \dots p_{365})
$$

**(b)** Suppose there are only two people and there only two days to choose from, the probability of these two people sharing birthday would be:
$$
P = p_{1}^2 + p_{2}^2 = p_{1}^2 + (1 - p_{1})^2 = 2p_{1}^2 + 1 - 2p_{1}
$$
$P$ would have the minimum amount where $\frac{dP}{dp_{1}} = 0$, Thus:
$$
\frac{dP}{dp_{1}} = 4p_{1} - 2 = 0 \implies p_{1} = \frac{1}{2} \implies p_{2} = \frac{1}{2}
$$
Showing that the probability is minimized when the probability of days are uniform.

**(c)** This question is essentially asking if averaging two probabilities would decrease the probability of birthdays matching, a more general form for (b).
Verifying the equation:
$$
e_{k}(x_{1}, . . . , x_{n}) = x_{1}x_{2}e_{k-2}(x_{3}, . . . , x_{n}) + (x_{1} + x_{2})e_{k-1}(x_{3}, . . . , x_{n}) + e_{k}(x_{3}, . . . , x_{n})
$$
- Terms containing both $x_{1}$​ and $x_{2}$:​ $x_{1}x_{2}e_{k-2}(x_{3}, . . . , x_{n})$
- Terms containing exactly one of $x_{1}$ or $x_{2}$: $(x_{1} + x_{2})e_{k-1}(x_{3}, . . . , x_{n})$
- Terms containing neither $x_{1}$ nor $x_{2}$: $e_{k}(x_{3}, . . . , x_{n})$

from (a) we have:
$$
P (\text{match}|p) ≥ P (\text{match}|r) \implies 1 - k!e_{k}(p) \geq 1 -k!e_{k}(r) \implies e_{k}(r) \geq e_{k}(p)
$$
Thus, to show $P (\text{match}|p) ≥ P (\text{match}|r)$ we must show $e_{k}(r) \geq e_{k}(p)$.
Let $E_{k} = e_{k}(p_{3},\dots ,p_{365})$, by using the equation we just verified we have:
$$
r_{1}r_{2} \times E_{k-2} + (r_{1} + r_{2}) \times E_{k-1} \geq p_{1}p_{2} \times E_{k-2} + (p_{1} + p_{2}) \times E_{k-1}
$$
since $r_{1} = r_{2} = \frac{p_{1} + p_{2}}{2}$, therefore:
$$
\left( \frac{p_{1}+p_{2}}{2} \right)^2 \times E_{k-2} \geq p_{1}p_{2} \times E_{k-2} \implies \frac{p_{1} + p_{2}}{2} \geq \sqrt{ p_{1}p_{2} }
$$
Which is always correct for any $p_{1}, p_{2} \geq 0$ by *arithmetic mean-geometric mean inequality*, thus proving $P (\text{match}|p) ≥ P (\text{match}|r)$.

---