## Conditioning on evidence
### Question 1
Let:
- $A$ be the event that an email is a spam.
- $B$ be the event that an email contains "free money."

Therefore:
$$
\begin{aligned}
P(A|B) &= \frac{P(B|A)P(A)}{P(B)} \\
&= \frac{P(B|A)P(A)}{P(B|A)P(A) + P(B|A^c)P(A^c)} \\
&= \frac{0.1 \times 0.8}{0.1 \times 0.8 + 0.01 \times 0.2} \\
&\approx 97.6\%
\end{aligned}
$$

---
### Question 2
Let:
- $A$ be the event that both children are boys.
- $B$ be the event that the twins are identical.

Therefore:
$$
\begin{aligned}
P(B|A) &= \frac{P(A|B)P(B)}{P(A)} \\
&= \frac{P(A|B)P(B)}{P(A|B)P(B) + P(A|B^c)P(B^c)} \\
&= \frac{0.5 \times \frac{1}{3}}{0.5 \times \frac{1}{3} + \frac{1}{2} \times \frac{1}{2} \times \frac{2}{3}} \\
&= \frac{1}{2}
\end{aligned}
$$

---
### Question 3
Let:
- $A$ be the event that a man smokes.
- $B$ be the event that a man gets lung cancer.

Therefore:
$$
P(B|A) = 23P(B|A^c)
$$
Thus:
$$
P(A|B) = \frac{P(B|A)P(A)}{P(B)} = \frac{P(B|A)P(A)}{P(B|A)P(A) + P(B|A^c)P(A^c)}
$$
From the equation above we have:
$$
\begin{aligned}
\implies P(A|B) &= \frac{23P(B|A^c)P(A)}{23P(B|A^c)P(A) + P(B|A^c)P(A^c)} \\
&= \frac{23P(A)}{23P(A) + P(A^c)} \\
&= \frac{23P(A)}{1 + 22P(A)} \\
&= \frac{23(0.216)}{22(0.216) + 1} \\
&\approx 86.4\%
\end{aligned}
$$

---
### Question 4
**(a)** 
$$
\begin{aligned}
P(K|R) &= \frac{P(R|K)P(K)}{P(R)} \\
&= \frac{P(R|K)P(K)}{P(R|K)P(K) + P(R|K^c)P(K^c)} \\
&= \frac{1 \times p}{1 \times p + \frac{1}{n}(1-p)} \\
&= \frac{np}{(n - 1)p + 1}
\end{aligned}
$$

**(b)**
$$
P(K|R) = \frac{n}{(n-1)p + 1} p
$$
since $0\leq p\leq 1$, therefore $\frac{n}{(n-1)p + 1} \geq 1$. Since knowing the answer guarantees a correct response, while guessing only succeeds with probability $1/n$, observing that Fred answered correctly increases the likelihood that he knew the answer. Therefore, $P(K∣R)≥p$. Equality holds only in the degenerate cases where Fred never knows the answer ($p = 0$), always knows the answer ($p = 1$), or when there is only one choice ($n = 1$).

---
### Question 5
Let
- $A$ be the event that first card is the Ace of Spades.
- $B$ be the event that second card is the 8 of Clubs.
- $C$ be the event that third card is an Ace.

Therefore:
$$
P(C|A,B) = \frac{P(C \cap A \cap B)}{P(A \cap B)} = \frac{\frac{1}{52} \times \frac{1}{51} \times \frac{3}{50}}{\frac{1}{52} \times \frac{1}{51}} = 0.06
$$
This can also be concluded by symmetry as all 50 remaining cards have the same probability to be the third card drawn:
$$
P(C) = \frac{3}{50} = 0.06
$$

---
### Question 6
Let
- $A$ be the event that the coin lands Heads on all 7 flips.
- $B$ be the event that the coin is double-headed.

Therefore:
$$
\begin{aligned}
P(B|A) &= \frac{P(A|B)P(B)}{P(A)} \\
&= \frac{P(A|B)P(B)}{P(A|B)P(B) + P(A|B^c)P(B^c)} \\
&=\frac{1 \times \frac{1}{100}}{1 \times \frac{1}{100} + {\frac{1}{2}}^7 \times \frac{99}{100}} \\
&\approx 56.4\%
\end{aligned}
$$

---
### Question 7
Let
- $A$ be the event that the coin lands Heads 7 on all 7 flips.
- $B$ be the event that the chosen coin is double headed.

Therefore:
**(a)**
$$
\begin{aligned}
P(D|A) &= \frac{P(A|D)P(D)}{P(A)} \\
&= \frac{P(A|D)P(D)}{P(A|D)P(D) + P(A|D^c)P(D^c)} \\
&= \frac{\frac{1}{2} [P(A|D,B)P(B|D) + P(A|D,B^c)P(B^c|D)] }{\frac{1}{2} [P(A|D,B)P(B|D) + P(A|D,B^c)P(B^c|D)] + {\frac{1}{2}}^7 \times \frac{1}{2}} \\
&= \frac{1 \times \frac{1}{100} + {\frac{1}{2}}^7 \times \frac{99}{100}}{[1 \times \frac{1}{100} + {\frac{1}{2}}^7 \times \frac{99}{100}] + {\frac{1}{2}}^7} \\
&= \frac{128 + 99}{128 + 99 + 100} \\
&\approx 69.5\%
\end{aligned}
$$

**(b)**
$$
\begin{aligned}
P(B|A) &= \frac{P(A|B)P(B)}{P(A)} \\
&= \frac{1 \times P(B)}{P(A|B)P(B) + P(A|B^c)P(B^c)} \\
&= \frac{P(B)}{1 \times P(B) + {\frac{1}{2}}^7 (1-P(B))} \\
&= \frac{P(B)}{P(B)\left[ 1 - \frac{1}{128} \right] + \frac{1}{128}} \\
&= \frac{P(B|D)P(D) + P(B|D^c)P(D^c)}{\frac{127}{128}[P(B|D)P(D) + P(B|D^c)P(D^c)] + \frac{1}{128}} \\
&= \frac{\frac{1}{100} \times \frac{1}{2} + 0}{\frac{127}{128}\left[ \frac{1}{100} \times \frac{1}{2} + 0 \right] + \frac{1}{128}} \\
&= \frac{128}{127 + 200} \\
&\approx 39.1\%
\end{aligned}
$$

---
### Question 8
Let
- $A$, $B$, $C$ be the events that the screen is manufactured by company A, B, C respectively.
- $D$ be the event that the screen is defective.

Therefore:
$$
\begin{aligned}
P(A|D) &= \frac{P(D|A)P(A)}{P(D)} \\
&= \frac{P(D|A)P(A)}{P(D|A)P(A) + P(D|B)P(B) + P(D|C)P(C)} \\
&= \frac{0.01 \times 0.5}{0.01 \times 0.5 + 0.02 \times 0.3 + 0.03 \times 0.2} \\
&= \frac{5}{17} \\
&\approx 29.4\%
\end{aligned}
$$

---
### Question 9
**(a)** Since both $A_{1}$ and $A_{2}$ imply $B$, they are subsets of $B$, thus:
$$
P(A_{1} \cap B) = P(A_{1}) \text{ and } P(A_{2} \cap B) = P(A_{2})
$$
Since $P(A_{1}) = P(A_{2})$, therefore:
$$
P(A_{1} \cap B) = P(A_{2} \cap B) \implies \frac{P(A_{1} \cap B)}{P(B)} = \frac{P(A_{2} \cap B)}{P(B)} \implies P(A_{1}|B) = P(A_{2}|B)
$$
As desired.

**(b)** Let $B$ be “a die is rolled,” and $A_{1}$​ and $A_{2}$​ be “the die shows 1” and “the die shows 2,” respectively. Both $A_{1}$​ and $A_{2}$​​ imply $B$, and both have the same prior probability $1/6$. Therefore, after observing $B$, the posterior probabilities remain equal.

---
### Question 10
Since $A_{1}$ and $A_{3}$ are conditionally independent given $A_{2}$, therefore:
$$
\begin{aligned}
&P(A_{1} \cap A_{3}|A_{2}) = P(A_{1}|A_{2})P(A_{3}|A_{2}), \text{ and}\\
&P(A_{1} \cap A_{3}|A_{2}^c) = P(A_{1}|A_{2}^c)P(A_{3}|A_{2}^c)
\end{aligned}
$$

**(a)** By definition of conditional probability and LOTP,
$$
P(A_{3}|A_{1}) = \frac{P(A_{3} \cap A_{1})}{P(A_{1})} = \frac{P(A_{3} \cap A_{1}|A_{2})P(A_{2}) + P(A_{3} \cap A_{1}|A_{2}^c)P(A_{2}^c)}{P(A_{1})}
$$

From the equations above,
$$
P(A_{3}|A_{1}) = \frac{P(A_{1}|A_{2})P(A_{3}|A_{2})P(A_{2}) + P(A_{1}|A_{2}^c)P(A_{3}|A_{2}^c)P(A_{2}^c)}{P(A_{1})}
$$
By Bayes' law: $P(A_{1}|A_{2}) = \frac{P(A_{2}|A_{1})P(A_{1})}{P(A_{2})}$ and $P(A_{1}|A_{2}^c) = \frac{P(A_{2}^c|A_{1})P(A_{1})}{P(A_{2}^c)}$. So,
$$
P(A_{3}|A_{1}) = \frac{P(A_{1})P(A_{2}|A_{1})P(A_{3}|A_{2}) + P(A_{1})P(A_{2}^c|A_{1})P(A_{3}|A_{2}^c)}{P(A_{1})}
$$
Which simplifies to,
$$
P(A_{3}|A_{1}) = P(A_{3}|A_{2})P(A_{2}|A_{1}) + P(A_{2}^c|A_{1})P(A_{3}|A_{2}^c)
$$
Since $P(A_{j+1}|A_{j}) = 0.8$ and $P(A_{j+1}|A_{j}^c) = 0.3$,
$$
P(A_{3}|A_{1}) = 0.8 \times 0.8 + 0.2 \times 0.3 = 0.7
$$
For $P(A_{3}|A_{1}^c)$ by the equations above,
$$
P(A_{3}|A_{1}^c) = P(A_{3}|A_{2})P(A_{2}|A_{1}^c) + P(A_{2}^c|A_{1}^c)P(A_{3}|A_{2}^c)
$$
Since $P(A_{j+1}|A_{j}) = 0.8$ and $P(A_{j+1}|A_{j}^c) = 0.3$,
$$
P(A_{3}|A_{1}^c) = 0.8 \times 0.3 + 0.7 \times 0.3 = 0.45
$$

**(b)** By LOTP,
$$
P(A_{3}) = P(A_{3}|A_{2})P(A_{2}) + P(A_{3}|A_{2}^c)P(A_{2})
$$
Since $P(A_{j+1}|A_{j}) = 0.8$ and $P(A_{j+1}|A_{j}^c) = 0.3$,
$$
P(A_{3}) = 0.8P(A_{2}) + 0.3 (1 - P(A_{2})) = 0.3 + 0.5P(A_{2})
$$
Again by LOTP,
$$
P(A_{3}) = 0.3 + 0.5(P(A_{2}|A_{1})P(A_{1}) + P(A_{2}|A_{1}^c)P(A_{1}^c))
$$
Again since $P(A_{j+1}|A_{j}) = 0.8$, $P(A_{j+1}|A_{j}^c) = 0.3$, and $P(A_{1}) = 0.75$,
$$
P(A_{3}) = 0.3 + 0.5(0.8 \times 0.75 + 0.3 \times 0.25) = 0.6375
$$

---
### Question 11
Since $60\%$ of of the respondents say they voted for $A$, therefore:
$$
P(A|W) = 0.6
$$
By Bayes' rule,
$$
P(A|W) = \frac{P(W|A)P(A)}{P(W)} = 0.6 \implies P(A) = 0.6 \frac{P(W)}{P(W|A)}
$$
By LOTP,
$$
P(A) = 0.6 \frac{P(W|A)P(A) + P(W|A^c)P(A^c)}{P(W|A)}
$$
Since $P(A) = 1 - P(A^c)$,
$$
P(A) = 0.6 \frac{P(W|A)P(A) + P(W|A^c)(1-P(A))}{P(W|A)}
$$
Since $P(W|A) = 0.7$ and $P(W|A^c) = 0.3$,
$$
P(A) = 0.6\frac{0.7 \times P(A) + 0.3 (1- P(A))}{0.7} \implies 0.7P(A) = 0.6 \times(0.4P(A) + 0.3)
$$
Solving for $P(A)$,
$$
\implies 46 P(A) = 18 \implies P(A) = \frac{9}{23}
$$

---
### Question 12
**(a)** Let 
- $R_{1}$ be the event that $1$ was received.
- $S_{1}$ be the event that $1$ was sent.

