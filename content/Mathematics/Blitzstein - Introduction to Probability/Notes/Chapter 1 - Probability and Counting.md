> [!strategy] [[Blitzstein - Introduction to Probability|Entry]] | [[Solutions 1 - Probability and Counting|Solutions]]

## Sample spaces and Pebble World
> [!definition] 
>
> **The sample space $S$:** of an experiment is the set of all possible outcomes of the experiment.
>
> **An event $A$:** is a subset of the sample space $S$, and we say that $A$ occurred if the actual outcome is in $A$.
>
> > [!notation]
> >
> > Let $S$ be a sample space and $s_a$ be the actual outcome of the experiment:

| English                                   |                       Sets                        |
| :---------------------------------------- | :-----------------------------------------------: |
| *Events and occurrences*                  |                                                   |
| sample space                              |                        $S$                        |
| $s$ is a possible outcome                 |                      $s ∈ S$                      |
| $A$ is an event                           |                      $A ⊆ S$                      |
| $A$ occurred                              |                     $s_a ∈ A$                     |
| something must happen                     |                     $s_a ∈ S$                     |
| *New events from old events*              |                                                   |
| $A$ or $B$ (inclusive)                    |                      $A ∪ B$                      |
| $A$ and $B$                               |                      $A ∩ B$                      |
| not $A$                                   |                       $A^c$                       |
| $A$ or $B$, but not both                  |              $(A ∩ B_c) ∪ (A_c ∩ B)$              |
| at least one of $A_1, . . . , A_n$        |                $A_1 ∪ · · · ∪ A_n$                |
| all of $A_1, . . . , A_n$                 |                $A_1 ∩ · · · ∩ A_n$                |
| *Relationships between events*            |                                                   |
| $A$ implies $B$                           |                      $A ⊆ B$                      |
| $A$ and $B$ are mutually exclusive        |                    $A ∩ B = ∅$                    |
| $A_1, . . . , A_n$ are a partition of $S$ | $A_1 ∪ · · · ∪ A_n = S, A_i ∩ A_j = ∅$, for $i≠j$ |

## Naive definition of probability
> [!definition]
>
> Let $A$ be an event for an experiment with a finite sample space $S$. The naive probability of $A$ is:
> $$
> p_{naive}=\frac{\left|A\right|}{\left|B\right|}=\frac{\text{Number of outcomes favorable to A}}{\text{Total number of outcomes in S}}
> $$
> 
> > [!note]
> >
> > The naive definition is very restrictive in that it requires $S$ to be finite, with equal mass for each pebble.
> > There are several important types of problems where the naive definition is applicable:
> > - when there is symmetry in the problem that makes outcomes equally likely.
> > - when the outcomes are equally likely by design.
> > - when the naive definition serves as a useful *null model*. In this setting, we assume that the naive definition applies just to see what predictions it would yield, and then we can compare observed data with predicted values to assess whether the hypothesis of equally likely outcomes is tenable.

> [!strategy]
> 
> A good strategy when trying to find the probability of an event is to start by thinking about whether it will be easier to find the probability of the event or the probability of its complement.

## How to count
> [!theorem]
> 
> **Multiplication rule**
>
> Consider $a$ compound experiment consisting of two sub-experiments, Experiment $A$ and Experiment $B$. Suppose that Experiment $A$ has $a$ possible outcomes, and for each of those outcomes Experiment $B$ has $b$ possible outcomes. Then the compound experiment has $ab$ possible outcomes.
>
> > [!note]
> >
> > It is often easier to think about the experiments as being in chronological order, but there is no requirement in the multiplication rule that Experiment $A$ has to be performed before Experiment $B$.

> [!theorem]
> 
> **Sampling with replacement**
>
> Consider $n$ objects and making $k$ choices from them, one at a time with replacement (i.e., choosing a certain object does not preclude it from being chosen again). Then there are $n^k$ possible outcomes (where order matters, in the sense that, e.g., choosing object 3 and then object 7 is counted as a different outcome than choosing object 7 and then object 3.)

> [!theorem]
> 
> **Sampling without replacement**
>
> Consider $n$ objects and making $k$ choices from them, one at a time without replacement (i.e., choosing a certain object precludes it from being chosen again). Then there are $n(n − 1) · · · (n − k + 1)$ possible outcomes for $1 ≤ k ≤ n$, and 0 possibilities for $k > n$ (where order matters). By convention, $n(n − 1) · · · (n − k + 1) = n$ for $k = 1$.
>
> > [!note]
> >
> > It is important to think of the objects or people in the population as named or labeled. For example, if there are n balls in a jar, we can imagine that they have labels from 1 to n, even if the balls look the same to the human eye.

