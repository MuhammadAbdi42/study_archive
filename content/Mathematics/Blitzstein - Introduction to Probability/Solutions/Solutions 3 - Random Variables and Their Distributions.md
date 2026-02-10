> [!strategy] [[Blitzstein - Introduction to Probability|Entry]] | [[Chapter 3 - Random Variables and Their Distributions|Notes]]

## PMFs and CDFs
### Question 1
$$
P(X = k) = p_{X}(k) = P(\text{person k matches}|\text{first k-1 different})P(\text{first k-1 different})
$$
$$
p_{X}(k) = \frac{k-1}{365} \times \frac{365 \times 364 \times\dots \times (365 -k + 2)}{365^{k-1}} = \frac{(k-1) 365!}{365^k (365-k+1)!}
$$
For $k = 2,3,4, \dots, 366$ and $p_{X}(k) = 0$ for $k < 2$ or $k > 366$.

---
### Question 2
**(a)**

$$
\begin{aligned}
P(X = k) &= p_{X}(k) \\
&= P(\text{trial k success}|\text{first k-1 fail})P(\text{first k-1 fail}) \\
&\quad \quad + P(\text{trial k fail}|\text{first k-1 success})P(\text{first k-1 success}) \\
&= P(\text{trial k success})P(\text{first k-1 failure}) \\
&= \frac{1}{2} \times (\frac{1}{2})^{k-1} \\
&= (\frac{1}{2})^k
\end{aligned}
$$
For $k = 1,2,3, \dots$

**(b)**

$$
\begin{aligned}
&P(X = k) \\
&\quad = p_{X}(k) \\
&\quad= P(\text{trial k success}|\text{first k-1 fail})P(\text{first k-1 fail}) \\
&\quad \quad + P(\text{trial k fail}|\text{first k-1 success})P(\text{first k-1 success}) \\
&\quad= \frac{1}{2} \times \left( \frac{1}{2} \right)^{k-1} + \frac{1}{2} \times \left( \frac{1}{2} \right)^{k-1} \\
&\quad= 2 \times \left( \frac{1}{2} \right)^k = \left( \frac{1}{2} \right)^{k-1}
\end{aligned}
$$
For $k \geq 2$ and $p_{X}(k) = 0$ for $k < 2$

---
### Question 3
$$
\begin{aligned}
F_{Y}(y) &= P(Y \leq y) \\
&= P(\mu + \sigma X \leq y) \\
&= P\left( X \leq \frac{y - \mu}{\sigma} \right) \\
&= F_{X}\left( \frac{y-\mu}{\sigma} \right)
\end{aligned}
$$

---
### Question 4
- It's an increasing function
- It's right-continuous:
$$
F(a) = \lim_{ x \to a^+ } F(x)
$$
- It converges to $0$ and $1$ at in the limits:
$$
\lim_{ x \to -\infty } F(x) = 0 \text{ and } \lim_{ x \to \infty } F(x) = 1
$$
The PMF would be:
$$
p_{X}(k) = \frac{1}{n}
$$
For $k=1,2,3,\dots, n$, and otherwise $p_{X}(k) = 0$, since it increases CDF at every integer between $1$ and $n$ by $\frac{1}{n}$.

---
### Question 5
**(a)** 

- Checking for being non-negative:
$$
\text{for } n = 0,1,2,\dots, p(n) = \left( \frac{1}{2} \right)^{n+1} > 0
$$
- Checking for the sum:
$$
\sum p(n) = \sum_{n=0}^{\infty} \left( \frac{1}{2} \right)^{n+1} = \frac{1}{2} \sum_{n=0}^{\infty} \left( \frac{1}{2} \right)^n = \frac{1}{2} \times \frac{1}{1 - \frac{1}{2}} = 1
$$
Since it satisfies both conditions, it's a PMF.

**(b)**

$$
\begin{aligned}
F_{X}(k) &= P(X \leq k) \\
&= \sum_{n=0}^{\lfloor k \rfloor } \left( \frac{1}{2} \right)^{(n+1)} \\
&= \frac{1}{2}\sum_{n=0}^{\lfloor k \rfloor } \left( \frac{1}{2} \right)^{n} \\
&= \frac{1}{2} \times \frac{1-\left( \frac{1}{2} \right)^{\lfloor k \rfloor } + 1}{1 - \frac{1}{2}} \\
&= 1 - \left( \frac{1}{2} \right)^{\lfloor k \rfloor + 1}
\end{aligned}
$$
For $k\geq 0$

---
### Question 6
- Checking for being non-negative:
$$
P(D = j) = \log_{10}\left( \frac{j+1}{j} \right) > 0 \text{ since } \frac{j+1}{j} > 1 \text{ for } 1\leq j\leq 9
$$
- Checking for the sum:
$$
\begin{aligned}
\sum_{j=1}^9 P(D=j) &= \sum_{j=1}^9 \log_{10}\left( \frac{j+1}{j} \right) \\
&= \sum_{j=1}^9 \log_{10}(j+1) - \log_{10}(j) \\
&= \log_{10}(10) - \log_{10}(9) + \log_{10}(9) - \dots -\log_{10}(2) + \log_{10}(2) - \log_{10}(1) \\
&= 1
\end{aligned}
$$

