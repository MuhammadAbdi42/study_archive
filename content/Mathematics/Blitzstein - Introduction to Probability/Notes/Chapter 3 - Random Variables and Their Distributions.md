> [!strategy] [[Blitzstein - Introduction to Probability|Entry]] | [[Solutions 3 - Random Variables and Their Distributions|Solutions]]

## Random Variables
> [!definition]
>
> **Random Variable**
>
> Given an experiment with sample space $S$, a random variable (r.v.) is a function from the sample space $S$ to the real numbers $R$. It is common, but not required, to denote random variables by capital letters.
> Thus, a random variable $X$ assigns a numerical value $X(s)$ to each possible outcome s of the experiment. The randomness comes from the fact that we have a random experiment (with probabilities described by the probability function $P$); the mapping itself is deterministic.
>
> > [!example]
> >
> > Consider an experiment where we toss a fair coin twice. The sample space consists of four possible outcomes: $S = \{HH, HT, T H, T T \}$. Here are some random variables on this space (for practice, you can think up some of your own). Each r.v. is a numerical summary of some aspect of the experiment.
> > Let $X$ be the number of Heads. This is a random variable with possible values $0$, $1$, and $2$. Viewed as a function, $X$ assigns the value $2$ to the outcome $HH$, $1$ to the outcomes $HT$ and $TH$, and $0$ to the outcome $TT$. That is,
> > $$
> > X(HH) = 2, X(HT ) = X(T H) = 1, X(T T ) = 0.
> > $$

## Distributions and Probability Mass Functions
> [!definition]
>
> **Discrete Random Variable**
>
> A random variable $X$ is said to be *discrete* if there is a finite list of values $a_{1}, a_{2}, . . . , a_{n}$ or an infinite list of values $a_{1}, a_{2}, \dots$ such that $P (X = a_{j} \text{ for some j}) = 1$. If $X$ is a discrete r.v., then the finite or countably infinite set of values $x$ such that $P (X = x) > 0$ is called the *support* of $X$.

> [!definition]
>
> **Probability Mass Function**
>
> The *probability mass function* (PMF) of a discrete r.v. $X$ is the function $p_X$ given by $p_X (x) = P (X = x)$. Note that this is positive if $x$ is in the support of $X$, and $0$ otherwise.
>
> > [!note]
> >
> > In writing $P (X = x)$, we are using $X = x$ to denote an event, consisting of all outcomes $s$ to which $X$ assigns the number $x$. This event is also written as ${X = x}$; formally, ${X = x}$ is defined as ${s ∈ S : X(s) = x}$, but writing ${X = x}$ is shorter and more intuitive.

> [!theorem]
>
> **Valid PMFs**
>
> Let $X$ be a discrete r.v. with support $x_{1}, x_{2}, . . .$ (assume these values are distinct and, for notational simplicity, that the support is countably infinite; the analogous results hold if the support is finite). The PMF $p_X$ of $X$ must satisfy the following two criteria:
> - Nonnegative: $p_X (x) > 0$ if $x = x_{j}$ for some $j$, and $p_X (x) = 0$ otherwise;
> - Sums to $1$: $∑_{j=1}^\infty p_X (x_{j}) = 1$.

## Bernoulli and Binomial
> [!definition]
>
> **Bernoulli Distribution**
>
> An r.v. $X$ is said to have the *Bernoulli distribution* with parameter $p$ if $P (X = 1) = p$ and $P (X = 0) = 1 − p$, where $0 < p < 1$. We write this as $X ∼ Bern(p)$. The symbol $∼$ is read “is distributed as”.
>
> > [!story]
> >
> > **Bernoulli Trial**
> > An experiment that can result in either a “success” or a “failure” (but not both) is called a Bernoulli trial. A Bernoulli random variable can be thought of as the indicator of success in a Bernoulli trial: it equals $1$ if success occurs and $0$ if failure occurs in the trial.

> [!definition]
>
> **Indicator Random Variable**
>
> The indicator random variable of an event $A$ is the r.v. which equals $1$ if $A$ occurs and $0$ otherwise. We will denote the indicator r.v. of $A$ by $I_A$ or $I(A)$. Note that $I_A ∼ Bern(p)$ with $p = P (A)$.