> [!strategy]
> 
> **Adjusting for overcounting**
>
> In many counting problems, it is not easy to directly count each possibility once and only once. If, however, we are able to count each possibility exactly $c$ times for some $c$, then we can adjust by dividing by $c$. For example, if we have exactly double-counted each possibility, we can divide by 2 to get the correct count. We call this adjusting for overcounting.
>
> > [!note]
> >
> > A *binomial coefficient* counts the number of subsets of a certain size for a set, such as the number of ways to choose a committee of size k from a set of n people. Sets and subsets are by definition unordered, e.g., $\left\lbrace3,1,4\right\rbrace = \left\lbrace4, 1, 3\right\rbrace$, so we are counting the number of ways to choose k objects out of n, without replacement and without distinguishing between the different orders in which they could be chosen.

> [!definition]
>
> **Binomial coefficient**
>
> For any nonnegative integers $k$ and $n$,  the *binomial coefficient* ${n \choose k}$ , read as “n choose k”, is the number of subsets of size k for a set of size n.
>
> > [!theorem]
> >
> > **Binomial coefficient formula**
> >
> > For $k ≤ n$, we have:
> > $$
> > {n\choose k}=\frac{n\left(n-1\right)\ldots\left(n-k+1\right)}{k!}=\frac{n!}{\left(n-k\right)!k!}
> > $$
> > For $k>n$ we have ${n\choose k} = 0$
> 
> > [!theorem]
> >
> > **Binomial theorem**
> >
> > The *binomial theorem* states that:
> > $$
> > (x+y)^n = \sum_{k=0}^n {n\choose k} x^k y^{n-k}
> > $$

## Story Proofs
> [!definition]
>
> A *story proof* is a proof by interpretation. For counting problems, this often means counting the same thing in two different ways, rather than doing tedious algebra. A story proof often avoids messy calculations and goes further than an algebraic proof toward *explaining* why the result is true. The word “story” has several meanings, some more mathematical than others, but a story proof (in the sense in which we’re using the term) is a fully valid mathematical proof.
>
> > [!example]
> >
> > **Choosing the complement**
> >
> > For any nonnegative integers $n$ and $k$ with $k ≤ n$, we have:
> > $$
> > {n \choose k} = {n \choose {n-k}}
> > $$
> >
> > *Story proof*: Consider choosing a committee of size k in a group of n people. We  know that there are (n  k  ) possibilities. But another way to choose the committee is to specify which n − k people are not on the committee; specifying who is on the committee determines who is not on the committee, and vice versa. So the two sides are equal, as they are two ways of counting the same thing.

## Non-naive definition of probability
> [!definition]
>
> **General definition of probability**
>
> A probability space consists of a sample space $S$ and a probability function $P$ which takes an event $A ⊆ S$ as input and returns $P (A)$, a real number between $0$ and $1$, as output. The function $P$ must satisfy the following axioms:
> 1. $P (∅) = 0, P (S) = 1.$
> 2. If $A1, A2, . . .$ are disjoint events, then:
> $$
> P(\bigcup_{j=1}^{\infty}A_{j}) = \sum_{j=1}^{\infty}P(A_{j})
> $$
> (Saying that these events are disjoint means that they are mutually exclusive: $A_{i} ∩ A_{j} = ∅$ for $i\ne j$.)
> 
> > [!note]
> >
> > *The frequentist view of probability* is that it represents a long-run frequency over a large number of repetitions of an experiment: if we say a coin has probability 1/2 of Heads, that means the coin would land Heads 50% of the time if we tossed it over and over and over.
> > *The Bayesian view of probability* is that it represents a degree of belief about the event in question, so we can assign probabilities to hypotheses like “candidate A will win the election” or “the defendant is guilty” even if it isn’t possible to repeat the same election or the same crime over and over again.
> 
> > [!property]
> >
> > **Properties of probability**
> >
> > Probability has the following properties, for any events A and B.
> > 1. $P (A_{c}) = 1 − P (A)$. 
> > 2. if $A ⊆ B$, then $P (A) ≤ P (B)$.
> > 3. $P (A ∪ B) = P (A) + P (B) − P (A ∩ B)$.
> 
> > [!theorem]
> >
> > **Inclusion-exclusion**
> >
> > For any events $A1, . . . , An$,
> > $$
> >P\left( \bigcup_{i=1}^{n} A_{i} \right) = \sum_{i}P(A_{i}) - \sum_{i<j}P(A_{i}\cap A_{j}) + \sum_{i<j<k} P(A_{i}\cap A_{j}\cap A_{k}) - \dots +(-1)^{n+1}P(A_{1}\cap \dots \cap A_{n}))
> > $$

> [!exercise] [[Solutions 1 - Probability and Counting|Solutions to chapter exercises]] 

> [!strategy] [[Chapter 2 - Conditional Probability|Next Chapter]] 
