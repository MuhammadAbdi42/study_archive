## Definition and intuition
> [!definition]
>
> **Conditional Probability**
> If $A$ and $B$ are events with $P (B) > 0$, then the conditional probability of $A$ given $B$, denoted by $P (A|B)$, is defined as:
> $$
> P(A|B) = \frac{P(A \cap B)}{P(B)}
> $$
>
> > [!note]
> >
> > It is important to interpret the event appearing after the vertical conditioning bar as the evidence that we have observed or that is being conditioned on: $P (A|B)$ is the probability of $A$ given the evidence $B$, not the probability of some entity called $A|B$, there is no such event as $A|B$.
> 
> > [!example]
> >
> > For any event $A$, $P (A|A) = P (A ∩ A)/P (A) = 1$. Upon observing that $A$ has occurred, our updated probability for $A$ is $1$.
> 
> > [!note]
> >
> > When we calculate conditional probabilities, we are considering what *information* observing one event provides about another event, not whether one event *causes* another.

## Bayes’ rule and the law of total probability
> [!theorem]
>
> **Probability of the intersection of two events**
> For any events $A$ and $B$ with positive probabilities:
> $$
> P (A ∩ B) = P (B)P (A|B) = P (A)P (B|A)
> $$
>  Applying this theorem repeatedly, we can generalize to the intersection of $n$ events:
>
> > [!theorem]
> >
> > **Probability of the intersection of $n$ events**
> >
> > For any events $A_{1}, . . . , A_{n}$ with $P (A_{1}, A_{2}, . . . , A_{n-1}) > 0$:
> > $$
> > P (A_{1}, A_{2}, . . . , A_{n}) = P (A_{1})P (A_{2}|A_{1})P (A_{3}|A_{1}, A_{2}) · · · P (A_{n}|A_{1}, . . . , A_{n-1})
> > $$
> > The commas denote intersections, e.g., $P (A_3|A_1, A_2)$ is $P (A_3|A_1 ∩ A_2)$.
> > In fact, this is $n!$ theorems in one, since we can permute $A_1, . . . , A_n$ however we want without affecting the left-hand side.

> [!theorem]
>
> **Bayes' Rules**
>
> $$
> P(A|B) = \frac{P(B|A)P(A)}{P(B)}
> $$

> [!definition]
>
> **Odds**
>
> The *odds* of an event $A$ are:
> $$
> \text{odds}(A) = P (A)/P (A^c)
> $$
> We can also convert from odds back to probability:
> $$
> P(A) = \frac{\text{odds}(A)}{1+\text{odds}(A)}
> $$

> [!theorem]
>
> **Odds form of Bayes’ rule**
>
> For any events $A$ and $B$ with positive probabilities, the odds of $A$ after conditioning on $B$ are:
> $$
> \frac{P(A|B)}{P(A^c|B)} = \frac{P(B|A)}{P(B|A^c)} \frac{P(A)}{P(A^c)}
> $$
> In words, this says that the posterior odds ${P(A|B)}/{P(A_{c}|B)}$ are equal to the prior odds $P(A)/P(A_{c})$ times the factor $P(B|A)/P(B|A_{c})$, which is known in statistics as the *likelihood ratio*.

> [!theorem]
>
> **Law of total probability**
>
> Let $A_{1}, . . . , A_{n}$ be a partition of the sample space $S$ (i.e., the $A_{i}$ are disjoint events and their union is $S$), with $P (A_{i}) > 0$ for all $i$. Then:
> $$
> P(B) = \sum_{i=1}^{n} P(B|A_{i})P(A_{i})
> $$