Therefore, by Bayes' law and LOTP:
$$
P(S_{1}|R_{1}) = \frac{P(R_{1}|S_{1})P(S_{1})}{P(R_{1})} = \frac{P(R_{1}|S_{1})P(S_{1})}{P(R_{1}|S_{1})P(S_{1}) + P(R_{1}|S_{1}^c)P(S_{1}^c)}
$$
Since $P(S_{1}) = P(S_{1}^c) = 1/2$, $P(R_{1}|S_{1}) = 0.9$ and $P(R_{1}|S_{1}^c) = 0.05$, thus:
$$
P(S_{1}|R_{1}) = \frac{0.9}{0.9 + 0.05} = \frac{18}{19} \approx 94.7\%
$$

**(b)** Let
- $R_{110}$ be the event that $110$ was received.
- $S_{111}$ be the event that $111$ was sent.

Therefore by the equations above:
$$
P(S_{111}|R_{110}) = \frac{P(R_{110}|S_{111})P(S_{111})}{P(R_{110}|S_{111})P(S_{111}) + P(R_{110}|S_{111}^c)P(S_{111}^c)}
$$
Since $P(S_{111}) = P(S_{111}^c) = 1/2$, thus:
$$
P(S_{111}|R_{110}) = \frac{P(R_{110}|S_{111})}{P(R_{110}|S_{111}) + P(R_{110}|S_{111}^c)}
$$
Since
$$
\begin{aligned}
&P(R_{110}|S_{111}) = P(R_{1}|S_{1})P(R_{1}|S_{1})P(R_{1}^c|S_{1}) = 0.9 \times 0.9 \times 0.1 = 0.081 \text{, and}\\
&P(R_{110}|S_{111}^c) = P(R_{1}|S_{1}^c)P(R_{1}|S_{1}^c)P(R_{1}^c|S_{1}^c) = 0.05 \times 0.05 \times 0.95 = 0.002375
\end{aligned}
$$
Thus:
$$
P(S_{111}|R_{110}) = \frac{0.081}{0.081 + 0.002375} \approx 97.2\%
$$

---
### Question 13
Let
- $S$ be the event that the test was successful, meaning it was positive for diseased patients and it was negative for healthy patients.
- $T$ be the event that the test was positive.
- $D$ be the event that the patient is diseased.

Therefore:
$$
P(S) = P(T \cap D) + P(T^c \cap D^c)
$$
By definition of conditional probability,
$$
P(S) = P(T|D)P(D) + P(T^c|D^c)P(D^c)
$$

**(a)** From definitions above for company B:
$$
P(S) = 1 \times 0.99 + 0 \times 0.01 = 0.99
$$
Therefore their success rate is $99\%$, As for company A:
$$
P(S) = 0.95 \times 0.99 + 0.95 \times 0.01 = 0.95
$$
which is a lower success rate than company B.

**(b)** Company B's test gives no information about the diseased population, in contrast Company A can identify diseased patients ($P(T|D) = 0.95$).

**(c)** For beating Company B with equal sensitivity and specificity:
$$
0.99 < 0.99 x + 0.01x \implies 0.99 < x
$$
Therefore the specificity and sensitivity both must be greater than $0.99$.

For beating Company B with sensitivity $1$:
$$
0.99 < 0.99 x + 0.01 \implies 0.989899 < x
$$
Therefore the specificity must be greater than $0.989899$

For beating Company B with specificity $1$:
$$
0.99 < 0.99 + 0.01x \implies 0<x
$$
Therefore sensitivity must just be greater than $0$.

---
### Question 14
**(a)** $P(A|B)$ should be bigger as the event $B$, his house being burglarized, would make Peter to install the alarm as soon as possible to prevent further burglaries.

**(b)** $P(B|A^c)$ should be bigger as a burglar would choose houses with less protection.

**(c)** By definition of conditional probability,
$$
P(A|B) > P(A|B^c) \implies \frac{P(A \cap B)}{P(B)} > \frac{P(A \cap B^c)}{P(B^c)}
$$
Since $P (A ∩ B) = P (B)P (A|B)$, and by rearranging,
$$
P(B|A)P(A)P(B^c) > P(B^c|A)P(A)P(B^c)
$$
Since $P(A) > 0$, divide both side by $P(A)$
$$
P(B|A)P(B^c) > P(B^c|A)P(B)
$$
Since $P(A^c) = 1 - P(A)$ and $P(A|B) = 1 - P(A^c|B)$, therefore,
$$
P(B|A)(1 - P(B)) > (1 - P(B|A))P(B)
$$
By rearranging,
$$
P(B|A) > P(B)
$$
By LOTP,
$$
P(B|A) > P(B|A)P(A) + P(B|A^c)P(A^c)
$$
Rearranging,
$$
P(B|A)P(A^c) > P(B|A^c)P(A^c)
$$
Since $P(A^c) > 0$, divide both sides by $P(A^c)$,
$$
P(B|A) > P(B|A^c)
$$
As desired.

**(d)** The opinion was popular because people reasoned using separate causal narratives for each conditional probability, failing to recognize that Bayes’ rule mathematically links them and makes the two judgments logically incompatible.

---
### Question 15
By definition of conditional probability:
- $P(A \cap B |A) = \frac{P(A \cap B)}{P(A)}$
- $P(A \cap B |B) = \frac{P(A \cap B)}{P(B)}$
- $P(A \cap B |A \cup B) = \frac{P(A \cap B)}{P(A \cup B)}$

Since the question is essentially about comparing these three values, and they all share the positive numerator, the answer can be found by comparing $\frac{1}{P(A)}$, $\frac{1}{P(B)}$ and $\frac{1}{P(A \cup B)}$. Since $P(A) < P(B) < P(A \cup B)$ therefore:
$$
\frac{1}{P(A \cup B)} < \frac{1}{P(B)} < \frac{1}{P(A)} \implies P(A \cap B | A \cup B) < P(A \cap B|B) < P(A \cap B|A)
$$

---
### Question 16
$$
P(A|B) \leq P(A)
$$
By Bayes' rule,
$$
\frac{P(B|A)P(A)}{P(B)} \leq P(A)
$$
Since $P(A),P(B) > 0$, divide both sides by $P(A)$ and multiply by $P(B)$,
$$
P(B|A) \leq P(B)
$$
Since $P(B|A) = 1 - P(B^c|A)$,
$$
1 - P(B) \leq P(B^c|A)
$$
By Bayes' rule,
$$
1 - P(B) \leq \frac{P(A|B^c)P(B^c)}{P(A)}
$$
Since $P(B^c) = 1 - P(B)$,
$$
P(A)P(B^c) \leq P(A|B^c)P(B^c)
$$
Both sides can be divided by $P(B^c)$, since $P(B^c) > 0$.
$$
P(A) \leq P(A|B^c)
$$
As desired.

If learning that $B$ occurred lowers the probability of $A$, then learning that $B$ did not occur must raise the probability of $A$, since probabilities must re-balance across $B$ and $B^c$.

---
### Question 17
**(a)**
Since $P(A|B) = 1 - P(A^c|B)$,
$$
P(B|A) = 1 \implies 1- P(B^c|A) = 1 \implies P(B^c|A) = 0
$$
By Bayes' law,
$$
\frac{P(A|B^c)P(B^c)}{P(A)} = 0 \implies P(A|B^c)P(B^c) = 0
$$
Since $1 > P(B) > 0 \implies 1 > P(B^c) > 0$, thus,
$$
P(A|B^c) = 0
$$
Since $P(A|B) = 1 - P(A^c|B)$,
$$
P(A^c|B^c) = 1
$$
As desired.

**(b)**
Let $A$ and $B$ be independent events, thus:
$$
P(B|A) = P(B) \text{ and } P(A^c|B^c) = P(A^c)
$$
Now let $P(B) = P(A) = 0.99 \approx 1$, therefore
$$
P(B|A) = 0.99 \approx 1 \text{ but } P(A^c|B^c) = P(A^c) = 0.01 \approx 0
$$

---
### Question 18
Since $P(A) = 1 \implies P(A^c) = 0$,
$$
P(B) = P(B|A)P(A) + P(B|A^c)P(A^c) = P(B|A)
$$
Thus,
$$
P(A|B) = \frac{P(B|A)P(A)}{P(B)} = \frac{P(B|A)}{P(B)} = \frac{P(B)}{P(B)} = 1
$$

---
### Question 19
Holmes’s maxim can be interpreted using conditional probability and the distinction between prior and posterior probabilities. Before any evidence is observed, each possible explanation has a prior probability reflecting how plausible it initially seems, and some explanations may appear very unlikely. When evidence is observed, we condition on that evidence to obtain posterior probabilities. Any hypothesis for which the observed evidence is impossible has conditional probability zero and is therefore eliminated. Once all such impossible hypotheses are excluded, the remaining hypotheses must account for all of the posterior probability, and if only one remains, it must be true with posterior probability one, even if its prior probability was very small. Thus, an explanation that initially seemed improbable can become certain after conditioning on the available evidence.

---
### Question 20
Let
- $Q_{i}$ be the event that $i$th card is a queen

Therefore,

**(a)**

$$
P(Q_{2}|Q_{1}) = \frac{P(Q_{2} \cap Q_{1})}{P(Q_{1})} = \frac{\frac{2}{4} \times \frac{1}{3}}{\frac{2}{4}} = \frac{1}{3}
$$

**(b)**

$$
\begin{aligned}
P(Q_{1} \cap Q_{2}|Q_{1} \cup Q_{2}) &= \frac{P((Q_{1} \cap Q_{2}) \cap (Q_{1} \cup Q_{2}))}{P(Q_{1} \cup Q_{2})} \\
&= \frac{P(Q_{1} \cap Q_{2})}{P(Q_{1} \cup Q_{2})} \\
&= \frac{\frac{2}{4} \times \frac{1}{3}}{1 - P(Q_{1}^c \cap Q_{2}^c)} \\
&= \frac{\frac{1}{6}}{1 - \frac{2}{4} \times \frac{1}{3}} \\
&= \frac{\frac{1}{6}}{\frac{5}{6}} = \frac{1}{5}
\end{aligned}
$$

Let
- $HQ_{i}$ be the event that $i$th card is the Queen of Hearts

Therefore,

**(c)**

$$
P(Q_{1} \cap Q_{2}|HQ_{1} \cup HQ_{2}) = \frac{P(HQ_{1} \cup HQ_{2} | Q_{1} \cap Q_{2})P(Q_{1} \cap Q_{2})}{P(HQ_{1} \cup HQ_{2})}
$$
Since $P(HQ_{1} \cup HQ_{2} | Q_{1} \cap Q_{2}) = 1$ (Probability of first card or second card being Queen of hearts given the both cards are Queens), thus,
$$
P(Q_{1} \cap Q_{2}|HQ_{1} \cup HQ_{2}) = \frac{1 \times \frac{2}{4} \times \frac{1}{3}}{1 - P(HQ_{1}^c \cap HQ_{2}^c)} = \frac{\frac{1}{6}}{1 - \frac{3}{4} \times \frac{2}{3}} = \frac{\frac{1}{6}}{\frac{1}{2}} = \frac{1}{3}
$$

---
### Question 21
**(a)** 
$$
P(\text{3 Heads}|\text{at least 2 Heads}) = \frac{P(\{HHH\} \cap \{HHH,THH,HTH,HHT\})}{P(\{HHH,THH,HTH,HHT\})} = \frac{\frac{1}{8}}{\frac{1}{2}} = \frac{1}{4}
$$

**(b)**
$$
\begin{aligned}
&P(\text{3 Heads}|\text{2 Head slips}) \\
&\quad= \frac{P(\text{2 Head slips}|\text{3 Heads}) P(\text{3 Heads})}{P(\text{2 Head slips})} \\
&\quad= \frac{1 \times \frac{1}{8}}{P(\text{2 Head Slips}|\text{at least 2 Heads}) + P(\text{2 Head slips}|\text{at most 2 Heads})} \\
&\quad= \frac{\frac{1}{8}}{\left( \frac{3}{4} \times \frac{1}{3} + \frac{1}{4} \times 1\right) + 0} = \frac{\frac{1}{8}}{\frac{1}{2}} = \frac{1}{2}
\end{aligned}
$$

---
### Question 22
$$
\begin{aligned}
&P(\text{two green marbles|at least one green marble}) \\
&\quad=\frac{P(\text{two green marbles} \cap \text{at least one green marble})}{P(\text{at least one green marble})} = \frac{\frac{1}{2}}{1} = \frac{1}{2}
\end{aligned}
$$

---
### Question 23
Suppose
- $P(E_{1}) = P(E_{2}) = 0.4$
- $P(E_{1} \cap G) = P(E_{2} \cap G) = 0.3$
- $P(E_{1} \cap E_{2}) = 0.2$
- $P(E_{1} \cap E_{2} \cap G) = 0.1$
- $P(G) = 0.7$

Therefore,
$$
P(G|E_{1}) = P(G|E_{2}) = \frac{0.3}{0.4} = \frac{3}{4} > P(G) = 0.7
$$
$$
P(G|E_{1},E_{2}) = \frac{P(G \cap E_{1} \cap E_{2})}{P(E_{1} \cap E_{2})} = \frac{0.1}{0.2} = \frac{1}{2} < P(G) = 0.7
$$
As desired.