---
### Question 7
$$
P(X = k) = P(\text{lose level k}|\text{won first k-1 levels})P(\text{won first k-1 levels})
$$
$$
P(X = k) = (1-p_{k}) \prod_{i=1}^{k-1} p_{i}
$$
for $1 \leq j \leq 6$

---
### Question 8
$$
P(X = k) = P(\text{k is the most valuable}|\text{the other 4 are less valuable})P(\text{the other 4 are less valuable})
$$
$$
p_{X(k)} = \frac{k-1 \choose 4}{100 \choose 5}
$$
For $k = 5,6,7,\dots,100$, and $P(X=k) = 0$ otherwise.

---
### Question 9
**(a)**

1. Increasing:
$$
\frac{dF}{dx} = p \frac{dF_{1}}{dx} + (1-p) \frac{dF_{2}}{dx}
$$
Since $\frac{dF_{1}}{dx} \geq 0$ and $\frac{dF_{2}}{dx} \geq0$ (they are valid CDFs), thus,
$$
p \frac{dF_{1}}{dx} \geq 0 \text{ and } (1-p) \frac{dF_{2}}{dx} \geq0
$$
Since $p > 0$ and $(1-p) >0$, therefore,
$$
\frac{dF}{dx} = p \frac{dF_{1}}{dx} + (1-p) \frac{dF_{2}}{dx} \geq 0
$$

2. Right-Continuous:
$$
\lim_{ x \to a^+ } F(x) = \lim_{ x \to a^+ }(pF_{1}(x) + (1-p)F_{2}(x)) = p \lim_{ x \to a^+ } F_{1}(x) + (1-p) \lim_{ x \to a^+ } F_{2}(x)
$$
Since $F_{1}$ and $F_{2}$ are both valid CDFs,
$$
\lim_{ x \to a^+ } F(x) = p F_{1}(a) + (1-p)F_{2}(a) = F(a)
$$
3. Convergence to $0$ and $1$ in the limits:
Computing the limit at $-\infty$
$$
\lim_{ x \to -\infty } F(x) = \lim_{ x \to -\infty }(pF_{1}(x) + (1-p)F_{2}(x)) = p \lim_{ x \to -\infty } F_{1}(x) + (1-p) \lim_{ x \to -\infty } F_{2}(x) 
$$
Since $F_{1}$ and $F_{2}$ are both valid CDFs,
$$
\lim_{ x \to -\infty } F(x) = p \times 0 + (1-p) \times 0 = 0
$$
Computing the limit at $\infty$,
$$
\lim_{ x \to +\infty } F(x) = \lim_{ x \to +\infty }(pF_{1}(x) + (1-p)F_{2}(x)) = p \lim_{ x \to +\infty } F_{1}(x) + (1-p) \lim_{ x \to +\infty } F_{2}(x)
$$
Since $F_{1}$ and $F_{2}$ are both valid CDFs,
$$
\lim_{ x \to +\infty } F(x) = p \times 1 + (1-p) \times 1 = 1
$$
Thus, $F$ is a valid CDF.

**(b)** Let $X$ be the r.v., Therefore,
$$
F_{X}(x) = P(X \leq x) = P(X \leq x|\text{Heads})P(\text{Heads}) + P(X \leq x|\text{Tails})P(\text{Tails})
$$
Since $P(X\leq x|\text{Heads}) = F_{1}(x)$ and $P(X\leq x|\text{Tails}) = F_{2}(x)$, therefore,
$$
F_{X}(x) = pF_{1}(x) + (1-p)F_{2}(x)
$$
Which is equivalent to $F(x)$,
$$
F_{X}(x) = F(x)
$$

---
### Question 10
**(a)** Assume $p_{X}(n)$ is such PMF,
$$
p_{X}(n) = P(X=n) = k \frac{1}{n}
$$
Therefore, it must,
1. Be non-negative:
$$
p_{X}(n) \geq 0 \implies k \frac{1}{n} \geq 0
$$
And since $\frac{1}{n} > 0$, thus,
$$
k \geq 0
$$
2. Sum to $1$:
$$
\sum_{n=1}^\infty p_{X}(n) = k \sum_{n=1}^\infty \frac{1}{n}
$$
Which equals to,
- $\infty$, for $k >0$
- $-\infty$ for $k < 0$
- $0$ for $k = 0$

Therefore there is no such discrete distribution.

