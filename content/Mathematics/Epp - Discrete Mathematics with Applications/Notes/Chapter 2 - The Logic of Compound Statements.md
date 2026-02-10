> [!strategy] [[Epp - Discrete Mathematics with Applications|Entry]] | [[Solutions 2 - The Logic of Compound Statements|Solutions]]

## Logical Form and Logical Equivalence
> [!definition]
> 
> **Statement**
> 
> A *statement* (or *proposition*) is a sentence that is true or false but not both.

> [!definition]
> 
> **Negation**
>
> If $p$ is a statement variable, the *negation* of $p$ is “not $p$” or “It is not the case that $p$” and is denoted $\neg p$. It has opposite truth value from $p$: if $p$ is true, $\neg p$ is false; if $p$ is false, $\neg p$ is true.

> [!definition]
> 
> **Conjunction**
>
> If $p$ and $q$ are statement variables, the *conjunction* of $p$ and $q$ is “$p$ and $q$,” denoted $p \land q$. It is true when, and only when, both $p$ and $q$ are true. If either $p$ or $q$ is false, or if both are false, $p \land q$ is false.

> [!definition]
> 
> **Disjunction**
>
> If $p$ and $q$ are statement variables, the *disjunction* of $p$ and $q$ is “$p$ or $q$,” denoted $p \lor q$. It is true when either $p$ is true, or $q$ is true, or both $p$ and $q$ are true; it is false only when both $p$ and $q$ are false.

> [!definition]
> 
> A *statement form* (or *propositional form*) is an expression made up of statement variables (such as $p$, $q$, and $r$) and logical connectives (such as $\neg$, $\land$ and $\lor$) that becomes a statement when actual statements are substituted for the component statement variables. The *truth table* for a given statement form displays the truth values that correspond to all possible combinations of truth values for its component statement variables.

> [!definition]
> 
> **Logically Equivalent**
>
> Two statement forms are called *logically equivalent* if, and only if, they have identical truth values for each possible substitution of statements for their statement variables. The logical equivalence of statement forms $P$ and $Q$ is denoted by writing $P \equiv Q$.
> Two statements are called *logically equivalent* if, and only if, they have logically equivalent forms when identical component statement variables are used to replace identical component statements.

> [!note]
> 
> **De Morgan's Law**
>
> The negation of an *and* statement is logically equivalent to the *or* statement in which each component is negated.
> $$\
> neg (p \land q) \equiv \neg p \lor \neg q
> $$
> The negation of an *or* statement is logically equivalent to the *and* statement in which each component is negated.
> $$
> \neg (p \lor q) \equiv \neg p \land \neg q
> $$

> [!definition]
> 
> A *tautology* is a statement form that is always true regardless of the truth values of the individual statements substituted for its statement variables. A statement whose form is a tautology is a *tautological statement*.
> A *contradication* is a statement form that is always false regardless of the truth values of the individual statements substituted for its statement variables. A statement whose form is a contradiction is a *contradictory statement*.

> [!theorem]
> 
> Given any statement variables p, q, and r, a tautology t and a contradiction c, the following logical equivalences hold.
> 1. **Commutative Laws:**
> $$
> p \lor q \equiv q \lor p
> $$
> $$
> p \land q \equiv q \land p
> $$
> 2. **Associative Laws:**
> $$
> (p \land q) \land r \equiv p \land (q \land r)
> $$
> $$
> (p \lor q) \lor r \equiv p \lor (q \lor r)
> $$
> 3. **Distributive Laws:**
> $$
> p \land (q \lor r) \equiv (p \land q) \lor (p \land r)
> $$
> $$
> p \lor (q \land r) \equiv (p \lor q) \land (p \lor r)
> $$
> 4. **Identity Laws:**
> $$
> p \land t \equiv p
> $$
> $$
> p \lor c \equiv p
> $$
> 5. **Negation Laws:**
> $$
> p \lor \neg p \equiv t
> $$
> $$
> p \land \neg p \equiv c
> $$
> 6. **Double negative Law:**
> $$
> \neg (\neg p) \equiv p
> $$
> 7. **Idempotent Laws:**
> $$
> p \land p \equiv p
> $$
> $$
> p \lor p \equiv p
> $$
> 8. **Universal Bound Laws:**
> $$
> p \lor t \equiv t
> $$
> $$
> p \land c \equiv c
> $$
> 9. **De Morgan's Laws:**
> $$
> \neg (p \land q) \equiv \neg p \lor \neg q
> $$
> $$
> \neg (p \lor q) \equiv \neg p \land \neg q
> $$
> 10. **Absorption Laws:**
> $$
> p \lor (p \land q) \equiv p
> $$
> $$
> p \land (p \lor q) \equiv p
> $$
> 11. **Negations of $t$ and $c$:**
> $$
> \neg t \equiv c
> $$
> $$
> \neg c \equiv t
> $$