> [!story]
>
> **Binomial Distribution**
>
> Suppose that $n$ *independent* Bernoulli trials are performed, each with the same success probability $p$. Let $X$ be the number of successes. The distribution of $X$ is called the Binomial distribution with parameters $n$ and $p$. We write $X ∼ Bin(n, p)$ to mean that $X$ has the Binomial distribution with parameters $n$ and $p$, where $n$ is a positive integer and $0 < p < 1$.
>
> > [!note]
> >
> > it is clear that $Bern(p)$ is the same distribution as $Bin(1, p)$: the Bernoulli is a special case of the Binomial.
> 
> > [!theorem]
> >
> > **Binomial PMF**
> >
> > If $X ∼ Bin(n, p)$, then the PMF of $X$ is
> > $$
> > P(X = k) = {n \choose k}p^k(1-p)^{n - k}
> > $$
> > for $k = 0, 1, . . . , n$ (and $P (X = k) = 0$ otherwise).
> 
> > [!theorem]
> >
> > Let $X ∼ Bin(n, p)$, and $q = 1 − p$ (we often use $q$ to denote the failure probability of a Bernoulli trial). Then $n − X ∼ Bin(n, q)$.
> 
> > [!corollary]
> >
> > Let $X ∼ Bin(n, p)$ with $p = 1/2$ and $n$ even. Then the distribution of $X$ is symmetric about $n/2$, in the sense that $P (X = n/2 + j) = P (X = n/2 − j)$ for all nonnegative integers $j$.

## Hypergeometric
> [!story]
>
> **Hypergeometric Distribution**
>
> Consider an urn with $w$ white balls and $b$ black balls. We draw $n$ balls out of the urn at random without replacement, such that all $w+b \choose n$ samples are equally likely. Let $X$ be the number of white balls in the sample. Then $X$ is said to have the Hypergeometric distribution with parameters $w$, $b$, and $n$; we denote this by $X ∼ HGeom(w, b, n)$.
>
> > [!theorem]
> >
> > **Hypergeometric PMF**
> >
> > If $X ∼ HGeom(w, b, n)$, then the PMF of $X$ is
> > $$
> > P(X = k) = \frac{{w \choose k}{b \choose n - k}}{w + b \choose n}
> > $$
> > for integers $k$ satisfying $0 ≤ k ≤ w$ and $0 ≤ n − k ≤ b$, and $P (X = k) = 0$ otherwise.
> 
> > [!theorem]
> >
> > The $HGeom(w, b, n)$ and $HGeom(n, w + b − n, w)$ distributions are identical. That is, if $X ∼ HGeom(w, b, n)$ and $Y ∼ HGeom(n, w + b − n, w)$, then $X$ and $Y$ have the same distribution.

## Discrete Uniform
> [!story]
>
> **Discrete Uniform Distribution**
>
> Let $C$ be a finite, nonempty set of numbers. Choose one of these numbers uniformly at random (i.e., all values in $C$ are equally likely). Call the chosen number $X$. Then $X$ is said to have the Discrete Uniform distribution with parameter $C$; we denote this by $X ∼ DUnif(C)$.
>
> > [!theorem]
> >
> > The PMF of $X ∼ DUnif(C)$ is
> > $$
> > P(X = x) = \frac{1}{|C|}
> > $$
> > for $x ∈ C$ (and $0$ otherwise), since a PMF must sum to $1$. As with questions based on the naive definition of probability, questions based on a Discrete Uniform distribution reduce to counting problems. Specifically, for $X ∼ DUnif(C)$ and any $A ⊆ C$, we have
> > $$
> > P(X \in A) = \frac{|A|}{|C|}
> > $$

## Cumulative Distribution Functions
> [!definition]
>
> The cumulative distribution function (CDF) of an r.v. $X$ is the function $F_{X}$ given by $F_X (x) = P (X ≤ x)$. When there is no risk of ambiguity, we sometimes drop the subscript and just write $F$ (or some other letter) for a CDF.
>
> > [!theorem]
> >
> > **Valid CDFs**
> >
> > Any CDF $F$ has the following properties.
> > - Increasing: If $x_{1} ≤ x_{2}$, then $F (x_{1}) ≤ F (x_{2})$.
> > - Right-continuous: The CDF is continuous except possibly for having some jumps. Wherever there is a jump, the CDF is continuous from the right. That is, for any $a$, we have
> > $$
> > F (a) = \lim_{ x \to a^+ } F(x)
> > $$
> > - Convergence to $0$ and $1$ in the limits:
> > $$
> > \lim_{ x \to -\infty } F(x) = 0 \text{ and } \lim_{ x \to \infty } F(x) = 1
> > $$