**(b)** Assume $p_{X}(n)$ is such PMF,
$$
p_{X}(n) = P(X=n) = k \frac{1}{n^2}
$$
Therefore, it must,
1. Be non-negative:
$$
p_{X}(n) \geq 0 \implies k \frac{1}{n^2} \geq 0
$$
And since $\frac{1}{n^2} > 0$, thus,
$$
k \geq 0
$$
2. Sum to $1$:
$$
\sum_{n=1}^\infty p_{X}(n) = k \sum_{n=1}^\infty \frac{1}{n^2} = k \frac{\pi^2}{6}
$$
Therefore, for it to equal to $1$,
$$
k \frac{\pi^2}{6} = 1 \implies k = \frac{6}{\pi ^2}
$$
Which is consistent with the above $k \geq 0$ condition.

Therefore there is only one such PMF:
$$
p_{X}(n) = \frac{6}{n^2 \pi^2}
$$

---
### Question 11
$$
F_{X}(x) = P(X \leq x) = P(X<x \cup X=x) = P(X<x) + P(X=x) - P(X<x \cap X=x)
$$
Since $P(X<x \cap X=x) = 0$ (It's an impossible event), therefore,
$$
F_{X}(x) = P(X<x) + P(X = x) = G_{X}(x) + P(X= x)
$$
Since it's a discrete distribution, $P(X = x) = p_{X}(x)$, thus,
$$
F_{X}(x) = G_{X}(x) + p_{X}(x)
$$
Therefore,
$$
G_{X}(x) = F_{X}(x) - p_{X}(x)
$$

---
### Question 12
**(a)**

Let:
- $p_{X}(x) = 1$ For $x = 2$ and $p_{X}(x) =0$ otherwise.
- $p_{Y}(x) = 1$ For $x = 1$ and $p_{Y}(x) =0$ otherwise.

Thus,
$$
F_{X}(x) = \begin{cases} 0 & x < 2 \\ 1 & 2 \leq x \end{cases} \text{ and } F_{Y}(x) = \begin{cases} 0 & x < 1 \\ 1 & 1 \leq x \end{cases}
$$
Comparing them,
$$
\begin{cases}
x < 1 & F_{X}(x) = F_{Y}(x) = 0 \\
1 \leq x < 2 & F_{X}(x) = 0 < 1 = F_{Y}(x) \\
2 \leq x & F_{X}(x) = F_{Y}(x) = 1
\end{cases}
$$

![[Pasted image 20260209135234.png]]

Diagram of PMFs, red for $p_{Y}(x)$ and blue for $p_{X}(x)$.

![[Pasted image 20260209135456.png]]

Diagram of CDFs, red for $F_{Y}(x)$ and blue for $F_{X}(x)$.

**(b)**

$$
P(X = x) \leq P(Y = x) \implies \sum P(X= x) \leq \sum P(Y=x)
$$
Since $\lim_{ x \to \infty } F_{X}(x) = \lim_{ x \to \infty } F_{Y}(x) = 1$ therefore,
$$
\sum P(X=x) = \sum P(Y =x) = 1
$$
Thus,
$$
P(X = x) \leq P(Y = x) \implies 1 \leq 1
$$
But, since $P(X = x_{0}) < P(Y = x_{0})$ for some $x_{0}$ (strict inequality), we would need:
$$
\sum P(X = x) < \sum P(Y = x)
$$
Which gives $1 < 1$, a contradiction, therefore it's impossible to have such r.v.s.

---
### Question 13
By LOTP,
- $P(X = a) = \sum_{z} P(X=a|Z =z)P(Z= z)$
- $P(Y = a) = \sum_{z} P(Y =a | Z =z)P(Z =z)$

Since we know $P(X = a|Z = z) = P(Y = a |Z = z)$, for all $a$ and $z$, therefore,
$$
\sum_{z} P(X =a | Z =z)P(Z =z) = \sum_{z} P(Y =a | Z =z)P(Z =z)
$$
Using the equations above,
$$
P(X = a) = P(Y = a)
$$

---
### Question 14
**(a)**
- $P(X \geq 1) = 1 - P(X = 0) = 1 - e^{- \lambda}$
- $P(X \geq {2}) = 1 - P(X = 0) - P(X = 1) = 1 - e^{-\lambda}(1 + \lambda)$

**(b)**
$$
p_{X}(k) = P(X = k|X\geq 1) = \frac{P(X = k \cap X\geq 1)}{P(X\geq 1)} = \frac{e^{-\lambda}\lambda^k/k!}{1-e^{-\lambda}} \text{ for } k \geq 1
$$

---
### Question 15
$$
F_{X}(x) = \begin{cases}
x < 1 & 0 \\
1\leq x \leq n &\frac{\lfloor x \rfloor }{n} \\
x > n & 1
\end{cases}
$$

---
### Question 16
$$
P(X = x|X \in B) = \frac{P(X=x \cap X \in B)}{P(X \in B)} = \frac{\frac{1}{|C|}}{\frac{|B|}{|C|}} = \frac{1}{|B|} \implies (X|X \in B) \sim\text{Dunif}(B)
$$