## Conditional probabilities are probabilities
> [!property]
>
> When we condition on an event $E$, we update our beliefs to be consistent with this knowledge, effectively putting ourselves in a universe where we know that $E$ occurred. Within our new universe, however, the laws of probability operate just as before.
> - Conditional probabilities are between $0$ and $1$.
> - $P (S|E) = 1, P (∅|E) = 0$
> - If $A_{1}, A_{2}, \dots$ are disjoint, then $P\left( \bigcup_{j=1}^\infty A_{j}|E \right) = \sum_{j=1}^\infty P(A_{j}|E)$
> - $P(A^c|E) = 1 - P(A|E)$
> - Inclusion-exclusion: $P(A \cup B|E) = P(A|E) + P(B|E) - P(A \cap B|E)$

> [!note]
>
> When we write $P (A|E)$, it does not mean that $A|E$ is an event and we’re taking its probability; $A|E$ is not an event. Rather, $P (·|E)$ is a probability function which assigns probabilities in accordance with the knowledge that $E$ has occurred, and $P (·)$ is a different probability function which assigns probabilities without regard for whether $E$ has occurred or not. When we take an event $A$ and plug it into the $P (·)$ function, we’ll get a number, $P (A)$; when we plug it into the $P (·|E)$ function, we’ll get another number, $P (A|E)$, which incorporates the information (if any) provided by knowing that $E$ occurred.

> [!important] *Conditional probabilities are probabilities, and all probabilities are conditional.*

> [!theorem]
>
> **Bayes’ rule with extra conditioning**
>
> Provided that $P (A∩E) > 0$ and $P (B ∩ E) > 0$, we have:
> $$
> P(A|B,E) = \frac{P(B|A,E)P(A|E)}{P(B|E)}
> $$

> [!theorem]
>
> **LOTP with extra conditioning**
>
> Let $A_{1},\dots,A_{n}$ be a partition of $S$. Provided that $P (A_{i} ∩ E) > 0$ for all $i$, we have:
> $$
> P(B|E) = \sum_{i=1}^n P(B|A_{i}, E)P(A_{i}|E)
> $$

> [!strategy]
>
> We often want to condition on more than one piece of information, and we now have several ways of doing that. For example, here are some approaches for finding $P (A|B, C)$:
> 1. We can think of $B, C$ as the single event $B∩C$ and use the definition of conditional probability to get:
> $$
> P(A|B,C) = \frac{P(A,B,C)}{P(B,C)}
> $$
> This is a natural approach if it’s easiest to think about $B$ and $C$ in tandem. We can then try to evaluate the numerator and denominator. For example, we can use LOTP in both the numerator and the denominator, or we can write the numerator as $P (B, C|A)P (A)$ (which would give us a version of Bayes’ rule) and use LOTP to help with the denominator.
> 2. We can use Bayes’ rule with extra conditioning on $C$ to get:
> $$
> P(A|B,C) = \frac{P(B|A,C)P(A|C)}{P(B|C)}
> $$
> This is a natural approach if we want to think of everything in our problem as being conditioned on $C$.

## Independence of events
> [!definition]
>
> **Independence of two events**
>
> Events $A$ and $B$ are independent if:
> $$
> P(A\cap B) = P(A)P(B)
> $$
> If $P(A) > 0$ and $P(B) > 0$, then this is equivalent to
> $$
> P(A|B) = P(A)
> $$
> and also equivalent to $P(B|A) = P(B)$.
>
> > [!note]
> >
> > Note that independence is a *symmetric* relation: if $A$ is independent of $B$, then $B$ is independent of $A$.
> 
> > [!note]
> >
> > Independence is completely different from disjointness. If $A$ and $B$ are disjoint, then $P (A ∩ B) = 0$, so disjoint events can be independent only if $P (A) = 0$ or $P (B) = 0$. Knowing that $A$ occurs tells us that $B$ definitely did not occur, so $A$ clearly conveys information about $B$, meaning the two events are not independent (except if $A$ or $B$ already has zero probability).
> 
> > [!property]
> >
> > If $A$ and $B$ are independent, then $A$ and $B^c$ are independent, $A^c$ and $B$ are independent, and $A^c$ and $B^c$ are independent.