## Functions of Random Variables
> [!definition]
>
> **Function of an r.v.**
>
> For an experiment with sample space $S$, an r.v. $X$, and a function $g : R → R$, $g(X)$ is the r.v. that maps s to $g(X(s))$ for all $s ∈ S$.
>
> > [!theorem]
> >
> > **PMF of $g(X)$**
> >
> > Let X be a discrete r.v. and $g : R → R$. Then the support of $g(X)$ is the set of all $y$ such that $g(x) = y$ for at least one $x$ in the support of $X$, and the PMF of $g(X)$ is
> > $$
> > P(g(X) = y) = \sum_{x:g(x) = y} P(X = x)
> > $$
> > for all $y$ in the support of $g(X)$

> [!definition]
>
> **Functions of two r.v.s**
>
> Given an experiment with sample space $S$, if $X$ and $Y$ are r.v.s that map $s ∈ S$ to $X(s)$ and $Y(s)$ respectively, then $g(X, Y )$ is the r.v. that maps $s$ to $g(X(s), Y (s))$.

## Independence of r.v.s
> [!definition]
>
> **Independence of two r.v.s**
>
> Random variables $X$ and $Y$ are said to be independent if
> $$
> P (X ≤ x, Y ≤ y) = P (X ≤ x)P (Y ≤ y)
> $$
> for all $x, y ∈ R$
> In the discrete case, this is equivalent to the condition
> $$
> P (X = x, Y = y) = P (X = x)P (Y = y),
> $$
> for all $x$, $y$ with $x$ in the support of $X$ and $y$ in the support of $Y$.
>
> > [!definition]
> >
> > **Independence of many r.v.s**
> >
> > Random variables $X_{1},X_{2},\dots,X_{n}$ are independent if
> > $$
> > P (X_{1} ≤ x_{1}, . . . , X_{n} ≤ x_{n}) = P (X_{1} ≤ x_{1}) . . . P (X_{n} ≤ x_{n}),
> > $$
> > for all $x_{1}, . . . , x_{n} ∈ R$. For infinitely many r.v.s, we say that they are independent if every finite subset of the r.v.s is independent.

> [!theorem]
>
> **Functions of independent r.v.s**
>
> If $X$ and $Y$ are independent r.v.s, then any function of $X$ is independent of any function of $Y$.

> [!definition]
>
> **i.i.d.**
>
> We will often work with random variables that are independent and have the same distribution. We call such r.v.s independent and identically distributed, or i.i.d. for short.
>
> > [!theorem]
> >
> > If $X ∼ Bin(n, p)$, viewed as the number of successes in $n$ independent Bernoulli trials with success probability $p$, then we can write $X = X_{1} + \dots +X_{n}$ where the $X_{i}$ are i.i.d. $Bern(p)$.
> 
> > [!theorem]
> >
> > If $X ∼ Bin(n, p)$, $Y ∼ Bin(m, p)$, and $X$ is independent of $Y$ , then $X + Y ∼ Bin(n + m, p)$.

> [!definition]
>
> **Conditional independence of r.v.s**
>
> Random variables $X$ and $Y$ are conditionally independent given an r.v. $Z$ if for all $x, y ∈ R$ and all $z$ in the support of $Z$,
> $$
> P (X ≤ x, Y ≤ y|Z = z) = P (X ≤ x|Z = z)P (Y ≤ y|Z = z).
> $$
> For discrete r.v.s, an equivalent definition is to require
> $$
> P (X = x, Y = y|Z = z) = P (X = x|Z = z)P (Y = y|Z = z).
> $$

> [!definition]
>
> **Conditional PMF**
>
> For any discrete r.v.s $X$ and $Z$, the function $P (X = x|Z = z)$, when considered as a function of $x$ for fixed $z$, is called the conditional PMF of $X$ given $Z = z$.

## Connections between Binomial and Hypergeometric
> [!theorem]
>
> If $X ∼ Bin(n, p)$, $Y ∼ Bin(m, p)$, and $X$ is independent of $Y$ , then the conditional distribution of $X$ given $X + Y = r$ is $HGeom(n, m, r)$.

> [!theorem]
>
> If $X ∼ HGeom(w, b, n)$ and $N = w + b → ∞$ such that $p = w/(w + b)$ remains fixed, then the PMF of $X$ converges to the $Bin(n, p)$ PMF.

> [!exercise] [[Solutions 3 - Random Variables and Their Distributions|Solutions to chapter exercises]] 

> [!strategy] [[Chapter 2 - Conditional Probability|Previous Chapter]] | [[Chapter 4 - Expectation|Next Chapter]] 
