## Exercise Set 2.1
### Question 1
 - $(a + 2b)(a^2 - b)$ can be written in prefix notation
 - All algebraic expressions can be written in prefix notation

---
### Question 2
- All numbers are odd; $2$ is odd

---
### Question 3
- My mind is shot
- The logic is confusing

---
### Question 4
- has $4$ vertices and $6$ edges
- is complete
- it's complete

---
### Question 5
**(a)** Is an statement.

**(b)** Is not an statement. (depends on the context)

**(c)** Is an statement.

**(d)** Is an statement. (we don't know $x$)

---
### Question 6
**(a)** $s \land i$

**(b)** $\neg s \land \neg i$

---
### Question 7
$$
m \land \neg c
$$

---
### Question 8
**(a)** $h \land w \land \neg s$

**(b)** $\neg w \land h \land s$

**(c)** $\neg w \land \neg h \land \neg s$

**(d)** $h \land \neg w \land \neg s$

**(e)** $w \land \neg(h \land s)$

---
### Question 9
**(a)** $p \land q$

**(b)** $r \land p$

**(c)** $r \land (p \lor q)$

---
### Question 10
**(a)** $p \land q \land r$

**(b)** $p \land \neg q$

**(c)** $p \land (\neg q \lor \neg r)$

**(d)** $\neg p \land q \land \neg r$

**(e)** $\neg p \lor (q \land r)$

---
### Question 11
Both conditions can be true simultaneously. For example, if a team wins games 1, 3, and 4, they have:
- Two games in a row (games 3-4)
- Three total games
Therefore it's inclusive.

---
### Question 12

| $p$ | $q$ | $\neg p$ | $\neg p \land q$ |
| --- | --- | -------- | ---------------- |
| $T$ | $T$ | $F$      | $F$              |
| $T$ | $F$ | $F$      | $F$              |
| $F$ | $T$ | $T$      | $T$              |
| $F$ | $F$ | $T$      | $F$              |

---
### Question 13

| $p$ | $q$ | $p \land q$ | $\neg (p \land q)$ | $p \lor q$ | $\neg(p \land q) \lor (p \lor q)$ |
| --- | --- | ----------- | ------------------ | ---------- | --------------------------------- |
| $T$ | $T$ | $T$         | $F$                | $T$        | $T$                               |
| $T$ | $F$ | $F$         | $T$                | $T$        | $T$                               |
| $F$ | $T$ | $F$         | $T$                | $T$        | $T$                               |
| $F$ | $F$ | $F$         | $T$                | $F$        | $T$                               |

---
### Question 14

| $p$ | $q$ | $r$ | $q \land r$ | $p \land (q \land r)$ |
| --- | --- | --- | ----------- | --------------------- |
| $T$ | $T$ | $T$ | $T$         | $T$                   |
| $T$ | $T$ | $F$ | $F$         | $F$                   |
| $T$ | $F$ | $T$ | $F$         | $F$                   |
| $T$ | $F$ | $F$ | $F$         | $F$                   |
| $F$ | $T$ | $T$ | $T$         | $F$                   |
| $F$ | $T$ | $F$ | $F$         | $F$                   |
| $F$ | $F$ | $T$ | $F$         | $F$                   |
| $F$ | $F$ | $F$ | $F$         | $F$                   |

---
### Question 15

| $p$ | $q$ | $r$ | $\neg q$ | $\neg q \lor r$ | $p \land (\neg q \lor r)$ |
| --- | --- | --- | -------- | --------------- | ------------------------- |
| $T$ | $T$ | $T$ | $F$      | $T$             | $T$                       |
| $T$ | $T$ | $F$ | $F$      | $F$             | $F$                       |
| $T$ | $F$ | $T$ | $T$      | $T$             | $T$                       |
| $T$ | $F$ | $F$ | $T$      | $T$             | $T$                       |
| $F$ | $T$ | $T$ | $F$      | $T$             | $F$                       |
| $F$ | $T$ | $F$ | $F$      | $F$             | $F$                       |
| $F$ | $F$ | $T$ | $T$      | $T$             | $F$                       |
| $F$ | $F$ | $F$ | $T$      | $T$             | $F$                       |

---
### Question 16
They are logically equivalent; if $p$ is true, therefore $p \lor (p \land q)$ is always true, and if it's false, $p \lor (p \land q)$ is always false.

| $p$ | $q$ | $p \land q$ | $p \lor (p \land q)$ |
| --- | --- | ----------- | -------------------- |
| $T$ | $T$ | $T$         | $T$                  |
| $T$ | $F$ | $F$         | $T$                  |
| $F$ | $T$ | $F$         | $F$                  |
| $F$ | $F$ | $F$         | $F$                  |

---
### Question 17
They are not logically equivalent.

| $p$ | $q$ | $p \land q$ | $\neg (p \land q)$ | $\neg p$ | $\neg q$ | $\neg p \land \neg q$ |
| --- | --- | ----------- | ------------------ | -------- | -------- | --------------------- |
| $T$ | $T$ | $T$         | $F$                | $F$      | $F$      | $F$                   |
| $T$ | $F$ | $F$         | $T$                | $F$      | $T$      | $F$                   |
| $F$ | $T$ | $F$         | $T$                | $T$      | $F$      | $F$                   |
| $F$ | $F$ | $F$         | $T$                | $T$      | $T$      | $T$                   |

---
### Question 18
They are logically equivalent. The disjucntion of an statement with a tautology is always true, therefore a tautology.

| $p$ | $p \lor t$ |
| --- | ---------- |
| $T$ | $T$        |
| $F$ | $T$        |

---
### Question 19
They are logically equivalent. The conjuction of an statement with a tautology is logically equivalent with the statement.

| $p$ | $p \land t$ |
| --- | ----------- |
| $T$ | $T$         |
| $F$ | $F$         |

---
### Question 20
They are not logically equivalent. $p \land c$ is a contradication, but $p \lor c$ is logically equivalent to $p$.

| $p$ | $p \land c$ | $p \lor c$ |
| --- | ----------- | ---------- |
| $T$ | $F$         | $T$        |
| $F$ | $F$         | $F$        |

---
### Question 21
They are logically equivalent, due to associative laws.

| $p$ | $q$ | $r$ | $p \land q$ | $(p \land q) \land r$ | $q \land r$ | $p \land (q \land r)$ |
| --- | --- | --- | ----------- | --------------------- | ----------- | --------------------- |
| $T$ | $T$ | $T$ | $T$         | $T$                   | $T$         | $T$                   |
| $T$ | $T$ | $F$ | $T$         | $F$                   | $F$         | $F$                   |
| $T$ | $F$ | $T$ | $F$         | $F$                   | $F$         | $F$                   |
| $T$ | $F$ | $F$ | $F$         | $F$                   | $F$         | $F$                   |
| $F$ | $T$ | $T$ | $F$         | $F$                   | $T$         | $F$                   |
| $F$ | $T$ | $F$ | $F$         | $F$                   | $F$         | $F$                   |
| $F$ | $F$ | $T$ | $F$         | $F$                   | $F$         | $F$                   |
| $F$ | $F$ | $F$ | $F$         | $F$                   | $F$         | $F$                   |

---
### Question 22
They are logically equivalent, due to distributive laws.

| $p$ | $q$ | $r$ | $q \lor r$ | $p \land (q \lor r)$ | $p \land q$ | $p \land r$ | $(p \land q) \lor (p \land r)$ |
| --- | --- | --- | ---------- | -------------------- | ----------- | ----------- | ------------------------------ |
| $T$ | $T$ | $T$ | $T$        | $T$                  | $T$         | $T$         | $T$                            |
| $T$ | $T$ | $F$ | $T$        | $T$                  | $T$         | $F$         | $T$                            |
| $T$ | $F$ | $T$ | $T$        | $T$                  | $F$         | $T$         | $T$                            |
| $T$ | $F$ | $F$ | $F$        | $F$                  | $F$         | $F$         | $F$                            |
| $F$ | $T$ | $T$ | $T$        | $F$                  | $F$         | $F$         | $F$                            |
| $F$ | $T$ | $F$ | $T$        | $F$                  | $F$         | $F$         | $F$                            |
| $F$ | $F$ | $T$ | $T$        | $F$                  | $F$         | $F$         | $F$                            |
| $F$ | $F$ | $F$ | $F$        | $F$                  | $F$         | $F$         | $F$                            |

---
### Question 23
They are not equally equivalent. 

| $p$ | $q$ | $r$ | $p \land q$ | $(p \land q) \lor r$ | $q \lor r$ | $p \land (q \lor r)$ |
| --- | --- | --- | ----------- | -------------------- | ---------- | -------------------- |
| $T$ | $T$ | $T$ | $T$         | $T$                  | $T$        | $T$                  |
| $T$ | $T$ | $F$ | $T$         | $T$                  | $T$        | $T$                  |
| $T$ | $F$ | $T$ | $F$         | $T$                  | $T$        | $T$                  |
| $T$ | $F$ | $F$ | $F$         | $F$                  | $F$        | $F$                  |
| $F$ | $T$ | $T$ | $F$         | $T$                  | $T$        | $F$                  |
| $F$ | $T$ | $F$ | $F$         | $F$                  | $T$        | $F$                  |
| $F$ | $F$ | $T$ | $F$         | $T$                  | $T$        | $F$                  |
| $F$ | $F$ | $F$ | $F$         | $F$                  | $F$        | $F$                  |

---
### Question 24
They are not equally equivalent.

| $p$ | $q$ | $r$ | $p \lor q$ | $p \land r$ | $(p \lor q) \lor (p \land r)$ | $(p \lor q) \land r$ |
| --- | --- | --- | ---------- | ----------- | ----------------------------- | -------------------- |
| $T$ | $T$ | $T$ | $T$        | $T$         | $T$                           | $T$                  |
| $T$ | $T$ | $F$ | $T$        | $F$         | $T$                           | $F$                  |
| $T$ | $F$ | $T$ | $T$        | $T$         | $T$                           | $T$                  |
| $T$ | $F$ | $F$ | $T$        | $F$         | $T$                           | $F$                  |
| $F$ | $T$ | $T$ | $T$        | $F$         | $T$                           | $T$                  |
| $F$ | $T$ | $F$ | $T$        | $F$         | $T$                           | $F$                  |
| $F$ | $F$ | $T$ | $F$        | $F$         | $F$                           | $F$                  |
| $F$ | $F$ | $F$ | $F$        | $F$         | $F$                           | $F$                  |

---
### Question 25
Hal is not a math major or Hal's sister is not a computer science major.

---
### Question 26
Sam is not an orange belt or Kate is not a red belt.

---
### Question 27
The connector is not loose and the machine is plugged.

---
### Question 28
The train is not late and my watch is not fast.

---
### Question 29
This computer program doesn't have a logical error in the first ten lines and it is not being run with an incomplete data set.

---
### Question 30
The dollar is not at an all-time high or the stock market is not at a record low.

---
### Question 31
**(a)** The first character of $s$ is either $0$ or $1$ and the second character of $s$ is either $1$ or $2$.

**(b)** The first character if $s$ is neither $0$ nor $1$ and the second character of $s$ is either $1$ or $2$.

**(c)** The first character is either $1$ or $2$ and the second character is either $0$ or $1$. 

---
### Question 32
$$
x \leq -2 \text{ or } 7 \leq x
$$

---
### Question 33
$$
x \leq -10 \text{ or } 2 \leq x
$$

---
### Question 34
$$
2 \leq x \leq 5
$$

---
### Question 35
$$
-1 < x \leq 1
$$

---
### Question 36
$$
x < -3 \text{ or } 1 \leq x
$$

---
### Question 37
$$
x < -7 \text{ or } 0 \leq x
$$

---
### Question 38
$$
(\text{num-orders}\leq 100 \text{ or } \text{num-instock} > 500) \text{ and } \text{num-instock} \geq 200
$$

---
### Question 39
$$
\begin{aligned}
&(\text{num-orders} \geq 50 \text{ or } \text{num-instock} \leq 300) \text{ and}\\
&((\text{num-orders} < 50 \text{ or } \text{num-orders} \geq 75) \text{ or } \text{num-instock} \leq 500)
\end{aligned}
$$

---
### Question 40
It's a tautology.

| $p$ | $q$ | $p \land q$ | $\neg p$ | $\neg q$ | $p \land \neg q$ | $\neg p \lor (p \land \neg q)$ | $(p \land q) \lor(\neg p \lor (p \land \neg q))$ |
| --- | --- | ----------- | -------- | -------- | ---------------- | ------------------------------ | ------------------------------------------------ |
| $T$ | $T$ | $T$         | $F$      | $F$      | $F$              | $F$                            | $T$                                              |
| $T$ | $F$ | $F$         | $F$      | $T$      | $T$              | $T$                            | $T$                                              |
| $F$ | $T$ | $F$         | $T$      | $F$      | $F$              | $T$                            | $T$                                              |
| $F$ | $F$ | $F$         | $T$      | $T$      | $F$              | $T$                            | $T$                                              |

---
### Question 41
It's a contradiction.

| $p$ | $q$ | $\neg p$ | $\neg q$ | $p \land \neg q$ | $\neg p \lor q$ | $(p \land \neg q) \land (\neg p \lor q)$ |
| --- | --- | -------- | -------- | ---------------- | --------------- | ---------------------------------------- |
| $T$ | $T$ | $F$      | $F$      | $F$              | $T$             | $F$                                      |
| $T$ | $F$ | $F$      | $T$      | $T$              | $F$             | $F$                                      |
| $F$ | $T$ | $T$      | $F$      | $F$              | $T$             | $F$                                      |
| $F$ | $F$ | $T$      | $T$      | $F$              | $F$             | $F$                                      |

---
### Question 42
It's a contradiction.

| $p$ | $q$ | $r$ | $\neg p$ | $\neg p \land q$ | $q \land r$ | $(\neg p \land q) \land (q \land r)$ | $\neg q$ | $((\neg p \land q) \land (q \land r)) \land \neg q$ |
| --- | --- | --- | -------- | ---------------- | ----------- | ------------------------------------ | -------- | --------------------------------------------------- |
| $T$ | $T$ | $T$ | $F$      | $F$              | $T$         | $F$                                  | $F$      | $F$                                                 |
| $T$ | $T$ | $F$ | $F$      | $F$              | $F$         | $F$                                  | $F$      | $F$                                                 |
| $T$ | $F$ | $T$ | $F$      | $F$              | $F$         | $F$                                  | $T$      | $F$                                                 |
| $T$ | $F$ | $F$ | $F$      | $F$              | $F$         | $F$                                  | $T$      | $F$                                                 |
| $F$ | $T$ | $T$ | $T$      | $T$              | $T$         | $T$                                  | $F$      | $F$                                                 |
| $F$ | $T$ | $F$ | $T$      | $T$              | $F$         | $F$                                  | $F$      | $F$                                                 |
| $F$ | $F$ | $T$ | $T$      | $F$              | $F$         | $F$                                  | $T$      | $F$                                                 |
| $F$ | $F$ | $F$ | $T$      | $F$              | $F$         | $F$                                  | $T$      | $F$                                                 |

---
### Question 43
It's a tautology.

| $p$ | $q$ | $\neg p$ | $\neg q$ | $\neg p \lor q$ | $p \land \neg q$ | $(\neg p \lor q) \lor (p \land \neg q)$ |
| --- | --- | -------- | -------- | --------------- | ---------------- | --------------------------------------- |
| $T$ | $T$ | $F$      | $F$      | $T$             | $F$              | $T$                                     |
| $T$ | $F$ | $F$      | $T$      | $F$             | $T$              | $T$                                     |
| $F$ | $T$ | $T$      | $F$      | $T$             | $F$              | $T$                                     |
| $F$ | $F$ | $T$      | $T$      | $T$             | $F$              | $T$                                     |

---
### Question 44
**(a)** There is no real number that can satisfy $x > 2 \text{ and } (x = 0 \text{ or } x < 0)$

**(b)** There is no real number that can satisfy $(x = 1 \text{ or } x > 1) \text{ and } x < -1$

---
### Question 45
Let
- The statement "Bob is a math major" be $p$.
- The statement "Bob is a computer science major" be $q$.
- The statement "Ann is a math major" be $r$.
- The statement "Ann is a computer major" be $s$.

**(a)** The statement is equivalent to $(p \land q) \land (r \land \neg s)$

**(b)** The statement is equivalent to $\neg(p \land r \land q \land s) \land (r \land (p \land q))$

In the second statement let $A \equiv (p \land q \land r)$, therefore the second statement is equivalent to,
$$
\neg (s \land A) \land A \equiv (\neg s \lor \neg A) \land A
$$
For this statement to be true, $A$ and $(\neg s \lor \neg A)$ must both be true, assuming $A$ as true would make $\neg A$ false, therefore $\neg s$ has to be true. In conclusion, for this statement is logically equivalent to $p \land q \land r \land \neg s$. which is the same as the first statement.

---
### Question 46
**(a)** 
- $p \oplus p \equiv (p \lor p) \land \neg (p \land p) \equiv (p \lor p) \land (\neg p \lor \neg p) \equiv p \land \neg p \equiv F$
- $(p \oplus p) \oplus p \equiv F \oplus p \equiv (F \lor p) \land \neg(F \land p) \equiv p \land \neg F \equiv p \land T \equiv p$

**(b)**
They are logically equivalent.

| $p$ | $q$ | $r$ | $p \oplus q$ | $(p \oplus q) \oplus r$ | $q \oplus r$ | $p \oplus (q \oplus r)$ |
| --- | --- | --- | ------------ | ----------------------- | ------------ | ----------------------- |
| $T$ | $T$ | $T$ | $F$          | $T$                     | $F$          | $T$                     |
| $T$ | $T$ | $F$ | $F$          | $F$                     | $T$          | $F$                     |
| $T$ | $F$ | $T$ | $T$          | $F$                     | $T$          | $F$                     |
| $T$ | $F$ | $F$ | $T$          | $T$                     | $F$          | $T$                     |
| $F$ | $T$ | $T$ | $T$          | $F$                     | $F$          | $F$                     |
| $F$ | $T$ | $F$ | $T$          | $T$                     | $T$          | $T$                     |
| $F$ | $F$ | $T$ | $F$          | $T$                     | $T$          | $T$                     |
| $F$ | $F$ | $F$ | $F$          | $F$                     | $F$          | $F$                     |

**(c)**
They are not logically equivalent.

| $p$ | $q$ | $r$ | $p \oplus q$ | $(p \oplus q) \oplus r$ | $p \land r$ | $q \land r$ | $(p \land r) \oplus (q \land r)$ |
| --- | --- | --- | ------------ | ----------------------- | ----------- | ----------- | -------------------------------- |
| $T$ | $T$ | $T$ | $F$          | $T$                     | $T$         | $T$         | $F$                              |
| $T$ | $T$ | $F$ | $F$          | $F$                     | $F$         | $F$         | $F$                              |
| $T$ | $F$ | $T$ | $T$          | $F$                     | $T$         | $F$         | $T$                              |
| $T$ | $F$ | $F$ | $T$          | $T$                     | $F$         | $F$         | $F$                              |
| $F$ | $T$ | $T$ | $T$          | $F$                     | $F$         | $T$         | $T$                              |
| $F$ | $T$ | $F$ | $T$          | $T$                     | $F$         | $F$         | $F$                              |
| $F$ | $F$ | $T$ | $F$          | $T$                     | $F$         | $F$         | $F$                              |
| $F$ | $F$ | $F$ | $F$          | $F$                     | $F$         | $F$         | $F$                              |

---
### Question 47
This is asking about English usage where two positive statements combine to create a negative meaning.

Common example: "Yeah, right!"
- When said sarcastically, this means "I don't believe you" or "That's not true"
- Both "yeah" and "right" are positive affirmations, but together (with sarcastic tone) they express disbelief

Other examples:
- "Sure, sure" (said dismissively)
- "Of course, of course" (said sarcastically)
- "Absolutely" (said with heavy sarcasm)

The key is that the repetition or tone converts the affirmative into ironic negation.

---
### Question 48
- Step (a): Distributive laws
- Step (b): Commutative laws
- Step (c): Negation Laws
- Step (d): Identity Laws

---
### Question 49
- Step (a): Commutative laws
- Step (b): Distributive laws
- Step (c): Negation Laws
- Step (d): Identity Laws

---
### Question 50
By Absorption Laws:
$$
(p \land \neg q) \lor p \equiv p
$$

---
### Question 51
By Absorption Laws:
$$
p \land (\neg q \lor p) \equiv p
$$

---
### Question 52
By De Morgan's Laws:
$$
\neg (p \lor \neg q) \lor (\neg p \land \neg q) \equiv (\neg p \land q) \lor (\neg p \land \neg q)
$$
By Distributive Laws:
$$
\neg (p \lor \neg q) \lor (\neg p \land \neg q) \equiv \neg p \land (q \lor \neg q)
$$
By Negation Laws:
$$
\neg (p \lor \neg q) \lor (\neg p \land \neg q) \equiv \neg p \land T
$$
By Identity Laws:
$$
\neg (p \lor \neg q) \lor (\neg p \land \neg q) \equiv \neg p
$$

---
### Question 53
By De Morgan's Laws:
$$
\neg((\neg p \land q) \lor (\neg p \land \neg q)) \lor (p \land q) \equiv ((p \lor \neg q) \land (p \lor q)) \lor (p \land q)
$$
By Distributive Laws:
$$
\neg((\neg p \land q) \lor (\neg p \land \neg q)) \lor (p \land q) \equiv (p \lor (q \land \neg q)) \lor (p \land q)
$$
By Negation Laws:
$$
\neg((\neg p \land q) \lor (\neg p \land \neg q)) \lor (p \land q) \equiv (p \lor F) \lor (p \land q)
$$
By Identity Laws:
$$
\neg((\neg p \land q) \lor (\neg p \land \neg q)) \lor (p \land q) \equiv p \lor (p \land q)
$$
By Absorption Laws:
$$
\neg((\neg p \land q) \lor (\neg p \land \neg q)) \lor (p \land q) \equiv p
$$

---
### Question 54
By De Morgan's Law:
$$
(p \land (\neg(\neg p \lor q))) \lor (p \land q) \equiv (p \land (p \land \neg q)) \lor (p \land q)
$$
By Associative and Idempotent Laws:
$$
(p \land (\neg(\neg p \lor q))) \lor (p \land q) \equiv (p \land \neg q) \lor (p \land q)
$$
By Distributive Laws:
$$
(p \land (\neg(\neg p \lor q))) \lor (p \land q) \equiv p \land (q \lor \neg q)
$$
By Negation Laws:
$$
(p \land (\neg(\neg p \lor q))) \lor (p \land q) \equiv p \land T
$$
By Identity Laws:
$$
(p \land (\neg(\neg p \lor q))) \lor (p \land q) \equiv p
$$

## Exercise Set 2.2
### Question 1
If it doesn't contain a stop or a to go, then this loop will repeat exactly $N$ times.

---
### Question 2
If I catch the 8:05 bus, then I will be on time for work.

---
### Question 3
If you don't freeze I will shoot.

---
### Question 4
If you don't fix my ceiling I will not pay my rent.

---
### Question 5

| $p$ | $q$ | $\neg p$ | $\neg q$ | $\neg p \lor q$ | $\neg p \lor q \to \neg q$ |
| --- | --- | -------- | -------- | --------------- | -------------------------- |
| $T$ | $T$ | $F$      | $F$      | $T$             | $F$                        |
| $T$ | $F$ | $F$      | $T$      | $F$             | $T$                        |
| $F$ | $T$ | $T$      | $F$      | $T$             | $F$                        |
| $F$ | $F$ | $T$      | $T$      | $T$             | $T$                        |

---
### Question 6

| $p$ | $q$ | $\neg p$ | $p \lor q$ | $\neg p \land q$ | $(p \lor q) \lor (\neg p \land q)$ | $(p \lor q) \lor (\neg p \land q) \to q$ |
| --- | --- | -------- | ---------- | ---------------- | ---------------------------------- | ---------------------------------------- |
| $T$ | $T$ | $F$      | $T$        | $F$              | $T$                                | $T$                                      |
| $T$ | $F$ | $F$      | $T$        | $F$              | $T$                                | $F$                                      |
| $F$ | $T$ | $T$      | $T$        | $T$              | $T$                                | $T$                                      |
| $F$ | $F$ | $T$      | $F$        | $F$              | $F$                                | $T$                                      |

---
### Question 7

| $p$ | $q$ | $r$ | $\neg q$ | $p \land \neg q$ | $p \land \neg q \to r$ |
| --- | --- | --- | -------- | ---------------- | ---------------------- |
| $T$ | $T$ | $T$ | $F$      | $F$              | $T$                    |
| $T$ | $T$ | $F$ | $F$      | $F$              | $T$                    |
| $T$ | $F$ | $T$ | $T$      | $T$              | $T$                    |
| $T$ | $F$ | $F$ | $T$      | $T$              | $F$                    |
| $F$ | $T$ | $T$ | $F$      | $F$              | $T$                    |
| $F$ | $T$ | $F$ | $F$      | $F$              | $T$                    |
| $F$ | $F$ | $T$ | $T$      | $F$              | $T$                    |
| $F$ | $F$ | $F$ | $T$      | $F$              | $T$                    |

---
### Question 8

| $p$ | $q$ | $r$ | $\neg p$ | $\neg p \lor q$ | $\neg p \lor q \to r$ |
| --- | --- | --- | -------- | --------------- | --------------------- |
| $T$ | $T$ | $T$ | $F$      | $T$             | $T$                   |
| $T$ | $T$ | $F$ | $F$      | $T$             | $F$                   |
| $T$ | $F$ | $T$ | $F$      | $F$             | $T$                   |
| $T$ | $F$ | $F$ | $F$      | $F$             | $T$                   |
| $F$ | $T$ | $T$ | $T$      | $T$             | $T$                   |
| $F$ | $T$ | $F$ | $T$      | $T$             | $F$                   |
| $F$ | $F$ | $T$ | $T$      | $T$             | $T$                   |
| $F$ | $F$ | $F$ | $T$      | $T$             | $F$                   |

---
### Question 9

| $p$ | $q$ | $r$ | $\neg r$ | $p \land \neg r$ | $q \lor r$ | $p \land \neg r \leftrightarrow q \lor r$ |
| --- | --- | --- | -------- | ---------------- | ---------- | ----------------------------------------- |
| $T$ | $T$ | $T$ | $F$      | $F$              | $T$        | $F$                                       |
| $T$ | $T$ | $F$ | $T$      | $T$              | $T$        | $T$                                       |
| $T$ | $F$ | $T$ | $F$      | $F$              | $T$        | $F$                                       |
| $T$ | $F$ | $F$ | $T$      | $T$              | $F$        | $T$                                       |
| $F$ | $T$ | $T$ | $F$      | $F$              | $T$        | $F$                                       |
| $F$ | $T$ | $F$ | $T$      | $F$              | $T$        | $F$                                       |
| $F$ | $F$ | $T$ | $F$      | $F$              | $T$        | $F$                                       |
| $F$ | $F$ | $F$ | $T$      | $F$              | $F$        | $T$                                       |

---
### Question 10

| $p$ | $q$ | $r$ | $p \to r$ | $q \to r$ | $(p \to r) \leftrightarrow (q \to r)$ |
| --- | --- | --- | --------- | --------- | ------------------------------------- |
| $T$ | $T$ | $T$ | $T$       | $T$       | $T$                                   |
| $T$ | $T$ | $F$ | $F$       | $F$       | $T$                                   |
| $T$ | $F$ | $T$ | $T$       | $T$       | $T$                                   |
| $T$ | $F$ | $F$ | $F$       | $T$       | $F$                                   |
| $F$ | $T$ | $T$ | $T$       | $T$       | $T$                                   |
| $F$ | $T$ | $F$ | $T$       | $F$       | $F$                                   |
| $F$ | $F$ | $T$ | $T$       | $T$       | $T$                                   |
| $F$ | $F$ | $F$ | $T$       | $T$       | $T$                                   |

---
### Question 11

| $p$ | $q$ | $r$ | $q \to r$ | $p \to (q \to r)$ | $p \land q$ | $(p \land q) \to r$ | $(p \to (q \to r)) \leftrightarrow ((p \land q) \to r)$ |
| --- | --- | --- | --------- | ----------------- | ----------- | ------------------- | ------------------------------------------------------- |
| $T$ | $T$ | $T$ | $T$       | $T$               | $T$         | $T$                 | $T$                                                     |
| $T$ | $T$ | $F$ | $F$       | $F$               | $T$         | $F$                 | $T$                                                     |
| $T$ | $F$ | $T$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $T$ | $F$ | $F$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $T$ | $T$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $T$ | $F$ | $F$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $F$ | $T$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $F$ | $F$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |

---
### Question 12
If $x > 2$ then $x^2 > 4$ and if $x < -2$ then $x^2 > 4$.

---
### Question 13
**(a)**

| $p$ | $q$ | $\neg p$ | $\neg p \lor q$ | $p \to q$ |
| --- | --- | -------- | --------------- | --------- |
| $T$ | $T$ | $F$      | $T$             | $T$       |
| $T$ | $F$ | $F$      | $F$             | $F$       |
| $F$ | $T$ | $T$      | $T$             | $T$       |
| $F$ | $F$ | $T$      | $T$             | $T$       |

Saying "if A then B" is the same as saying "Not A or B".

**(b)**

| $p$ | $q$ | $p \to q$ | $\neg(p \to q)$ | $\neg q$ | $p \land \neg q$ |
| --- | --- | --------- | --------------- | -------- | ---------------- |
| $T$ | $T$ | $T$       | $F$             | $F$      | $F$              |
| $T$ | $F$ | $F$       | $T$             | $T$      | $T$              |
| $F$ | $T$ | $T$       | $F$             | $F$      | $F$              |
| $F$ | $F$ | $T$       | $F$             | $T$      | $F$              |

The negation of "if A then B" is "A and not B".

---
### Question 14
**(a)**
Consider $p \to q \lor r$, since $p \to q \equiv \neg p \lor q$, thus
$$
p \to q \lor r \equiv \neg p \lor q \lor r
$$
By the same logic,
$$
\neg p \lor q \lor r \equiv \neg (\neg p \lor q) \to r
$$
$$
\neg p \lor q \lor r \equiv \neg (\neg p \lor r) \to q
$$
Using De Morgan's law,
$$
\neg (\neg p \lor q) \to r \equiv (p \land \neg q) \to r
$$
$$
\neg (\neg p \lor r) \to q \equiv (p \land \neg r) \to q
$$

**(b)**
- If $n$ is a prime and $n$ is not odd, then $n$ is $2$.
- If $n$ is a prime and $n$ is not $2$, then $n$ is odd.

---
### Question 15
Assume $p \equiv F$, $q \equiv T$ and $r \equiv F$, therefore,
- $p \to (q \to r) \equiv F \to (T \to F) \equiv F \to F \equiv T$
- $(p \to q) \to r \equiv (F \to T) \to F \equiv T \to F \equiv F$

Therefore they are not logically equivalent.

---
### Question 16
Let,
- $p$ be "You paid full price"
- $q$ be "You bought it at Crown Books"

Thus,
- First statement: $p \to \neg q$
- Second statement: $\neg q \lor p$

| $p$ | $q$ | $\neg q$ | $p \to \neg q$ | $\neg q \lor p$ |
| --- | --- | -------- | -------------- | --------------- |
| $T$ | $T$ | $F$      | $F$            | $T$             |
| $T$ | $F$ | $T$      | $T$            | $T$             |
| $F$ | $T$ | $F$      | $T$            | $F$             |
| $F$ | $F$ | $T$      | $T$            | $T$             |

No, they are not logically equivalent.

---
### Question 17
Let,
- $p$ be "$2$ is a factor of $n$"
- $q$ be "$3$ is a factor of $n$"
- $r$ be "$6$ is a factor of $n$"

Thus,
- First statement: $p \land q \to r$
- Second statement: $\neg p \lor \neg q \lor r$

They are logically equivalent since,
$$
p \land q \to r \equiv \neg(p \land q) \lor r \equiv \neg p \lor \neg q \lor r
$$

---
### Question 18
Let,
- $p$ be "It walks like a duck."
- $q$ be "It talks like a duck."
- $r$ be "It is a duck."

Thus,
- First statement: $p \land q \to r$
- Second statement: $(\neg p \lor \neg q) \lor r$
- Third statement: $\neg p \land \neg q \to \neg r$

The first and second statements are logically equivalent since,
$$
p \land q \to r \equiv \neg(p \land q) \lor r \equiv (\neg p \lor \neg q) \lor r
$$
But they are not logically equivalent with the first one, assume $p \equiv F$, $q \equiv F$ and $r \equiv T$, thus:
- $p \land q \to r \equiv F \land F \to T \equiv F\to T \equiv T$
- $\neg p \land \neg q \to \neg r \equiv T \land T \to F \equiv T \to F \equiv F$

---
### Question 19
Let,
- $p$ be "Sue is Luiz's mother."
- $q$ be "Ali is his cousin."

Thus,
- First statement: $p \to q$
- Second statement: $p \to \neg q$

The negation of the first statement would be,
$$
\neg (p \to q) \equiv \neg (\neg p \lor q) \equiv p \land \neg q
$$
Which is not logically equivalent to the second statement,
$$
p \to \neg q \equiv \neg p \lor \neg q
$$

---
### Question 20
**(a)** $P$ is a square and $P$ is not a rectangle.

**(b)** Today is New Year's Eve and tomorrow is not January.

**(c)** The decimal expansion of $r$ is terminating and $r$ is not rational.

**(d)** $n$ is prime and $n$ is not odd and $n$ is not $2$.

**(e)** $x$ is non-negative and $x$ is not positive and $x$ is not $0$.

**(f)** Tom is Ann's father and, Jim is not her uncle or Sue is not her aunt.

**(g)** $n$ is divisible by $6$ and, $n$ is not divisible by $2$ or $n$ is not divisible by $3$.

---
### Question 21
Since $p \to q \equiv F$, therefore $p \equiv T$ and $q \equiv F$, thus,
**(a)** $\neg p \to q \equiv \neg T \to F \equiv F \to F \equiv T$

**(b)** $p \lor q \equiv T \lor F \equiv T$

**(c)** $q \to p \equiv F \to T \equiv T$

---
### Question 22
**(a)** If $P$ is not a rectangle then $P$ is not a square.

**(b)** If tomorrow is not January then today is not New Year's Eve.

**(c)** If $r$ is not rational then the decimal expansion of $r$ is not terminating.

**(d)** If $n$ is not odd and $n$ is not $2$ then $n$ is not prime.

**(e)** If $x$ is not positive and $x$ is not $0$ then it is not non-negative.

**(f)** If Jim is not her uncle or Sue is not her aunt then Tom is not Ann's father.

**(g)** If $n$ is not divisible by $2$ or $n$ is not divisible by $3$ then $n$ is not divisible by $6$.

---
### Question 23
**(a)**
- Converse: If $P$ is a rectangle then $P$ is a square.
- Inverse: If $P$ is not a square then $P$ is not a rectangle.

**(b)**
- Converse: If tomorrow is January then today is New Year's Eve.
- Inverse: If today is not New Year's Eve then tomorrow is not January.

**(c)**
- Converse: If $r$ is rational then the decimal expansion of $r$ is terminating.
- Inverse: If the decimal expansion of $r$ is not terminating then $r$ is not rational.

**(d)**
- Converse: If $n$ is odd or $n$ is $2$ then $n$ is prime.
- Inverse: If $n$ is not prime then $n$ is not odd and $n$ is not $2$.

**(e)**
- Converse: If $x$ is positive or $x$ is $0$ then $x$ is non-negative.
- Inverse: If $x$ is not non-negative then $x$ is not positive and $x$ is not $0$.

**(f)**
- Converse: If Jim is her uncle and Sue is her aunt then Tom is Ann's father.
- Inverse: If Tom is not Ann's father then Jim is not her uncle or Sue is not her aunt.

**(g)**
- Converse: If $n$ is divisible by $2$ and $n$ is divisible by $3$ then $n$ is divisible by $6$.
- Inverse: If $n$ is not divisible by $6$ then $n$ is not divisible by $2$ or $n$ is not divisible by $3$.

---
### Question 24

| $p$ | $q$ | $p \to q$ | $q \to p$ |
| --- | --- | --------- | --------- |
| $T$ | $T$ | $T$       | $T$       |
| $T$ | $F$ | $F$       | $T$       |
| $F$ | $T$ | $T$       | $F$       |
| $F$ | $F$ | $T$       | $T$       |

$$
p \to q \cancel{ \equiv } q \to p
$$

---
### Question 25

| $p$ | $q$ | $\neg p$ | $\neg q$ | $p \to q$ | $\neg p \to \neg q$ |
| --- | --- | -------- | -------- | --------- | ------------------- |
| $T$ | $T$ | $F$      | $F$      | $T$       | $T$                 |
| $T$ | $F$ | $F$      | $T$      | $F$       | $T$                 |
| $F$ | $T$ | $T$      | $F$      | $T$       | $F$                 |
| $F$ | $F$ | $T$      | $T$      | $T$       | $T$                 |

$$
p \to q \cancel{ \equiv } \neg p \to \neg q
$$

---
### Question 26

| $p$ | $q$ | $\neg p$ | $\neg q$ | $p \to q$ | $\neg q \to \neg p$ |
| --- | --- | -------- | -------- | --------- | ------------------- |
| $T$ | $T$ | $F$      | $F$      | $T$       | $T$                 |
| $T$ | $F$ | $F$      | $T$      | $F$       | $F$                 |
| $F$ | $T$ | $T$      | $F$      | $T$       | $T$                 |
| $F$ | $F$ | $T$      | $T$      | $T$       | $T$                 |

$$
p \to q \equiv \neg q \to \neg p
$$

---
### Question 27

| $p$ | $q$ | $\neg p$ | $\neg q$ | $q \to p$ | $\neg p \to \neg q$ |
| --- | --- | -------- | -------- | --------- | ------------------- |
| $T$ | $T$ | $F$      | $F$      | $T$       | $T$                 |
| $T$ | $F$ | $F$      | $T$      | $T$       | $T$                 |
| $F$ | $T$ | $T$      | $F$      | $F$       | $F$                 |
| $F$ | $F$ | $T$      | $T$      | $T$       | $T$                 |

$$
q \to p \equiv \neg p \to \neg q
$$

---
### Question 28
- The statement "I say what I mean" can be rewritten as "If I mean it then I say it."
- The statement "I mean what I say" can be rewritten as "If I say it then I mean it."

Let,
- $p$ be "I say it."
- $q$ be "I mean it."

Thus,
- The first statement: $q \to p$
- The second statement: $p \to q$

These statements are converse of each other and are not logically equivalent.

---
### Question 29

| $p$ | $q$ | $r$ | $q \lor r$ | $p \to (q \lor r)$ | $\neg q$ | $p \land \neg q$ | $(p \land \neg q) \to r$ | $(p \to (q \lor r)) \leftrightarrow ((p \land \neg q) \to r)$ |
| --- | --- | --- | ---------- | ------------------ | -------- | ---------------- | ------------------------ | ------------------------------------------------------------- |
| $T$ | $T$ | $T$ | $T$        | $T$                | $F$      | $F$              | $T$                      | $T$                                                           |
| $T$ | $T$ | $F$ | $T$        | $T$                | $F$      | $F$              | $T$                      | $T$                                                           |
| $T$ | $F$ | $T$ | $T$        | $T$                | $T$      | $T$              | $T$                      | $T$                                                           |
| $T$ | $F$ | $F$ | $F$        | $F$                | $T$      | $T$              | $F$                      | $T$                                                           |
| $F$ | $T$ | $T$ | $T$        | $T$                | $F$      | $F$              | $T$                      | $T$                                                           |
| $F$ | $T$ | $F$ | $T$        | $T$                | $F$      | $F$              | $T$                      | $T$                                                           |
| $F$ | $F$ | $T$ | $T$        | $T$                | $T$      | $F$              | $T$                      | $T$                                                           |
| $F$ | $F$ | $F$ | $F$        | $T$                | $T$      | $F$              | $T$                      | $T$                                                           |

$$
(p \to (q \lor r)) \leftrightarrow ((p \land \neg q) \to r) \equiv T
$$

---
### Question 30

| $p$ | $q$ | $r$ | $q \lor r$ | $p \land (q \lor r)$ | $p \land q$ | $p \land r$ | $(p \land q) \lor (p \land r)$ | $(p \land (q \lor r)) \leftrightarrow ((p \land q) \lor (p \land r))$ |
| --- | --- | --- | ---------- | -------------------- | ----------- | ----------- | ------------------------------ | --------------------------------------------------------------------- |
| $T$ | $T$ | $T$ | $T$        | $T$                  | $T$         | $T$         | $T$                            | $T$                                                                   |
| $T$ | $T$ | $F$ | $T$        | $T$                  | $T$         | $F$         | $T$                            | $T$                                                                   |
| $T$ | $F$ | $T$ | $T$        | $T$                  | $F$         | $T$         | $T$                            | $T$                                                                   |
| $T$ | $F$ | $F$ | $F$        | $F$                  | $F$         | $F$         | $F$                            | $T$                                                                   |
| $F$ | $T$ | $T$ | $T$        | $F$                  | $F$         | $F$         | $F$                            | $T$                                                                   |
| $F$ | $T$ | $F$ | $T$        | $F$                  | $F$         | $F$         | $F$                            | $T$                                                                   |
| $F$ | $F$ | $T$ | $T$        | $F$                  | $F$         | $F$         | $F$                            | $T$                                                                   |
| $F$ | $F$ | $F$ | $F$        | $F$                  | $F$         | $F$         | $F$                            | $T$                                                                   |

$$
(p \land (q \lor r)) \leftrightarrow ((p \land q) \lor (p \land r)) \equiv T
$$

---
### Question 31

| $p$ | $q$ | $r$ | $q \to r$ | $p \to (q \to r)$ | $p \land q$ | $(p \land q) \to r$ | $(p \to (q \to r)) \leftrightarrow ((p \land q) \to r)$ |
| --- | --- | --- | --------- | ----------------- | ----------- | ------------------- | ------------------------------------------------------- |
| $T$ | $T$ | $T$ | $T$       | $T$               | $T$         | $T$                 | $T$                                                     |
| $T$ | $T$ | $F$ | $F$       | $F$               | $T$         | $F$                 | $T$                                                     |
| $T$ | $F$ | $T$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $T$ | $F$ | $F$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $T$ | $T$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $T$ | $F$ | $F$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $F$ | $T$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |
| $F$ | $F$ | $F$ | $T$       | $T$               | $F$         | $T$                 | $T$                                                     |

$$
(p \to (q \to r)) \leftrightarrow ((p \land q) \to r) \equiv T
$$

---
### Question 32
If quadratic equation has two distinct real roots then its discriminant is greater than zero and if its discriminant is greater than zero then the quadratic equation has two distinct real roots.

---
### Question 33
If the integer is even then it equals twice some integer and if it equals twice some integer then the integer is even.

---
### Question 34
- If The Cubs win the pennant then they win tomorrow's game.
- If The Cub don't win tomorrow's game then they don't win the pennant.

---
### Question 35
- If Sam is allowed on Signe's racing boat then he is an expert sailor.
- If Sam is not an expert sailor then he is not allowed on Signe's racing.

---
### Question 36
Let
- $p$ be "you major in mathematics."
- $q$ be "you get a B average or better."
- $r$ be "you take accounting."
- $s$ be "you get hired."

Since $p, q, r \equiv T$ and $s \equiv F$, therefore,
$$
s \to p \land q \land r \equiv F \to T \land T \land T \equiv F \to T \equiv T
$$
Thus, no, the manager has not lied.

---
### Question 37
If a new hearing is not granted then payment will be made on the fifth.

---
### Question 38
If it does not rain then Ann will go.

---
### Question 39
If a security code is not entered then this door will not open.

---
### Question 40
If you catch the 8:05 bus then you will be on time for work.

---
### Question 41
If a triangle has two $45^\circ$ angles then it is a right triangle.

---
### Question 42
- If the number is not divisible by $3$ then is not divisible by $9$.
- If it is divisible by $9$ then it is divisible by $3$.

---
### Question 43
- If Jim doesn't do homework regularly then Jim won't pass the course.
- If Jim passes the course then he has done homework regularly.

---
### Question 44
If Jon's team win the rest of its games then it will win the championship.

---
### Question 45
If this computer program produces error messages during translation then it is not correct.

---
### Question 46
Let,
- $p$ be "compound X is boiling."
- $q$ be "its temperature must be at least $150^\circ C$."

Therefore, $p \to q \equiv T$

**(a)** $q \to p$, it is not logically equivalent to $p \to q \equiv T$, therefore it's not necessarily true.

**(b)** $\neg q \to \neg p$, it is logically equivalent to $p \to q \equiv T$, therefore it is true.

**(c)** $p \to q$, it is true.

**(d)** $\neg p \to \neg q$, it is not logically equivalent to $p \to q \equiv T$, therefore it's not necessarily true.

**(e)** $\neg q \to \neg p$, it is logically equivalent to $p \to q \equiv T$, therefore it is true.

**(f)** $q \to p$, it is not logically equivalent to $p \to q \equiv T$, therefore it's not necessarily true.

---
### Question 47
**(a)** $p \land \neg q \to r \equiv \neg p \lor q \lor r$

**(b)** $\neg p \lor q \lor r \equiv \neg(p \land \neg q \land \neg r)$

---
### Question 48
**(a)** $p \lor \neg q \to r \lor q \equiv (\neg p \land q) \lor (r \lor q) \equiv r \lor (q \lor(\neg p \land q)) \equiv r \lor q$

**(b)** $r \lor q \equiv \neg(\neg r \land \neg q)$

---
### Question 49
**(a)**
$$
\begin{align*} (p \to r) \leftrightarrow (q \to r)
&\equiv ((p \to r) \to (q \to r)) \land ((q \to r) \to (p \to r)) \\ &\equiv ((p \land \neg r) \lor (\neg q \lor r)) \land ((q \land \neg r) \lor (\neg p \lor r)) \\
&\equiv ((p \land \neg r) \lor \neg q \lor r) \land ((q \land \neg r) \lor \neg p \lor r) \\
&\equiv (\neg q \lor p \lor r) \land (\neg p \lor q \lor r) \quad \text{(since } (A \land \neg r) \lor r \equiv A \lor r \text{)} \\
&\equiv r \lor ((p \lor \neg q) \land (q \lor \neg p)) \end{align*}
$$

**(b)**
$$
\begin{align*}
(p \to r) \leftrightarrow (q \to r)
&\equiv r \lor ((p \lor \neg q) \land (q \lor \neg p)) \\
&\equiv \neg(\neg r \land \neg(\neg(\neg p \land q) \land \neg(\neg q \land p)))
\end{align*}
$$

---
### Question 50
**(a)**
$$
\begin{aligned}
&(p \to (q \to r)) \leftrightarrow ((p \lor q) \to r) \\
&\quad \equiv [(\neg p \lor (\neg q \lor r)) \to ((\neg p \land \neg q) \lor r)] \land [((\neg p \land \neg q) \lor r) \to (\neg p \lor (\neg q \lor r))] \\
&\quad \equiv [((p \land q) \land \neg r) \lor ((\neg p \land \neg q) \lor r)] \land [((p \lor q) \land \neg r) \lor (\neg p \lor \neg q \lor r)] \\
&\quad  \equiv [(p \land q) \lor \neg(p \lor q) \lor r] \land [(p \lor q) \lor \neg(p \land q) \lor r] \quad \text{(since } (A \land \neg r) \lor r \equiv A \lor r \text{)} \\
&\quad \equiv r \lor [((p \land q) \lor \neg(p \lor q)) \land (\neg(p \land q) \lor (p \lor q))] \\
&\quad \equiv r \lor [((p \land q) \lor \neg(p \lor q)) \land (\neg p \lor \neg q \lor p \lor q)] \\
&\quad \equiv r \lor (p \land q) \lor \neg(p\lor q)
\end{aligned}
$$

**(b)**
$$
\begin{aligned}
&(p \to (q \to r)) \leftrightarrow ((p \lor q) \to r) \\
&\quad \equiv r \lor (p \land q) \lor \neg(p\lor q) \\
&\quad \equiv \neg(\neg r \land \neg(p\land q) \land \neg(\neg p \land \neg q))
\end{aligned}
$$

---
### Question 51
Since $\leftrightarrow$ and $\to$ can be written in $\neg, \land, \lor$ form and $\lor$ can be written is $\neg, \land$ form, therefore it is safe to say that any statement can be written in $\neg, \land$ form.

## Exercise Set 2.3