---
### Question 24
Imagine two doctors doing both heart surgery and band aid surgery:
- Hospital $B$:
	- Heart surgery: $80$ successful, $10$ failed
	- Band Aid surgery: $10$ successful
- Hospital $C$:
	- Heart surgery: $2$ successful, $8$ failed
	- Band Aid surgery: $89$ successful, $1$ failed.

Let,
- $B$ be the event that the surgery is done by hospital $A$.
- $C$ be the event that the surgery is done by hospital $C$.
- $A_{1}$ be the event that the surgery is a heart surgery.
- $A_{2}$ be the event that the surgery is a band aid surgery.

As can be seen,
$$
P(A_{1}|B) = \frac{80}{90} = \frac{8}{9} > P(A_{1}|C) = \frac{2}{8} = \frac{1}{4}
$$
$$
P(A_{2}|B) = \frac{10}{10} = 1 > P(A_{2}|C) = \frac{89}{90}
$$
But,
$$
P(A_{1},A_{2}|B) = \frac{90}{100} < P(A_{1},A_{2}|C) = \frac{91}{100}
$$

---
### Question 25
Let
- $A$ be the event that the party $A$ is guilty.
- $B$ be the event that the party $B$ is guilty.
- $E$ be the event that the party matches the blood type.

Therefore,
**(a)**
$$
P(E) = P(E|A)P(A) + P(E|B)P(B) = 1 \times \frac{1}{2} + \frac{1}{10} \times \frac{1}{2} = \frac{11}{20}
$$
$$
P(A|E) = \frac{P(E|A)P(A)}{P(E)} = \frac{1 \times \frac{1}{2}}{\frac{11}{20}} = \frac{10}{11} \approx 0.909
$$

**(b)**
$$
P(\text{B matches blood type}) = 0.1
$$

---
### Question 26
**(a)**
$$
\begin{aligned}
P(L|M_{1}) &= \frac{P(M_{1}|L)P(L)}{P(M_{1})} \\
&= \frac{P(M_{1}|L)P(L)}{P(M_{1}|L)P(L) + P(M_{1}|L^c)P(L^c)} \\
&= \frac{0.9 \times 0.1}{0.9 \times 0.1 + 0.1 \times 0.9} = \frac{1}{2}
\end{aligned}
$$

**(b)**
$$
\begin{aligned}
P(L|M_{1}, M_{2}) &= \frac{P(M_{1},M_{2}|L)P(L)}{P(M_{1},M_{2})} \\ 
&= \frac{P(M_{1},M_{2}|L)P(L)}{P(M_{1},M_{2}|L)P(L) + P(M_{1},M_{2}|L^c)P(L^c)} \\
&= \frac{0.9 \times 0.9 \times 0.1}{0.9 \times 0.9 \times 0.1 + 0.1 \times 0.1 \times 0.9} = 0.9
\end{aligned}
$$

**(c)**
Yes. Conditioning first on $M_{1}$​ and then on $M_{2}$​ gives the same result as conditioning once on $M_{1} \cap M_{2}$​. This is because conditioning is associative, and because the programs’ outputs are conditionally independent given whether the email is legitimate or spam, so the likelihoods used in the second update are unchanged by conditioning on $M_{1}$.

---
### Question 27
Let
- $G$ be the event that the suspect, who has blood type $1$, is guilty
- $B_{i}$ be the event blood type $i$ is found in the scene

Therefore,
$$
\begin{aligned}
P(G|B_{1},B_{2}) &= \frac{P(B_{1},B_{2}|G)P(G)}{P(B_{1},B_{2})} \\
&= \frac{P(B_{1},B_{2}|G)P(G)}{P(B_{1},B_{2}|G)P(G) + P(B_{1},B_{2}|G^c)P(G^c)} \\
&= \frac{p_{2}p}{p_{2}p+2p_{1}p_{2}(1-p)} \\
&= \frac{p}{p + 2p_{1}(1-p)}
\end{aligned}
$$

Assume $P(G|B_{1},B_{2}) > p$, therefore,
$$
\frac{p}{p+2p_{1}(1-p)} > p \implies p+2p_{1}(1-p) < 1 \implies 2p_{1} < \frac{1 - p}{1 -p} \implies p_{1}< \frac{1}{2}
$$
This holds only if $p_{1}< \frac{1}{2}$.

---
### Question 28
Let
- $D$ be the event that Fred has the disease
- $T$ be the event that the test is positive
- $p$ be the prior odds of Fred getting the disease, $p = \frac{P(D)}{P(D^c)}$
- $s_{1}$ be the sensitivity of the test, $P(T|D) = s_{1}$ 
- $s_{2}$ be the specificity of the test, $P(T^c|D^c) = s_{2}$

Therefore,
**(a)** Let $p' = \frac{P(D|T)}{P(D^c|T)}$, be the posterior odds
$$
p' = \frac{P(D|T)}{P(D^c|T)} = \frac{P(T|D)P(D)}{P(T|D^c)P(D^c)} = \frac{s_{1}}{1-P(T^c|D^c)}p = \frac{s_{1}}{1-s_{2}}p
$$

**(b)**
$$
\begin{aligned}
P(D|T) &= \frac{P(T|D)P(D)}{P(T)} \\
&= \frac{s_{1}p}{P(T|D)P(D) + P(T|D^c)P(D^c)} \\
&= \frac{s_{1}p}{s_{1}p + (1-P(T^c|D^c))(1-p)} \\
&= \frac{s_{1}p}{s_{1}p + (1-s_{2})(1-p)}
\end{aligned}
$$
Since the disease is rare we can assume, $p \ll 1 \implies (1-p) \approx 1$, therefore,
$$
P(D|T) \approx \frac{s_{1}p}{(1-s_{2})}
$$
As can be seen, for a rare disease, improving specificity dramatically improves the positive predictive value, while increasing sensitivity has relatively little effect.

---
### Question 29
Let
- $G_{i}$ be the event that the child $i$ is a girl.
- $C_{i}$ be the event that the child $i$ has characteristic $C$, $P(C_{i}) = p$

Therefore,
$$
\begin{aligned}
&P(G_{1} \cap G_{2}|(G_{1} \cap C_{1}) \cup (G_{2} \cap C_{2})) \\
&\quad = \frac{P((G_{1} \cap C_{1}) \cup (G_{2} \cap C_{2})|G_{1} \cap G_{2})P(G_{1} \cap G_{2})}{P((G_{1} \cap C_{1}) \cup (G_{2} \cap C_{2}))} \\
&\quad = \frac{P(C_{1}\cup C_{2})P(G_{1} \cap G_{2})}{P(G_{1} \cap C_{1}) + P(C_{2} \cap G_{2}) - P((G_{1} \cap C_{1}) \cap (G_{2} \cap C_{2}))} \\
&\quad = \frac{\frac{1}{4}(P(C_{1}) + P(C_{2}) - P(C_{1} \cap C_{2}))}{\frac{1}{2}p + \frac{1}{2}p - \frac{1}{4}p^2} \\
&\quad = \frac{2p - p^{2}}{4p-p^2} \\
&\quad = \frac{2-p}{4-p}
\end{aligned}
$$

## Independence and conditional independence
### Question 30
**(a)**
The events are dependent because knowing that $A$ is older than $C$ provides information about $A$’s overall "seniority" in the birth order. If $A$ is older than $C$, $A$ is restricted from being the youngest child (the $CBA$ or $BCA$ scenarios), which statistically increases the likelihood that $A$ is also older than $B$. In simpler terms, the more people we know $A$ is older than, the more likely it is that $A$ is the oldest overall. Since the probability of being older than $B$ shifts from $1/2$ (with no information) to $2/3$ (knowing $A$ beat $C$), the two events influence one another and are therefore not independent.

**(b)**
$$
P(\text{A before B}|\text{A before C}) = \frac{P(\text{A before B} \cap \text{A before C})}{P(\text{A before C})} = \frac{P(\{ABC,ACB\})}{\frac{1}{2}} = \frac{\frac{2}{6}}{\frac{1}{2}} = \frac{2}{3}
$$

---
### Question 31
In order to an event be independent of itself, the following equation must hold,
$$
P(A \cap A) = P(A)P(A) \implies P(A) = P(A)^2 \implies P(A) = 1, 0
$$
Thus, for an event to be independent of itself, it must equal either $1$ or $0$.
In case of $P(A) = 1$, occurrence of the event gives no additional information as the prior and posterior occurrence is certain.

---
### Question 32
Let, $A_{i}$​ denotes the event that die $A$ shows the value $i$; similarly, $B_j$​, $C_k$​, and $D_l$​ denote the events that dice $B$, $C$, and $D$ show the values $j$, $k$, and $l$, respectively.
**(a)**
- $P(A > B) = P(\{A_{4}B_{3}\}) = \frac{2}{3} \times 1 = \frac{2}{3}$
- $P(B > C) = P(\{B_{3}C_{2}\}) = 1 \times \frac{2}{3} = \frac{2}{3}$
- $P(C > D) = P(\{C_{6}D_{5},C_{6}D_{1},C_{2}D_{1}\}) = \frac{1}{3} \times 1 + \frac{2}{3} \times \frac{1}{2} = \frac{2}{3}$
- $P(D > A) = P(\{D_{5}A_{4},D_{5}A_{0},D_{1}A_{0}\}) = \frac{1}{2} \times 1 + \frac{1}{2} \times \frac{1}{3} = \frac{2}{3}$

**(b)**
In order for $A > B$ to be independent of $B > C$, the following equation must hold,
$$
P(A>B \cap B > C) = P(A>B) \times P(B>C) = \frac{4}{9}
$$
Calculating $P(A>B \cap B>C)$ and $P(A > B) \times P(B > C)$,
$$
P(A>B) \times P(B>C) = \frac{4}{9}
$$
$$
P(A>B \cap B>C) = P(\{A_{4}B_{3}C_{2}\}) = \frac{2}{3} \times 1 \times \frac{2}{3} = \frac{4}{9}
$$
Since they are equal, therefore these probabilities are independent.

And the same goes for $P(C > D)$ and $P(D > A)$,
$$
P(C>D) \times P(D>A) = \frac{4}{9}
$$
$$
\begin{aligned}
P(C > D \cap D >A) &= P(\{C_{6}D_{5}A_{4}, C_{6}D_{5}A_{0},C_{6}D_{1}A_{0},C_{2}D_{1}A_{0}\}) \\
&= \frac{1}{3} \times \frac{1}{2} \times \frac{2}{3} + \frac{1}{3} \times \frac{1}{2} \times \frac{1}{3} + \frac{1}{3} \times \frac{1}{2} \times \frac{1}{3} + \frac{2}{3} \times \frac{1}{2} \times \frac{1}{3} = \frac{1}{3}
\end{aligned}
$$
Which are not equal, therefore they are not independent.

---
### Question 33
**(a)** 
There are $2^{100}$ possible subsets of $C$, all equally likely to occur as $A$,
$$
D \subset C \implies P(A = D) = \frac{1}{2^{100}} = 2^{-100}
$$

**(b)** For each person, there are four probabilities,
- Bob's friend, Alice's friend, $\frac{1}{4}$
- Bob's friend, not Alice's friend, $\frac{1}{4}$
- Not Bob's friend, Alice's friend, $\frac{1}{4}$
- Not Bob's friend, not Alice's friend, $\frac{1}{4}$

Only the third outcome would contradict $A \subset B$, therefore each person must fall under the other three outcomes, thus,
$$
P(A \subset B) = {\left( \frac{3}{4} \right)}^{100}
$$

**(c)** Same as the above, only the forth outcome would contradict $A \cup B = C$, therefore each person must fall under the other three outcomes, thus,
$$
P(A \cup B = C) = {\left( \frac{3}{4} \right)}^{100}
$$

---
### Question 34
**(a)**
Since we have supposed that the occurrence of an accident wouldn't change the driver's skill, and that the driver's skill remains the same over time, therefore occurrence of either $A$ or $B$ given $G$, wouldn't give any additional information about the other one; therefore $A$ and $B$ are conditionally independent given $G$.

**(b)**
$$
P(G|A^c) = \frac{P(A^c|G)P(G)}{P(A^c)} = \frac{P(A^c|G)P(G)}{P(A^c|G)P(G) + P(A^c|G^c)P(G^c)} =\frac{(1-p_{1})g}{(1-p_{1})g + (1-p_{2})(1-g)}
$$

**(c)**
$$
P(B|A^c) = P(B|A^c,G)P(G|A^c) + P(B|A^c,G^c)P(G^c|A^c) = p_{1}P(G|A^c) + p_{2}(1-P(G|A^c))
$$

---
### Question 35
Let
- $W_{i}$ be the event that you win the $i$the game
- $S_{1},S_{2},S_{3}$ be the events that the opponent is either a beginner, an intermediate or a master respectively.

**(a)**
Thus,
$$
P(W_{1}) = \sum_{i=1}^{3} P(W_{1}|S_{i})P(S_{i}) = \frac{1}{3} (0.9 + 0.5 + 0.3) = \frac{17}{30}
$$