> [!definition]
>
> **Independence of three events**
>
> Events $A$, $B$, and $C$ are said to be *independent* if all of the following equations hold:
> $$
> P (A ∩ B) = P (A)P (B)
> $$
> $$
> P (A ∩ C) = P (A)P (C)
> $$
> $$
> P (B ∩ C) = P (B)P (C)
> $$
> $$
> P (A ∩ B ∩ C) = P (A)P (B)P (C)
> $$
>
> > [!note]
> >
> > If the first three conditions hold, we say that $A$, $B$, and $C$ are *pairwise independent*. Pairwise independence does *not* imply independence.
> 
> > [!hint]
> >
> > We can define independence of any number of events similarly. Intuitively, the idea is that knowing what happened with any particular subset of the events gives us no information about what happened with the events not in that subset.

> [!definition]
>
> **Independence of many events**
>
>  For $n$ events $A_{1}, A_{2}, . . . , A_{n}$ to be *independent*, we require any pair to satisfy $P (A_{i} ∩ A_{j}) = P (A_{i})P (A_{j})$ (for $i \neq j$), any triplet to satisfy $P (A_{i} ∩ A_{j} ∩ A_{k}) = P (A_{i})P (A_{j})P (A_{k})$ (for $i, j, k$ distinct), and similarly for all quadruplets, quintuplets, and so on. For infinitely many events, we say that they are independent if every finite subset of the events is independent.

> [!definition]
>
> **Conditional independence**
>
> Events $A$ and $B$ are said to be *conditionally independent* given $E$ if $P (A ∩ B|E) = P (A|E)P (B|E)$.
>
> > [!note]
> >
> > It is easy to make terrible blunders stemming from confusing independence and conditional independence. Two events can be conditionally independent given $E$, but not independent given $E^c$. Two events can be conditionally independent given $E$, but not independent. Two events can be independent, but not conditionally independent given $E$.
> > In particular, $P (A, B) = P (A)P (B)$ does *not* imply $P (A, B|E) = P (A|E)P (B|E)$; we can’t just insert “given $E$” everywhere, as we did in going from LOTP to LOTP with extra conditioning. This is because LOTP *always* holds (it is a consequence of the axioms of probability), whereas $P (A, B)$ may or may not equal $P (A)P (B)$, depending on what $A$ and $B$ are.

## Coherency of Bayes’ rule
> [!property]
>
> An important property of Bayes’ rule is that it is *coherent*: if we receive multiple pieces of information and wish to update our probabilities to incorporate all the information, it does not matter whether we update sequentially, taking each piece of evidence into account one at a time, or simultaneously, using all the evidence at once.

## Conditioning as a problem-solving tool
> [!strategy]
>
> **Condition on what you wish you knew**
>
> when we encounter a problem that would be made easier if only we knew whether $E$ happened or not, we can condition on $E$ and then on $E^c$, consider these possibilities separately, then combine them using LOTP.

> [!strategy]
>
> **Condition on the first step**
>
> In problems with a recursive structure, it can often be useful to condition on the first step of the experiment. which we call *first-step analysis*.

## Pitfalls and paradoxes
> [!warning]
>
> - confusion of the prior probability $P (A)$ with the posterior probability $P (A|B)$
> - **Prosecutor’s fallacy:** confusing P $(A|B)$ with P $(B|A)$
> - **The defense attorney’s fallacy:** failing to condition on all the evidence
> - **Simpson’s paradox:** The importance of thinking carefully about whether to aggregate data:
> $$
> P (A|B, C) < P (A|B^c, C),
> $$
> $$
> P (A|B, C^c) < P (A|B^c, C^c), \text{but}
> $$
> $$
> P (A|B) > P (A|B^c).
> $$

> [!exercise] [[Solutions 2 - Conditional Probability|Solutions to chapter exercises]]

> [!strategy] [[Chapter 1 - Probability and Counting|Previous Chapter]] | [[Chapter 3 - Random Variables and Their Distributions|Next Chapter]] 