## Conditional Statements
> [!definition]
> 
> **Conditional Statement**
>
>If $p$ and $q$ are statement variables, the *conditional* of $q$ by $p$ is “If $p$ then $q$” or “$p$ implies $q$” and is denoted $p \to q$. It is false when $p$ is true and $q$ is false; otherwise it is true. We call $p$ the *hypothesis* (or *antecedent*) of the conditional and $q$ the *conclusion* (or *consequent*).
> > [!note]
> >
> > **Vacuously true or true by default**
> >
> > A conditional statement that is true by virtue of the fact that its hypothesis is false is often called *vacuously true* or *true by default*. Thus the statement “If you show up for work Monday morning, then you will get the job” is vacuously true if you do not show up for work Monday morning. In general, when the “if” part of an if-then statement is false, the statement as a whole is said to be true, regardless of whether the conclusion is true or false.
> 
> > [!note]
> > 
> > **Logical Equivalences Involving $\to$**
> >
> > - $p \lor q \to r \equiv (p \to r) \land (q \to r)$
> > - $p \to q \equiv \neg p \lor q$
> > - $\neg (p \to q) \equiv p \land \neg q$

> [!definition]
> 
> **The Contrapositive of a Conditional Statement**
>
> The contrapositive of a conditional statement of the form “If $p$ then $q$” is
> $$
> \text{if } \neg q \text{ then } \neg p
> $$
> Symbolically,
> $$
> \text{The contrapositive of } p \to q \text{ is } \neg q \to \neg p
> $$
>
> > [!note]
> >
> > A conditional statement is logically equivalent to its contrapositive.

> [!definition]
> 
> **The Converse and Inverse of a Conditional Statement**
>
> Suppose a conditional statement of the form “If $p$ then $q$” is given.
> 1. The *converse* is “If $q$ then $p$.”
> 2. The *inverse* is “If $\neg p$ then $\neg q$.”
> 
> Symbolically,
> $$
> \text{The converse of } p \to q \text{ is } q \to p
> $$
> and
> $$
> \text{The inverse of } p \to q \text{ is } \neg p \to \neg q
> $$
> 
> > [!note]
> > 
> > 1. A conditional statement and its converse are *not* logically equivalent.
> > 2. A conditional statement and its inverse are *not* logically equivalent.
> > 3. The converse and the inverse of a conditional statement are logically equivalent to each other.

> [!definition]
> 
> **Only If**
>
> If p and q are statements,
> $$
> p \text{ only if } q \text{ means "if not q then not p,"}
> $$
> or, equivalently,
> $$
> \text{"if p then q."}
> $$

> [!definition]
>
> **Biconditional**
>
> Given statement variables $p$ and $q$, the *biconditional* of $p$ and $q$ is “$p$ if, and only if, $q$” and is denoted $p \leftrightarrow q$. It is true if both $p$ and $q$ have the same truth values and is false if $p$ and $q$ have opposite truth values. The words *if and only if* are sometimes abbreviated *iff*.
>
> > [!note]
> > 
> > $$
> > p \leftrightarrow q \equiv (p \to q) \land (q \to p)
> > $$

> [!note]
>
> **Order of Operations for Logical Operators**
>
> 1. $\neg$: Evaluate negations first.
> 2. $\land, \lor$: Evaluate them second. When both are present, parentheses may be needed.
> 3. $\to, \leftrightarrow$: Evaluate them third. When both are present, parentheses may be needed.

> [!definition]
>
> **Necessary and Sufficient Conditions**
>
> If $r$ and $s$ are statements:
> - $r$ is a *sufficient condition* for $s$ means: "if $r$ then $s$."
> - $r$ is *necessary condition* for  $s$ means: "if not $r$ then not $s$."
> 
> > [!note]
> >
> > - $r$ is a necessary condition for $s$ also means “if $s$ then $r$.”
> > - $r$ is a necessary and sufficient condition for $s$ means “$r$ if, and only if, $s$.”

> [!important]
> 
> 1. In logic, *a hypothesis and conclusion are not required to have related subject matters*.
> 2. In *informal language*, *simple conditionals are often used to mean biconditionals*.

> [!exercise] [[Solutions 2 - The Logic of Compound Statements|Solutions to chapter exercises]]

> [!strategy] [[Chapter 1 - Speaking Mathematically|Previous Chapter]] | [[Chapter 3 - The Logic of Quantified Statements|Next Chapter]]