**(b)**
$$
P(W_{2}|W_{1}) = \sum_{i=1}^{3}P(W_{2}|W_{1},S_{i})P(S_{i}|W_{1})
$$
Since the outcomes of the games are independent, Given the skill level of your opponent, thus $P(W_{2}|W_{1},S_{i}) = P(W_{2}|S_{i})$, therefore,
$$
P(W_{2}|W_{1}) = \sum_{i=1}^{3}P(W_{2}|S_{i})P(S_{i}|W_{1}) = \sum_{i=1}^3P(W_{2}|S_{i}) \frac{P(W_{1}|S_{i})P(S_{i})}{P(W_{1})}
$$
Again, by the same fact as above, $P(W_{2}|S_{i}) = P(W_{1}|S_{i})$, therefore,
$$
\begin{aligned}
P(W_{2}|W_{1}) &= \frac{30}{17} \sum_{i=1}^{3} P(W_{1}|S_{i})^2 P(S_{i}) \\
&= \frac{30}{17} \times\frac{1}{3} \times\left( \left( \frac{9}{10} \right)^2 + \left( \frac{5}{10} \right)^2 + \left( \frac{3}{10} \right)^2 \right) \\
&= \frac{10}{17} \times \left( \frac{115}{100} \right) \\
&= \frac{115}{170} \\
&= \frac{23}{34}
\end{aligned}
$$

**(c)**
- First let's assume that winning probabilities are unconditionally independent, $P(W_{2}|W_{1}) = P(W_{2})$, we know this is not correct since knowing that $W_{1}$ has occurred would increase the chance of $W_{2}$.
- Now let's assume that they are conditionally independent, $P(W_{2}|W_{1},S_{i}) = P(W_{2}|S_{i})$, assuming that $W_{1}$ won't affect our's or the opponent's skill, this is correct, because the occurrence of $W_{1}$ won't give any additional information since $S_{i}$ has all the information we need about the chances of $W_{2}$.

---
### Question 36
Because of the "if and only if" condition, all the students would fall under three categories:
- Only good at math
- Only good at baseball
- Good at both

And we can probably assume that the population of those students who are good at both are significantly smaller than the students who are only good at one them; Therefore conditioning on being good at baseball, would eliminate the population of the student who are only good at math, decreasing the probability.

**(b)** In order to $A$ and $B$ be conditionally independent given $C = A\cup B$, the following equation must hold,
$$
P(A \cap B|C) = P(A|C)P(B|C)
$$
Calculating both sides:
- $P(A \cap B|C) = P(A \cap B|A \cup B) = \frac{P(A\cap B)}{P(A\cup B)}$
- $P(A|C)P(B|C) = \frac{P(A \cap C)}{P(C)} \frac{P(B \cap C)}{P(C)} = \frac{P(A \cap (A \cup B))}{P(A \cup B)} \frac{P(B \cap (A \cup B))}{P(A \cup B)} = \frac{P(A)P(B)}{P(A \cup B)^2} = \frac{P(A \cap B)}{P(A \cup B)^2}$

Given $P(A \cap B) > 0$, $P(A \cup B) < 1$, therefore
$$
\frac{P(A\cap B)}{P(A \cup B)^2} > \frac{P(A\cap B)}{P(A \cup B)} \implies P(A|C)P(B|C) > P(A \cap B|C)
$$
Thus, the equation doesn't hold and $A$ and $B$ are conditionally dependent given $C$.
In addition,
$$
P(A \cap B|C) = P(A|B,C)P(B|C) < P(A|C)P(B|C) \implies P(A|B,C) < P(A|C)
$$

---
### Question 37
**(a)**
$$
\begin{aligned}
P(W) &= P(W|D_{1} \cup D_{2})P(D_{1} \cup D_{2}) + P(W|D_{1}^c \cap D_{2}^c)P(D_{1}^c \cap D_{2}^c) \\
&= 1 \times (1 - P(D_{1}^c \cap D_{2}^c)) + w_{0}q_{1}q_{2} \\
&= 1 + (w_{0} - 1)q_{1}q_{2}
\end{aligned}
$$

**(b)**
- $P(D_{1}|W) = \frac{P(W|D_{1})P(D_{1})}{P(W)} = \frac{p_{1}}{1 + (w_{0} - 1)q_{1}q_{2}}$
- $P(D_{2}|W) = \frac{P(W|D_{2})P(D_{2})}{P(W)} = \frac{p_{2}}{1 + (w_{0} - 1)q_{1}q_{2}}$
- $P(D_{1},D_{2}|W) = \frac{P(W|D_{1},D_{2})P(D_{1},D_{2})}{P(W)} = \frac{p_{1}p_{2}}{1+(w_{0} -1)q_{1}q_{2}}$

**(c)** In order to $D_{1}$ and $D_{2}$ be conditionally independent given $W$, the following equation must hold,
$$
P(D_{1} \cap D_{2}|W) = P(D_{1}|W)P(D_{2}|W)
$$
Computing both sides:
- $P(D_{1} \cap D_{2}|W) = \frac{p_{1}p_{2}}{1+(w_{0}-1)q_{1}q_{2}}$
- $P(D_{1}|W)P(D_{2}|W) = \frac{p_{1}p_{2}}{(1+(w_{0}-1)q_{1}q_{2})^2}$

These values can only be equal if $1 + (w_{0} - 1)q_{1}q_{2} = 1 \implies (w_{0}-1)q_{1}q_{2} = 0$, which holds only if $w_{0} = 1$, meaning that everyone without the diseases would also have the symptoms.

**(d)** Supposing $w_{0} = 0$,
- $P(D_{1} \cap D_{2}|W) = \frac{p_{1}p_{2}}{1-q_{1}q_{2}}$
- $P(D_{1}|W)P(D_{2}|W) = \frac{p_{1}p_{2}}{(1-q_{1}q_{2})^2}$

Therefore in order to $D_{1}$ and $D_{2}$ to be conditionally independent given $W$, the following equation must hold:
$$
(1-q_{1}q_{2})^2 = (1-q_{1}q_{2}) \implies 1-q_{1}q_{2} = 0, 1
$$

Thus, the assumption is only true if,
$$
q_{1}q_{2}=0, q_{1}q_{2}=1
$$
which is not possible since $0 < p_{i} < 1 \implies 0 < q_{i} < 1$, therefore $D_{1}$ and $D_{2}$ are conditionally dependent given $W$.

---
### Question 38
Let
- $C$ be the event of that new email includes 23rd, 64th and 65th words or phrases on the list. ($C = W_{1}^c,\dots,W_{22}^c,W_{23},W_{24},\dots W_{63}^c,W_{64},W_{65},W_{66}^c, \dots, W_{100}^c$)

Therefore,
$$
P(\text{spam}|C) = \frac{P(C|\text{spam})P(\text{spam})}{P(C)} = \frac{P(C|\text{spam})P(\text{spam})}{P(C|\text{spam})P(\text{spam}) + P(C|\text{not spam})P(\text{not spam})}
$$
For the sake of simplicity, let
- $A ={(1-p_{1})\dots(1-p_{22})p_{23}(1-p_{24})\dots(1-p_{63})p_{64}p_{65}(1-p_{66})\dots(1-p_{100})}$
- $B ={(1-r_{1})\dots(1-r_{22})r_{23}(1-r_{24})\dots(1-r_{63})r_{64}r_{65}(1-r_{66})\dots(1-r_{100})}$

Therefore,
$$
P(\text{spam}|C) = \frac{Ap}{Ap+B(1-p)}
$$

## Monty Hall
### Question 39
**(a)**
Let
- $D_{i}$ be the event that the car is behind door $i$
- $W'$ be the event that we win the car, considering we always switch

Let's assume we chose door $1$, even if we didn't we could simply relabel the doors,
$$
P(W') = \sum_{i=1}^7 P(W'|D_{i})P(D_{i}) = \frac{1}{7} \sum_{i=1}^7 P(W'|D_{i})
$$
Since we always switch to one of three remaining doors, therefore
$$
P(W'|D_{1}) = 0, P(W'|D_{i \neq 1}) = \frac{1}{3}
$$
Thus,
$$
P(W') = \frac{1}{7} \times 6 \times \frac{1}{3} = \frac{2}{7}
$$
Therefore we should switch because the posterior probability is higher than the prior probability $\frac{1}{7}$.

**(b)**
Generalizing:
$$
P(W') = \sum_{i=1}^n P(W'|D_{i})P(D_{i}) = \frac{1}{n} \times (n-1) \times \frac{1}{n -m -1}
$$

---
### Question 40
**(a)**
Let
- $D_{i}$ be the event that the car is behind door $i$
- $M_{j}$ be the event that Monty opens door $j \neq i$ 
- $W'$ be the event that we win the car, considering we always switch

Let's assume we chose door $1$, even if we didn't we could simply relabel the doors,

$$
\begin{aligned}
P(W') &= \sum_{i=1}^3 P(W'|D_{i})P(D_{i}) \\
&= \frac{1}{3} \sum_{i=1}^3 P(W'|D_{i}) = \\
&= \frac{1}{3} \sum_{i=1}^3 P(W'|D_{i},M_{j \neq i,1})P(M_{j \neq i,1}|D_{i})
\end{aligned}
$$
Since $P(W'|D_{1},M_{j \neq i}) = 0$,
$$
P(W') = \frac{1}{3}(P(W'|D_{2},M_{3})P(M_{3}|D_{2}) + P(W'|D_{3},M_{2})P(M_{2},D_{3})) = \frac{1}{3}(1 + 1) = \frac{2}{3}
$$

**(b)**
$$
\begin{aligned}
P(W'|M_{2}) &= P(W'|M_{2}, D_{1})P(D_{1}|M_{2}) + P(W'|M_{2},D_{3})P(D_{3}|M_{2}) \\
&= P(D_{3}|M_{2}) \\
&= \frac{P(M_{2}|D_{3})P(D_{3})}{P(M_{2})} \\
&= \frac{P(M_{2}|D_{3})P(D_{3})}{P(M_{2}|D_{3})P(D_{3}) + P(M_{2}|D_{1})P(D_{1})} \\
&= \frac{\frac{1}{3}}{\frac{1}{3} + p \frac{1}{3}} \\
&= \frac{1}{1 + p}
\end{aligned}
$$

**(c)**
$$
\begin{aligned}
P(W'|M_{3}) &= P(W'|M_{3}, D_{1})P(D_{1}|M_{3}) + P(W'|M_{3},D_{2})P(D_{2}|M_{3}) \\
&= P(D_{2}|M_{3}) \\
&= \frac{P(M_{3}|D_{2})P(D_{2})}{P(M_{3})} \\
&= \frac{P(M_{3}|D_{2})P(D_{2})}{P(M_{3}|D_{2})P(D_{2}) + P(M_{3}|D_{1})P(D_{1})} \\
&= \frac{\frac{1}{3}}{\frac{1}{3} + (1 -p) \frac{1}{3}} \\
&= \frac{1}{2 - p}
\end{aligned}
$$

---
### Question 41
Let
- $D_{i}$ be the event that the car is behind door $i$
- $M_{j}$ be the event that Monty opens door $j \neq i$ 
- $H$ be the event that the coin landed on the secret flip
- $W'$ be the event that we win the car, considering we always switch

Therefore,
$$
P(W'|M_{2}) = \sum_{i=1}^3 P(W'|M_{2},D_{i})P(D_{i}|M_{2})
$$
Since $P(D_{2}|M_{2}) = 0$ (We know that a goat was behind door 2), thus,
$$
P(W'|M_{2}) = P(W'|M_{2},D_{1})P(D_{1}|M_{2}) + P(W'|M_{2},D_{3})P(D_{3}|M_{2})
$$
And since $P(W'|M_{2},D_{1}) = 0$, therefore,
$$
P(W'|M_{2}) = P(W'|M_{2},D_{3})P(D_{3}|M_{2}) = P(D_{3}|M_{2})
$$
Using Bayes' theorem,
$$
P(W'|M_{2}) = \frac{P(M_{2}|D_{3})P(D_{3})}{P(M_{2})} = \frac{P(M_{2}|D_{3})P(D_{3})}{P(M_{2}|D_{3})P(D_{3}) + P(M_{2}|D_{1})P(D_{1})}
$$
Since $P(D_{i}) = \frac{1}{3}$, therefore,
$$
P(W'|M_{2}) = \frac{P(M_{2}|D_{3})}{P(M_{2}|D_{3}) + P(M_{2}|D_{1})}
$$
Conditioning on $H$,
$$
P(W'|M_{2}) = \frac{{P(M_{2}|D_{3}, H)P(H|D_{3}) + P(M_{2}|D_{3},H^c)P(H^c|D_{3})}}{P(M_{2}|D_{3}, H)P(H|D_{3}) + P(M_{2}|D_{3},H^c)P(H^c|D_{3}) + P(M_{2}|D_{1},H)P(H|D_{1}) + P(M_{2}|D_{1},H^c)P(H^c|D_{1})}
$$
Since $D_{i}$ and $H$ are independent,
$$
\begin{aligned}
P(W'|M_{2}) &= \frac{{P(M_{2}|D_{3}, H)P(H) + P(M_{2}|D_{3},H^c)P(H^c)}}{P(M_{2}|D_{3}, H)P(H) + P(M_{2}|D_{3},H^c)P(H^c) + P(M_{2}|D_{1},H)P(H) + P(M_{2}|D_{1},H^c)P(H^c)} \\
&= \frac{p + \frac{1}{2}(1-p)}{p + \frac{1}{2}(1-p) + \frac{1}{2}p + \frac{1}{2}(1-p)} \\
&= \frac{\frac{1}{2}(1 + p)}{1 + \frac{1}{2}p} \\
&= \frac{1+p}{2 + p}
\end{aligned}
$$

---
### Question 42
Let
- $D_{i}$ be the event that the car is behind door $i$
- $M_{j}$ be the event that Monty opens door $j \neq i$
- $W$ be the event that we win the car, considering we always switch if Monty opens a door.

Let's assume we chose door $1$, even if we didn't we could simply relabel the doors,
**(a)**
$$
\begin{aligned}
P(W) &= \sum_{i=1}^3 P(W|D_{i})P(D_{i}) \\
&= \frac{1}{3} \sum_{i=1}^3 P(W|D_{i}) \\
&= \frac{1}{3}[P(W|D_{1}) + P(W|D_{2}) + P(W|D_{3})] \\
&= \frac{1}{3}[0 + p + p] \\
&= \frac{2}{3}p
\end{aligned}
$$
So, if $p=0$, Monty only opens a door when the initial chosen door has a car behind it, forcing us to always choose a goat in the switch; and if $p=1$, Monty always opens a door revealing a goat, it's the same as the classic Monty Hall conditions.

**(b)**
$$
\begin{aligned}
P(W|M_{2}) &= \sum_{i=1,3} P(W|M_{2},D_{i})P(D_{i}|M_{2}) \\
&= 0 \times P(D_{1}|M_{2}) + 1 \times P(D_{3}|M_{2}) \\
&= P(D_{3}|M_{2}) \\
&= \frac{P(M_{2}|D_{3})P(D_{3})}{P(M_{2})} \\
&= \frac{P(M_{2}|D_{3})P(D_{3})}{\sum_{i=1}^3 P(M_{2}|D_{i})P(D_{i})} \\
&= \frac{P(M_{2}|D_{3})}{\sum_{i=1}^3 P(M_{2}|D_{i})} \\
&= \frac{p}{\frac{1}{2} + 0 + p} \\
&= \frac{2p}{1 + 2p}
\end{aligned}
$$

---
### Question 43
Let
- $D_{i}$ be the event that the car is behind door $i$
- $C_{k}$ be the event that the computer is behind door $k$
- $G_{l}$ be the event that the goat is behind door $l$
- $M_{j}$ be the event that Monty opens door $j$
- $W'$ be the event that we win the car, considering we always switch

**(a)**
Let's assume we chose door $1$, and Monty opened door $2$ revealing a goat, even if these didn't happen, we could simply relabel the doors,
$$
\begin{aligned}
P(W'|M_{2},G_{2}) &= \sum_{i=1,3} P(W'|D_{i},M_{2},G_{2})P(D_{i}|M_{2},G_{2}) \\
&= 0 \times P(D_{1}|M_{2},G_{2}) + 1 \times P(D_{3}|M_{2},G_{2}) \\
&= P(D_{3}|M_{2},G_{2}) \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{\sum_{i=1,3} P(M_{2}|D_{i},G_{2})P(D_{i}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})}{\sum_{i=1,3} P(M_{2}|D_{i},G_{2})} \\
&= \frac{1}{1 + 1} = \frac{1}{2}
\end{aligned}
$$
Therefore, staying or switching have equal probability of winning.

**(b)**
Let's assume we chose door $1$, and Monty opened door $2$ revealing a computer, even if these didn't happen, we could simply relabel the doors,
$$
P(W'|M_{2},C_{2}) = \sum_{i=1,3} P(W'|D_{i},M_{2},C_{2})P(D_{i}|M_{2},C_{2})
$$
$$
P(W'|M_{2},C_{2}) = 0 \times P(D_{1}|M_{2},C_{2}) + 1 \times P(D_{3}|M_{2},C_{2}) = P(D_{3}|M_{2},C_{2})
$$
$$
P(W'|M_{2},C_{2}) = \frac{P(M_{2}|D_{3},C_{2})P(D_{3}|C_{2})}{P(M_{2}|C_{2})} =  \frac{P(M_{2}|D_{3},C_{2})P(D_{3}|C_{2})}{\sum_{i=1,3} P(M_{2}|C_{2},D_{i})P(D_{i}|C_{2})}
$$
$$
P(W'|M_{2},C_{2}) = \frac{P(M_{2}|D_{3},C_{2})}{\sum_{i=1,3} P(M_{2}|D_{i},C_{2})} = \frac{P(M_{2}|D_{3},C_{2})}{P(M_{2}|D_{1},C_{2}) + P(M_{2}|D_{3},C_{2})}
$$
$$
P(W'|M_{2},C_{2}) = \frac{p}{q + p} = p
$$
If
- $p>0.5$, you should switch.
- $p<0.5$, you should stay.
- $p=0.5$, it does not matter.

---
### Question 44
Let
- $D_{i}$ be the event that the car is behind door $i$
- $G_{k}$ be the event that a goat is behind door $k$
- $M_{j}$ be the event that Monty opens door $j$
- $W$ be the event that we win the car

**(a)**
$$
\begin{aligned}
P(D_{3}|M_{2},G_{2}) &= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{\sum_{i=1,3} P(M_{2}|G_{2},D_{i})P(D_{i}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|G_{2},D_{1})P(D_{1}|G_{2}) + P(M_{2}|G_{2},D_{3})P(D_{3}|G_{2})} \\
&= \frac{\frac{1}{2}P(D_{3}|G_{2})}{P(D_{1}|G_{2}) + \frac{1}{2}P(D_{3}|G_{2})}
\end{aligned}
$$
Calculating $P(D_{3}|G_{2})$ and $P(D_{1}|G_{2})$,
- $P(D_{3}|G_{2}) = \frac{P(G_{2}|D_{3})P(D_{3})}{P(G_{2})} = \frac{P(G_{2}|D_{3})P(D_{3})}{P(G_{2}|D_{3})P(D_{3}) + P(G_{2}|D_{1})P(D_{1})} = \frac{1 \times p_{3}}{1 \times p_{3} + 1 \times p_{1}} = \frac{p_{3}}{p_{1}+p_{3}}$
- Same as the $P(D_{3}|G_{2})$, $P(D_{1}|G_{2}) \frac{p_{1}}{p_{1}+p_{3}}$

Thus,
$$
P(D_{3}|M_{2},G_{2}) = \frac{\frac{p_{3}}{2(p_{1} + p_{3})}}{\frac{p_{1}}{p_{1}+p_{3}} + \frac{p_{3}}{2(p_{1} + p_{3})}} = \frac{p_{3}}{2p_{1} + p_{3}}
$$

Therefore, if
- contestant stays on the initial choice, $P(W) = \frac{p_{3}}{2p_{1}+p_{3}}$
- contestant switches doors, $P(W) = \frac{2p_{1}}{2p_{1}+p_{3}}$

Assume switching and winning has higher probability,
$$
\frac{2p_{1}}{2p_{1}+p_{3}} > \frac{p_{3}}{2p_{1}+p_{3}} \implies 2p_{1}>p_{3} \implies p_{1} > \frac{p_{3}}{2}
$$
Therefore, the contestant should only switch if $p_{1} > \frac{p_{3}}{2}$.

**(b)** Using the notation from above
$$
\begin{aligned}
P(D_{3}|M_{2},G_{2}) &= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|G_{2},D_{1})P(D_{1}|G_{2}) + P(M_{2}|G_{2},D_{3})P(D_{3}|G_{2})} \\
&= \frac{\frac{1}{2}P(D_{3}|G_{2})}{\frac{1}{2}P(D_{1}|G_{2}) + \frac{1}{2}P(D_{3}|G_{2})} \\
&= \frac{P(D_{3}|G_{2})}{P(D_{1}|G_{2}) + P(D_{3}|G_{2})}
\end{aligned}
$$
Using the equations from above,
$$
P(D_{3}|M_{2},G_{2}) = \frac{p_{3}}{p_{1} + p_{3}}
$$

Therefore, if
- contestant stays on the initial choice, $P(W) = \frac{p_{3}}{p_{1}+p_{3}}$
- contestant switches doors, $P(W) = \frac{p_{1}}{p_{1}+p_{3}}$

Assume switching and winning has higher probability,
$$
\frac{p_{1}}{p_{1}+p_{3}} > \frac{p_{3}}{p_{1}+p_{3}} \implies p_{1}>p_{3}
$$
Which contradicts $p_{1} \leq p_{3}$, therefore the contestant should stay and not switch.

**(c)**
$$
\begin{aligned}
P(D_{3}|M_{2},G_{2}) &= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{\sum_{i=1,3} P(M_{2}|G_{2},D_{i})P(D_{i}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|D_{1},G_{2})P(D_{1}|G_{2}) + P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})} \\
&= \frac{1 \times P(D_{3}|G_{2})}{\frac{1}{2} \times P(D_{1}|G_{2}) + 1 \times P(D_{3}|G_{2})}
\end{aligned}
$$
Using the equations from above,
$$
P(D_{3}|M_{2},G_{2}) = \frac{\frac{p_{3}}{p_{1}+p_{3}}}{\frac{1}{2} \times \frac{p_{1}}{p_{1}+p_{3}} + \frac{p_{3}}{p_{1}+p_{3}}} = \frac{2p_{3}}{p_{1} + 2p_{3}}
$$

Therefore, if
- contestant switches doors, $P(W) = \frac{2p_{3}}{p_{1}+2p_{3}}$
- contestant stays on the initial choice, $P(W) = \frac{p_{1}}{p_{1}+2p_{3}}$

Assume switching and winning has higher probability,
$$
\frac{2p_{3}}{p_{1}+2p_{3}} > \frac{p_{1}}{p_{1}+2p_{3}} \implies 2p_{3} > p_{1} \implies p_{3}> \frac{p_{1}}{2}
$$
Which is always true ($0 < p_{1} \leq p_{3} <1$), therefore the contestant should always switch.

**(d)**
$$
\begin{aligned}
P(D_{3}|M_{2},G_{2}) &= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{\sum_{i=1,3} P(M_{2}|G_{2},D_{i})P(D_{i}|G_{2})} \\
&= \frac{P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})}{P(M_{2}|D_{1},G_{2})P(D_{1}|G_{2}) + P(M_{2}|D_{3},G_{2})P(D_{3}|G_{2})} \\
&= \frac{\frac{1}{2} P(D_{3}|G_{2})}{\frac{1}{2}P(D_{1}|G_{2}) + \frac{1}{2} P(D_{3}|G_{2})}
\end{aligned}
$$
From the equations above,
$$
P(D_{3}|M_{2},G_{2}) = \frac{p_{3}}{p_{1} + p_{3}}
$$

Therefore, if
- the contestant switches doors, $P(W) = \frac{p_{3}}{p_{1}+p_{3}}$
- the contestant stays on the initial choice, $P(W) = \frac{p_{1}}{p_{1}+p_{3}}$

Assume switching and winning has higher probability,
$$
\frac{p_{3}}{p_{1}+p_{3}} > \frac{p_{1}}{p_{1}+p_{3}} \implies p_{3}>p_{1}
$$
Which is true ($p_{1} \leq p_{3}$), therefore the contestant should always switch (expect for $p_{1} = p_{3}$ where it doesn't matter whether the contestant switches or not).

---
### Question 45
Let
- $D_{i}$ be the event that the car is behind door $i$
- $M_{j}$ be the event that Monty opens door $j$
- $W$ be the event that we win the car

**(a)** Assuming the contestant always switches, 
$$
P(W) = P(W|D_{1}D_{2}D_{3})P(D_{1}D_{2}D_{3}) + \dots P(W|D_{1}^cD_{2}^cD_{3}^c)P(D_{1}^cD_{2}^cD_{3}^c)
$$
Calculating each one:
- $P(W|D_{1}D_{2}D_{3})P(D_{1}D_{2}D_{3}) = p^3$
- $P(W|D_{1}^cD_{2}D_{3})P(D_{1}^cD_{2}D_{3}) = p^2 q$
- $P(W|D_{1}D_{2}^cD_{3})P(D_{1}D_{2}^cD_{3}) = p^2 q$
- $P(W|D_{1}D_{2}D_{3}^c)P(D_{1}D_{2}D_{3}^c) = p^2 q$
- $P(W|D_{1}D_{2}^cD_{3}^c)P(D_{1}D_{2}^cD_{3}^c) = 0$
- $P(W|D_{1}^cD_{2}D_{3}^c)P(D_{1}^cD_{2}D_{3}^c) = q^2 p$
- $P(W|D_{1}^cD_{2}^cD_{3})P(D_{1}^cD_{2}^cD_{3}) = q^2 p$
- $P(W|D_{1}^cD_{2}^cD_{3}^c)P(D_{1}^cD_{2}^cD_{3}^c) = 0$

Thus,
$$
P(W) = p^3 + 3p^2q + 2pq^2 = 2p - p^2
$$

**(b)**
$$
\begin{aligned}
P(D_{3}|M_{2},D_{2}^c) &= \frac{P(M_{2}|D_{2}^cD_{3})P(D_{3}|D_{2}^c)}{P(M_{2}|D_{2}^c)} \\
&= \frac{P(M_{2}|D_{2}^cD_{3})P(D_{3}|D_{2}^c)}{P(M_{2}|D_{2}^cD_{3})P(D_{3}|D_{2}^c) + P(M_{2}|D_{2}^cD_{3}^c)P(D_{3}^c|D_{2}^c)} \\
&= \frac{p}{p + \frac{1}{2}q} \\
&= \frac{2p}{1 +p}
\end{aligned}
$$

---
### Question 46
Let
- $D_{i}$ be the event that the car is behind door $i$
- $A_{j}$ be the event that the apple is behind door $j$
- $B_{k}$ be the event that the book is behind door $k$
- $G_{l}$ be the event that the goat is behind door $l$
- $M_{m}$ be the event that Monty opens door $m$
- $W$ be the event that we win the car

**(a)** Assuming the contestant always switches to one of the remaining two doors,
$$
P(W) = \sum_{i=1}^4 P(W|D_{i})P(D_{i})
$$
Since $P(W|D_{1}) =0$ (The contestant always switches), thus,
$$
P(W) = \sum_{i=2}^4 P(W|D_{i})P(D_{i}) = \frac{1}{4} \sum_{i=2}^4 P(W|D_{i})
$$
And for $i=2,3,4$, $P(W|D_{i}) = \frac{1}{2}$ since for switching we have two options in which one of them will lead to the car,
$$
P(W) = \frac{1}{4} \left( 3 \times \frac{1}{2} \right) = \frac{3}{8}
$$

**(b)**
Let $R$ be the event that Monty reveals the apple
$$
P(R) = P(R|A_{1})P(A_{1}) + P(R|B_{1})P(B_{1}) + P(R|G_{1})P(G_{1}) + P(R|D_{1})P(D_{1})
$$
For each sentence,
- $P(R|A_{1}) = 0$, since the apple is not in Monty's options
- $P(R|B_{1}) = q$, since apple is the intermediately preferred item (options: Car, Apple, Goat)
- $P(R|G_{1}) = p$, since apple is the least preferred item (Options: Car, Book, Apple)
- $P(R|D_{1}) = q$, since apple is the intermediately preferred item (Options: Book, Apple, Goat)
- $P(A_{1}) = P(B_{1}) = P(G_{1}) = P(D_{1}) = \frac{1}{4}$

Thus,
$$
P(R) = \frac{1}{4}(p + 2q) = \frac{2-p}{4}
$$

**(c)**
$$
\begin{aligned}
P(W|R) &= \frac{P(W \cap R)}{P(R)} \\
&= \frac{\sum_{i=1}^4P(W \cap R|D_{i})P(D_{i})}{P(R)} \\
&= \frac{\sum_{i=1}^4P(W \cap R|D_{i})}{2-p} \\
&= \frac{\sum_{i=1}^4P(W|R, D_{i})P(R|D_{i})}{2 - p}
\end{aligned}
$$
Since $P(W|R,D_{i}) = \frac{1}{2}, (i \neq 1)$ and $P(W|R,D_{1}) = 0$, thus
$$
P(W|R) = \frac{\frac{1}{2}(P(R|D_{2}) + P(R|D_{3}) + P(R|D_{4}))}{2-p} = \frac{P(R|D_{2}) + P(R|D_{3}) + P(R|D_{4})}{4 - 2p}
$$
Since $P(R|D_{2}) = P(R|D_{3}) = P(R|D_{4})$, thus
$$
P(W|R) = \frac{3P(R|D_{2})}{4-2p} = \frac{3(P(R|D_{2},A_{1})P(A_{1}|D_{2}) + P(R|D_{2},B_{1})P(B_{1}|D_{2}) + P(R|G_{2},A_{1})P(G_{1}|D_{2}))}{4-2p}
$$
Since $P(A_{1}|D_{2}) = P(B_{1}|D_{2}) = P(G_{1}|D_{2}) = \frac{1}{3}$, thus
$$
P(W|R) = \frac{P(R|D_{2},A_{1}) + P(R|D_{2},B_{1}) + P(R|D_{2},G_{1})}{4 - 2p} = \frac{0 + q + p}{4- 2p} = \frac{1}{4-2p}
$$

---
### Question 47
Let
- $W$ be the event of winning given the strategies
- $D_{i}$ be the event that the car is behind door $i$
- $A_j$ be the event that we switch to door $j$ on the first round
- $M_{k}$ be the event that Monty opens door $k$ on the first round

**(a)**
$$
P(W) = \sum_{i=1}^4 P(W|D_{i})P(D_{i}) = \frac{1}{4} \times \sum_{i=1}^4 P(W|D_{i})
$$
Since $P(W|D_{i}) = 0,  (i =2,3,4)$ and  $P(W|D_{1}) = 1$, thus
$$
P(W) = \frac{1}{4}
$$

**(b)**
$$
P(W) = \sum_{i=1}^4 P(W|D_{i})P(D_{i}) = \frac{1}{4} \times \sum_{i=1}^4 P(W|D_{i})
$$
Since in this strategy it's impossible to remain on door $1$, thus $P(W|D_{1}) = 0$,
$$
P(W) = \frac{1}{4}(P(W|D_{2}) + P(W|D_{3}) + P(W|D_{4}))
$$
And $P(W|D_{i}) = 1, (i \neq 1)$, since the contestant switches after Monty opens two doors out of the remaining doors, which all lead to a goat, leaving the contestant with only one door to switch to, which is certainly a car for $i \neq 1$, thus,
$$
P(W) = \frac{1}{4} \times (3) = \frac{3}{4}
$$

**(c)**
$$
P(W) = \sum_{i=1}^4 P(W|D_{i})P(D_{i}) = \frac{1}{4} \times \sum_{i=1}^4 P(W|D_{i})
$$
Since in this strategy it's impossible to remain on door $1$, thus $P(W|D_{1}) = 0$,
$$
P(W) = \frac{1}{4}(P(W|D_{2}) + P(W|D_{3}) + P(W|D_{4}))
$$
And $P(W|D_{i}) = \frac{1}{2}, (i \neq 1)$, since the contestant switches after Monty opens only one door out of the remaining doors, which leads to a goat, leaving the contestant with two doors to switch to, thus,
$$
P(W) = \frac{1}{4}\left( \frac{3}{2} \right) = \frac{3}{8}
$$

**(d)**
$$
P(W) = \sum_{i=1}^4 P(W|D_{i})P(D_{i}) = \frac{1}{4} \times \sum_{i=1}^4 P(W|D_{i})
$$
$$
P(W) = \frac{1}{4} \sum_{j=2}^4 \sum_{i=1}^4 P(W|D_{i},A_{j})P(A_{j}|D_{i})
$$
Since
- $P(W|D_{i},A_{j}) = 0, (i =j)$, because of the second switch making the contestant unable to go back to door $i$, and
- $P(W|D_{i},A_{j}) = 1,(i \neq j)$, because after the first switch landing on a goat door and Monty opening the second goat door the only remaining option for switch would be the car door

Therefore
$$
P(W) = \frac{1}{4}(P(A_{2}|D_{1}) + \dots + P(A_{4}|{D_3}))
$$
Calculating each sentence, For $j= 2,3,4$ and $k=2,3,4$,
- $A_{1} = P(A_{i}|D_{1}), (i=2,3,4)$
	- Calculating for $i=2$, $P(A_{2}|D_{1}) = \sum_{i=2}^4P(A_{2}|D_{1},M_{i})P(M_{i}) = \frac{1}{3}\left( 0 + \frac{1}{2} + \frac{1}{2} \right) = \frac{1}{3}$
 - $A_{2} = P(A_{i}|D_{j}), (i,j=2,3,4)$
	- Calculating for $i,j=2$, $P(A_{2}|D_{2}) = \sum_{i=3,4}^ P(A_{2}|D_{2},M_{i})P(M_{i}) = \frac{1}{2}\left( 0 + \frac{1}{2} + \frac{1}{2} \right) = \frac{1}{4}$

Thus,
$$
P(W) = \frac{1}{4}(3A_{1} + 6A_{2}) = \frac{1}{4} \left( 1 + \frac{3}{2} \right) = \frac{5}{8}
$$

**(e)** Stay-Switch strategy is the best since it is the highest probability of winning the car.

## First-step analysis and gambler’s ruin
### Question 48
**(a)** Since $0$ is the initial value in the sequence, thus $p_{0} = 1$, it is certain that this value is seen, and for any $k < 0$, $p_{k} = 0$, since it is impossible that any negative value be seen in the sequence.

Let $D_{i}$ be the event that a die shows $i$ after rolling, for $p_{i}$ ($i>0$) conditioning on the last die roll we have:
- $p_{1} = P(D_{1})p_{0} = \frac{1}{6}$
- $p_{2} = P(D_{2})p_{0} + P(D_{1})p_{1} = \frac{7}{36}$
- $p_{3} = P(D_{3})p_{0} + P(D_{2})p_{1} + P(D_{1})p_{2} = \frac{49}{216}$
- $p_{4} = P(D_{4})p_{0} + P(D_{3})p_{1} + P(D_{2})p_{2} + P(D_{1})p_{3} = \frac{343}{1296}$
- $p_{5} = P(D_{5})p_{0} + P(D_{4})p_{1} + P(D_{3})p_{2} + P(D_{2})p_{3} + P(D_{1})p_{4} = \frac{2401}{7776}$
- $p_{6} = P(D_{6})p_{0} + P(D_{5})p_{1} + P(D_{4})p_{2} + P(D_{3})p_{3} + P(D_{2})p_{4} + P(D_{1})p_{5} = \frac{16807}{46656}$

Generalizing the sequence we get:
$$
p_{n} = \sum_{i=1}^6 P(D_{i})p_{n-i} = \frac{1}{6} \sum_{i=1}^6 p_{n-i}
$$

**(b)**
$$
p_{7} = \frac{1}{6} (p_{6} + p_{5} +p_{4} + p_{3} + p_{2} +p_{1})
$$
Since $p_{6} = \frac{1}{6}(p_{5} + \dots + p_{0}) \implies 6p_{6} -p_{0} = p_{5}+\dots+p_{1}$, thus,
$$
p_{7} = \frac{1}{6}(7p_{6} - 1) = \frac{1}{6}\left( 7 \times \frac{16807}{46656} - 1 \right) = \frac{70993}{279936} \approx 0.2536
$$

**(c)**
Think of the running total as a sequence of landings on a number line. Since the average value of a single die roll is $1+2+3+4+5+6​=3.5$, the "jumps" you take have an average length of $3.5$ units. Over a long distance $n$, you will land on approximately one out of every $3.5$ integers. Therefore, the probability $p_{n}$​ of hitting any specific integer $n$ stabilizes to the reciprocal of the mean step size:
$$
\lim_{ n \to \infty } p_{n} = \frac{1}{3.5} = \frac{2}{7} \approx 0.2857
$$

---
### Question 49
**(a)**
Let
- $S_{i}$ be the event that the $i$th trial ends in success

Therefore,
$$
P(A_{2}) = P(S_{1}S_{2} \cup S_{1}^cS_{2}^c) = p_{1}p_{2} + q_{1}q_{2} = 1 -q_{1}-q_{2}+2q_{1}q_{2}
$$
Since $b_{i} = q_{i} - \frac{1}{2} \implies q_{i} = b_{i} + \frac{1}{2}$, thus
$$
P(A_{2}) = 1 - b_{1} -\frac{1}{2} -b_{2} -\frac{1}{2} + 2\left( b_{1} +\frac{1}{2} \right)\left( b_{2} +\frac{1}{2} \right) = 2b_{1}b_{2} + \frac{1}{2}
$$

**(b)**
*Base case:*
$$
P(A_{1}) = P(S_{1}^c) = q_{1} = \frac{1}{2} + b_{1}
$$
Which fits
$$
P(A_{n}) = \frac{1}{2} +2^{n-1} \prod_{i=1}^n b_{i}
$$

*Inductive steps:*
Let's assume the formula holds for $n = k$, therefore,
$$
P(A_{k}) = \frac{1}{2} + 2^{k-1} \prod_{i=1}^k b_{i}
$$
Now consider $n = k + 1$, for $k + 1$ trials to have even success count,
- the first $k$ trials must have an even number of successes and the $k + 1$th trial must be a failure
- the first $k$ trials must have an odd number of successes and the $k + 1$th trial must be a success

Thus,
$$
P(A_{k+1}) = P(A_{k})q_{k+1} + (1- P(A_{k}))p_{k+1} = P(A_{k})\left( \frac{1}{2} + b_{k+1} \right) + (1 - P(A_{k}))\left( \frac{1}{2} - b_{k+1} \right)
$$
$$
P(A_{k+1}) = 2P(A_{k})b_{k+1} - b_{k+1} + \frac{1}{2} = b_{k+1} + 2^{k} \prod_{i=1}^{k+1} b_{i} - b_{k+1} + \frac{1}{2} = \frac{1}{2} + 2^{k} \prod_{i=1}^{k+1} b_{i}
$$
The induction is complete.

**(c)**
- for any $i$ if $p_{i} = \frac{1}{2}$,therefore $b_{i} = 1/2 - p_{i} = 0$, thus
$$
\prod_{i=1}^n b_{i} = 0 \implies P(A_{n}) = \frac{1}{2}
$$
- for all $i$, $p_i =0 \implies b_{i} = \frac{1}{2}$, thus
$$
2^{n-1} \prod_{i=1}^n b_{i} = 2^{n-1} \times \left( \frac{1}{2} \right)^n = \frac{1}{2} \implies P(A_{n}) = \frac{1}{2} + \frac{1}{2} = 1
$$
- for all $i$, $p_{i} = 1 \implies b_{i} = -\frac{1}{2}$, thus
$$
2^{n-1} \prod_{i=1}^n b_{i} = 2^{n-1} \times \left( -\frac{1}{2} \right)^n = \frac{1}{2} \implies P(A_{n}) = \frac{1}{2} + (-1)^{n} \frac{1}{2}
$$

---
### Question 50
**(a)**
Let
- $W$ be the event that Calvin wins the match
- $S$ be the event of winning a single game
- $F$ be the event of losing a single game

Therefore,
$$
P(W) = P(W|SS)P(SS) + P(W|FF)P(FF) + P(W|SF,FS)P(SF,FS)
$$
$$
P(W) = 1 \times p^2 + 0 \times q^2 + P(W|SF,FS) \times 2pq
$$
$P(W)$ is the same as $P(W|SF,FS)$, since the score is tied, and they are back to effectively starting the match over, therefore
$$
P(W) = p^2 + 2pqP(W) \implies P(W) = \frac{p^2}{1-2pq} = \frac{p^2}{p^2 + q^2}
$$

**(b)**
Assume there are five states:
- State 0: Hobbes wins the match (Calvin is "ruined").
- State 1: Hobbes is up by 1.
- State 2: The match is tied (Starting position).
- State 3: Calvin is up by 1.
- State 4: Calvin wins the match.

Calvin wins if he reaches State 4 before State 0, starting from State 2. In Gambler's Ruin, the probability of reaching target N starting from i is given by:
$$
P_{i} = \frac{1-\left( \frac{q}{p} \right)^i}{1-\left( \frac{q}{p} \right)^N}
$$
Therefore, for $i=2$ and $N=4$,
$$
P(W) = \frac{1 - \left( \frac{q}{p} \right)^2}{1 -\left( \frac{q}{p} \right)^4} = \frac{1}{1 -\left( \frac{q}{p} \right)^2} = \frac{p^2}{p^2 - q^2}
$$

---
### Question 51
The gambler starts at $i = 1000000$ and quits when he reaches $N = 1000002$, the probability that that he’ll ever be ahead by $2$ dollars is effectively the same as the probability that he reaches $1,000,002$ dollars before reaching $0$ dollars,
$$
P(W) = \frac{1-\left( \frac{\frac{2}{3}}{\frac{1}{3}} \right)^{1000000}}{1-\left( \frac{\frac{2}{3}}{\frac{1}{3}} \right)^{1000002}} = \frac{1 - 2^{1000000}}{1-2^{1000002}}
$$
For the sake of simplicity let $A = 1 - 2^{1000000}$, now let's assume that $P(W) \geq \frac{1}{4}$,
$$
P(W) \geq \frac{1}{4} \implies \frac{1-A}{1-4A} \geq \frac{1}{4} \implies 4 -4A \leq 1 - 4A \implies 4 \leq 1
$$
Which is impossible, therefore $P(W) < \frac{1}{4}$

---
### Question 52
Normalizing $i$ and $N$ in the classic model by $K$,
$$
i \to ki, N \to kN
$$
Therefore the probability that $A$ wins equals
$$
P(W) = \frac{1-\left( \frac{q}{p} \right)^{ki}}{1-\left( \frac{q}{p} \right)^{kN}}
$$
Finding the limit for $k \to \infty$ 
$$
\lim_{ k \to \infty } P(W) = \lim_{ k \to \infty } \frac{1- \left( \frac{q}{p} \right)^{ki}}{1- \left( \frac{q}{p} \right)^{kN}}
$$
Since $0 < p < \frac{1}{2} \implies 1 > 1-p > \frac{1}{2} \implies 1-p>p$, thus $q>p \implies \frac{q}{p} > 1$, and since $k\to \infty$, the $1$s in the denominator and nominator can be committed,
$$
\lim_{ k \to \infty } P(W) = \lim_{ k \to \infty }  \left( \frac{q}{p} \right)^{ki - kN}
$$
Since $i < N$, therefore $ki - kN \to -\infty$, thus
$$
\lim_{ k \to \infty } = 0
$$

---
### Question 53
Let the points on the circle have numbers between $0$ and $99$, with wolf being on point $0$ and the sheep on the other points, therefore the sheep who is opposite the wolf would be on number $50$. For the sheep $50$ to be eaten, first sheep $49$ or $51$ must be eaten, thus by LOTP,
$$
P(\text{50 last}) = P(\text{50 last}|\text{49 before 51})P(\text{49 before 51}) + P(\text{50 last}|\text{51 before 49})P(\text{51 before 49})
$$
By symmetry $P(\text{49 before 51}) = P(\text{51 before 49}) = \frac{1}{2}$, and also $P(\text{50 last}|\text{49 before 51}) = P(\text{50 last}|\text{51 before 49})$, thus,
$$
P(\text{50 last}) = \frac{1}{2}(2 \times P(\text{50 last}|\text{49 before 51})) = P(\text{50 last}|\text{49 before 51})
$$
$P(\text{50 last}|\text{49 before 51})$ can be modeled as the gambler's ruin situation, where the wolf is standing on number $49 \to 1$, and must reach point $51 \to 99$ before he reaches $50 \to 0$,
$$
P(\text{50 last}) = P(\text{50 last}|\text{49 before 51}) = \frac{1}{99}
$$

---
### Question 54
**(a)**
Let $A$ be the event that the man moves one to the right from the origin, therefore,
$$
P(A) = P(A|\text{goes right})P(\text{goes right}) + P(A|\text{goes left})P(\text{goes left})
$$
since $P(A|\text{goes right}) = 1$ and $P(A|\text{goes left}) = P(A)^2$ (man must move twice now), therefore,
$$
P(A) = p + qP(A)^2 \implies qP(A)^2 - P(A) + p = 0
$$
Solving for $P(A)$,
$$
P(A) = \frac{1 \pm \sqrt{1 -4pq}}{2q} = \frac{1 \pm |1 - 2p|}{2q} = 1, \frac{p}{q}
$$
Generalizing,
$$
p_{k} = P(A)^k
$$

**(b)**
- $p > \frac{1}{2}$, therefore for $k > 0$, $p_{k} = \frac{p}{q} > 1$ which can't be true, thus the other root must be the answer $p_{k} = 1$
- $p = \frac{1}{2}$, therefore for $k > 0$, $p_{k} = 1^k = \left( \frac{p}{q} \right)^k = 1$
- $p < \frac{1}{2}$, therefore for $k > 0$, $p_{k} = (\frac{p}{q})^k$, it can't be the other root $1$ since it's biased towards the left

## Simpson's paradox
### Question 55
$$
P(A|C) < P(B|C) \implies \frac{P(A \cap C)}{P(C)} < \frac{P(B \cap C)}{P(C)} \implies P(A \cap C) < P(B \cap C) \text{ (i)}
$$
$$
P(A|C^c) < P(B|C^c) \implies \frac{P(A \cap C^c)}{P(C)} < \frac{P(B \cap C^c)}{P(C)} \implies P(A \cap C^c) < P(B \cap C^c) \text{ (ii)}
$$
Summing $\text{(i)}$ and $\text{(ii)}$,
$$
P(A \cap C) + P(A \cap C^c) < P(B \cap C) + P(B \cap C^c) \implies P(A) < P(B)
$$
Therefore, it's impossible that $P(A) > P(B)$

---
### Question 56
**(a)**
Let
- $H$ be the event that Blackheart will hurt Stampy
- $I$ be the event that Blackheart possesses a large amount of Ivory
- $D$ be the event that Blackheart is an Ivory dealer

**(b)**
- After seeing his supplies $I$, Lisa Argues that $D$ is more probable, $P(D|I) >P(D)$
- Lisa also argues that an Ivory dealer has a more probability of hurting Stampy, $P(H|D) > P(H)$
- Therefore, Lisa claims $P(H|I) > P(H)$. (The evidence of possessing more Ivory increases the chances of hurt)

**(c)** Homer is conditioning on the _amount_ of ivory while ignoring that the ivory itself tells you Blackheart's _profession_. It's like saying a man covered in blood is less likely to be a murderer because he "already has plenty of blood.", Homer here argues that,
$$
P(H|I) < P(H|I^c)
$$
Therefore, conditioning on $D$,
$$
P(H|I,D)P(D|I) + P(H|I,D^c)P(D^c|I) < P(H|I^c,D)P(D|I^c) + P(H|I^c,D^c)P(D^c|I^c)
$$
Here, we can assume that $P(D|I) \approx 1$ and $P(D|I^c) \approx 0$, thus
$$
P(H|I,D) < P(H|I^c,D^c)
$$
Which is logically wrong because an ivory dealer has much higher probability to hurt an elephant for its ivory than a non-dealer.

---
### Question 57
**(a)**
Let
- $C_{1}$ have 80 green gummy bears and 10 red gummy bears ($89\%$)
- $C_{2}$ have 10 green gummy bears and 0 red gummy bears ($100\%$)
- $M_{1}$ have 40 green gummy bears and 8 red gummy bears ($20\%$)
- $M_{2}$ have 89 green gummy bears and 1 red gummy bear ($98\%$)

As can be seen, $C_{1}$ has a bigger percentage than $M_{1}$ and $C_{2}$ has a bigger percentage than $M_{2}$; but $C_{1}$ and $C_{2}$ combined have 90 green gummy bears out of 100 ($90\%$), and $M_{1}$ and $M_{2}$ combined have 91 green gummy bears out of 100 ($91\%$).

**(b)** It is exactly the Simpson's paradox, since sub-events have higher probability compared but have lower probability compared when combined.
Let
- $A$ be the event that a random gummy bear is green
- $B$ be the event that jars are from group $C$
- $C$ be the event that the jar number is $1$

Therefore,
$$
P(A|B,C) > P(A|B^c,C)
$$

$$
P(A|B,C^c) > P(A|B^c,C^c)
$$
but
$$
P(A|B) < P(A|B^c)
$$

---
### Question 58
**(a)** Since $A$ and $B$ are independent, therefore,
$$
P(A|B) = P(A|B^c) = P(A)
$$
Which contradicts the assumption $P(A|B) < P(A|B^c)$, therefore it's impossible.

**(b)** If $A$ and $B$ are independent, therefore,
$$
P(A|C) = P(A|C^c) = P(A)
$$
Also we have,
$$
P(A|C) = P(A|B,C)P(B|C) + P(A|B^c,C)P(B^c|C)
$$
since we are given that $P(A|B,C) < P(A|B^c,C)$, the weighted average $P(A|C)$ must lie strictly between these two values,
$$
P(A|B,C) < P(A|C) < P(A|B^c,C)
$$
Thus,
$$
P(A|B,C) < P(A) < P(A|B^c,C)
$$
And also by the same logic for $C^c$,
$$
P(A|B,C^c) < P(A) < P(A|B^c,C^c)
$$
Now consider the aggregate $P(A∣B)$. This is the weighted average of the two subgroup rates:
$$
P(A∣B)=P(A∣B,C)P(C∣B)+P(A∣B,C^c)P(C^c∣B)
$$
Since both $P(A∣B,C)$ and $P(A∣B,C^c)$ are strictly less than $P(A)$, their weighted average must also be less than $P(A)$.
$$
P(A|B) < P(A)
$$
Similarly, for $P(A∣B^c)$, both subgroup rates are strictly greater than $P(A)$:
$$
P(A∣B^c)>P(A)
$$
This results in $P(A∣B)<P(A∣B^c)$, which preserves the original inequality direction ($<$). The paradox requires a reversal ($>$), so it is impossible.

**(c)** If $B$ and $C$ are independent ($B⊥C$), the treatment assignment is not associated with the con-founder (this is the goal of Randomized Controlled Trials). This implies:
$$
P(C∣B)=P(C∣B^c)=P(C)
$$
Let's expand the aggregate probabilities using the Law of Total Probability:
$$
P(A∣B)=P(A∣B,C)P(C)+P(A∣B,C^c)P(C^c)
$$
$$
P(A∣B^c)=P(A∣B^c,C)P(C)+P(A∣B^c,C^c)P(C^c)
$$
We are given the subgroup inequalities:
- $P(A∣B,C)<P(A∣B^c,C)$
- $P(A∣B,C^c)<P(A∣B^c,C^c)$

Because the weights $P(C)$ and $P(C^c)$ are identical for both equations and non-negative, the inequality is preserved when we sum them up.
$$
P(A∣B)<P(A∣B^c)
$$
The aggregate inequality is strictly <, but the paradox requires >. Thus, it is impossible.

---
### Question 59

---
### Question 60
Let 
- $D$ be the event that the patient is diseased
- $T$ be the event that they tested positive
- $A$ and $B$ be the events that lab A or B is chosen respectively

**(a)** The probability that the patient has the disease, given that they tested positive is $P(T|D)$, using Bayes' rule and LOTP,
$$
P(D|T) = \frac{P(T|D)P(D)}{P(T)} = \frac{p\left( P(T|D,A)P(A|D) + P(T|D,B)P(B|D) \right)}{P(T|A)P(A) + P(T|B)P(B)}
$$
Since $A$ and $B$ are independent from $D$, therefore $P(A|D)=P(A) =\frac{1}{2}$ and $P(B|D) = P(B) = \frac{1}{2}$,
$$
P(D|T) = \frac{p(a_{1}+b_{1})}{P(T|A,D)P(D|A)+P(T|A,D^c)P(D^c|A) + P(T|B,D)P(D|B)+P(T|B,D^c)P(D^c|B)}
$$
Again since $D$ is independent from $A$ and $B$, therefore, $P(D|A) = P(D|B) = p$, thus
$$
P(D|T) = \frac{p(a_{1}+b_{1})}{pa_{1} + (1-p)(1-a_{2}) + pb_{1} + (1-p)(1-b_{2})} = \frac{p(a_{1}+b_{1})}{p(a_{1}+b_{1}) + (1-p)(2- a_{2}-b_{2})}
$$

**(b)** The probability that the patient’s blood sample was analyzed by lab A, given that the patient tested positive is $P(A|T)$, using Bayes' rule,
$$
P(A|T) = \frac{P(T|A)P(A)}{P(T)} = \frac{P(A)[P(T|A,D)P(D|A) + P(T|A,D^c)P(D^c|A)]}{P(T|A)P(A) + P(T|B)P(B)}
$$
Since $P(A) = P(B) = \frac{1}{2}$ and $P(D|A) = P(D|B) = P(D) = p$, thus,
$$
P(A|T) = \frac{pa_{1} + (1-p)(1-a_{2})}{P(T|A) + P(T|B)}
$$
By LOTP,
$$
\begin{aligned}
P(A|T) &= \frac{pa_{1} + (1-p)(1-a_{2})}{P(T|A,D)P(D|A) + P(T|A,D^c)P(D^c|A) + P(T|B,D)P(D|B) + P(T|B,D^c)P(D^c|B)} \\
&= \frac{pa_{1} + (1-p)(1-a_{2})}{pa_{1} + (1-p)(1-a_{2}) + pb_{1} + (1-p)(1-b_{2})}
\end{aligned}
$$

---
### Question 61
Let $A$ be the event that all $n$ tests are positive, therefore,
**(a)** By Bayes' rule
$$
P(D|A) = \frac{P(A|D)P(D)}{P(A)}
$$
Using LOTP,
$$
P(D|A) = \frac{P(A|D)P(D)}{P(A|D)P(D) + P(A|D^c)P(D^c)}
$$
Plugging in the values,
$$
P(D|\text{n/n positive}) = \frac{pa^n}{pa^n + qb^n}
$$

**(b)** Using the notation from above,
$$
P(D|A) = \frac{P(A|D)P(D)}{P(A|D)P(D) + P(A|D^c)P(D^c)} = \frac{pP(A|D)}{pP(A|D) + qP(A|D^c)}
$$
Conditioning over $G$,
$$
P(D|A) = \frac{p[P(A|D,G)P(G|D) + P(A|D,G^c)P(G^c|D)]}{p[P(A|D,G)P(G|D) + P(A|D,G^c)P(G^c|D)] + q[P(A|D^c,G)P(G|D^c) + P(A|D^c,G^c)P(G^c|D^c)]}
$$
Since $G$ and $D$ are independent, thus $P(G|D) = P(G^c|D) = P(G|D^c) = P(G^c|D^c) = \frac{1}{2}$, therefore,
$$
P(D|A) = \frac{p[P(A|D,G) + P(A|D,G^c)]}{p[P(A|D,G) + P(A|D,G^c)] + q[P(A|D^c,G)+P(A|D^c,G^c)]}
$$
Plugging in the values,
$$
P(D|A) = \frac{p(1+a_{0}^{n})}{p(1+a_{0}^{n}) + q(1 + b_{0}^n)}
$$

---
### Question 62
Let
- $M$ be the event that the mother has the disease
- $A_{i}$ be the event that the $i$th child has the disease

**(a)**
$$
P(A_{1}^c,A_{2}^c) = P(A_{1}^c,A_{2}^c|M)P(M) + P(A_{1}^c,A_{2}^c|M)P(M^c) = \frac{1}{3}P(A_{1}^c,A_{2}^c|M) + 1 \times \frac{2}{3}
$$
Since given that the mother has the disease, her children independently will have it with probability $1/2$, therefore, $P(A_{1}^c,A_{2}^c|M) = \left( 1 - \frac{1}{2} \right)^2 = \frac{1}{4}$, thus,
$$
P(A_{1}^c,A_{2}^c) = \frac{1}{3} \times \frac{1}{4} + \frac{2}{3} = \frac{1}{12} + \frac{2}{3} = \frac{3}{4}
$$

**(b)** The children are conditionally independent given M, but they are not unconditionally independent. Learning that one child doesn't have the disease increases the probability that the mother doesn't have it, which affects the probability for the other child.

**(c)** By Bayes's rule and LOTP,
$$
P(M|A_{1}^c,A_{2}^c) = \frac{P(A_{1}^c,A_{2}^c|M)P(M)}{P(A_{1}^c,A_{2}^c)} = \frac{P(A_{1}^c,A_{2}^c|M)P(M)}{P(A_{1}^c,A_{2}^c|M)P(M) + P(A_{1}^c,A_{2}^c|M^c)P(M^c)}
$$
Plugging in the values,
$$
P(M^c|A_{1}^c,A_{2}^c) = \frac{\frac{1}{2} \times \frac{1}{2} \times \frac{1}{3}}{\frac{1}{2} \times \frac{1}{2} \times \frac{1}{3} + 1 \times \frac{2}{3}} = \frac{\frac{1}{12}}{\frac{1}{12} + \frac{2}{3}} = \frac{\frac{1}{12}}{\frac{9}{12}} = \frac{1}{9}
$$

---
### Question 63
The flaw is treating a guaranteed event (being able to find two matching coins) as if it provides useful conditioning information, when it actually doesn't restrict the sample space at all.

---
### Question 64
Let
- $A$ be the event that green ball is drawn before any blue balls
- $G_{i}$ be the event that the $i$th drawn ball is green
- $R_{i}$ be the event that the $i$th drawn ball is red
- $B_{i}$ be the event that the $i$th drawn ball is green

**(a)**
$$
\begin{aligned}
P(A) &= P(A|G_{1})P(G_{1}) + P(A|R_{1})P(R_{1}) +P(A|B_{1})P(B_{1}) \\
&= 1 \times g + rP(A|R_{1}) + 0 \times b \\
&= g + rP(A|R_{1})
\end{aligned}
$$
If the first drawn ball is red, we are essentially back to the initial condition, therefore $P(A|R_{1}) = P(A)$, thus
$$
P(A) = g + rP(A)
$$
Solving for $P(A)$,
$$
P(A) = \frac{g}{1 - r}
$$

**(b)**
$$
\begin{aligned}
P(A) &= P(A|G_{1})P(G_{1}) + P(A|R_{1})P(R_{1}) +P(A|B_{1})P(B_{1}) \\
&= 1 \times g + rP(A|R_{1}) + 0 \times b \\
&= g + rP(A|R_{1})
\end{aligned}
$$
Now $A$ is not independent of $R_{1}$ anymore since there only two green and blue balls are left in the urn, solving $P(A|R_{1})$,
$$
P(A|R_{1}) = \frac{g}{g+b}
$$
Plugging in,
$$
P(A) = g\left( 1 + \frac{r}{g + b} \right) = \frac{g}{g + b}
$$
Which is still the same as before

**(c)**
Let
- $A$ be the event that type $i$ comes before type $j$ $(i \neq j)$
- $B_{ab}$ be the event that type $a$ comes in trial $b$

$$
P(A) = \sum_{k=1}^n P(A|B_{k{1}})P(B_{k{1}})
$$
Since $P(A|B_{i1}) = 1$, $P(A|B_{j1}) = 0$ and $P(A|B_{k1}) = P(A)$ $(k \neq i,j)$, thus
$$
P(A) = p_{i} + P(A)(\sum_{k=1}^n p_{k} - (p_{i} + p_{j})) = p_{i} + P(A)(1 - p_{i} - p_{j})
$$
Solving for $A$,
$$
P(A) = \frac{p_{i}}{p_{i} + p_{j}}
$$

---
### Question 65
**(a)** 
Let
- $A_{i}$ be the event of not drawing "you lose" on the $i$th turn
- $B_{i}$ be the event that "you lose" is still in the bag in the $i$th turn

$$
P(A_{i}) = P(A_{i}|B_{i})P(B_{i}) + P(A_{i}|B_{i}^c)P(B_{i}^c)
$$
The event $B_{i}$ can be modeled as $n \choose i-1$ total possibilities from which "you lose" is not included, thus,
$$
P(B_{i}) = \frac{199 \choose i-1}{200 \choose i-1} = \frac{\frac{199!}{(i-1)!(200 - i)!}}{\frac{200!}{(i -1)!(201-i)!}} = \frac{201 - i}{200} \implies P(B_{i}^c) = \frac{i -1}{200}
$$
Plugging $P(B_{i})$ and $P(B_{i}^c)$ in,
$$
P(A_{i}) = \left( \frac{201 - i}{200} \right)P(A|B_{i}) + \left( \frac{i - 1}{200} \right)P(A|B_{i}^c)
$$
Since $P(A|B_{i}) = \frac{200 -i + 1 - 1}{200 - i + 1} = \frac{200 -i}{201 -i}$ and $P(A|B_{i}^c) = 1$, thus
$$
P(A_{i}) = \frac{200 -i}{200} + \frac{i-1}{200} = \frac{199}{200}
$$
Since $P(A_{i})$ is not a function of $i$, it doesn't matter on which turn you pick your piece of paper.

**(b)** From above notation,
$$
P(A_{i}) = P(A_{i}|B_{i})P(B_{i}) + P(A_{i}|B_{i}^c)P(B_{i}^c)
$$
Since $P(A_{i}|B_{i}^c) =1$ and $P(B^c) = 1 - P(B^c)$, therefore,
$$
P(A_{i}) = P(A_{i}|B_{i})P(B_{i}) + (1 - P(B_{i})) = P(B_{i})(P(A_{i}|B_{i}) - 1) + 1
$$
Solving $P(B_{i})$,
$$
P(B_{i}) = \frac{nw}{nw+v} \times \frac{(n-1)w}{(n-1)w + v} \times \dots \times \frac{(n-i+2)w}{(n-i +2)w + v}
$$
Solving $P(A_{i}|B_{i}) - 1$,
$$
P(A_{i}|B_{i}) - 1 = \frac{(n-i+1)w}{(n-i+1)w + v} - 1= \frac{-v}{(n-i+1)w + v}
$$
Plugging in the values,
$$
\begin{aligned}
P(A_{i}) &= 1 - \frac{v}{(n-i+1)w + v}(\frac{nw}{nw+v} \times \frac{(n-1)w}{(n-1)w + v} \times \dots \times \frac{(n-i+2)w}{(n-i+2)w + v}) \\
&= 1 - \frac{v}{(n - i + 1)w + v} \prod_{j=n-i+2}^n \frac{jw}{jw+v}
\end{aligned}
$$
Solving for $i = 1,2$
- $P(A_{1}) = \frac{nw}{nw+v}$
- $P(A_{2}) = \frac{n(n−1)w^2+(n−1)vw+v^2}{((n-1)w + v)(nw+v)}$

Now let's suppose that $P(A_{i})$ is independent of $i$, thus $P(A_{1}) = P(A_{2})$,
$$
\frac{nw}{nw+v} = \frac{n(n−1)w^2+(n−1)vw+v^2}{((n-1)w + v)(nw+v)}
$$
Which results in,
$$
v = w
$$
Since $P(A_{1}) = P(A_2)$ only when $v=w$, we conclude that in general (when $w \neq v$), the probability depends on position $i$.
- When $v > w$, the "you lose" paper has more weight, so it's more likely to be drawn early, therefore drawing first is better.
- When $w > v$, the "you lose" paper has more weight, so it's less likely to be drawn early, therefore, drawing later is better.

---
