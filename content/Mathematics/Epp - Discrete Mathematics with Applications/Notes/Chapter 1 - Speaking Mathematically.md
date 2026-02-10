## Variables
> [!definition]
>
> **Variable**
>
> A *variable* is sometimes thought of as a mathematical “John Doe” because you can use it as a placeholder when you want to talk about something but either (1) you imagine that it has one or more values but you don’t know what they are, or (2) you want whatever you say about it to be equally true for all elements in a given set, and so you don’t want to be restricted to considering only a particular, concrete value for it.

> [!Definition]
>
> Three of the most important kinds of sentences in mathematics are universal statements, conditional statements, and existential statements:
> - A **universal statement** says that a certain property is true for all elements in a set. (For example: All positive numbers are greater than zero.)
> - A **conditional statement** says that if one thing is true then some other thing also has to be true. (For example: If 378 is divisible by 18, then 378 is divisible by 6.)
> - Given a property that may or may not be true, an **existential statement** says that there is at least one thing for which the property is true. (For example: There is a prime number that is even.)

## The Language of Sets
> [!notation]
>
> **Set-roster Notation**
>
> If $S$ is a set, the notation $x \in S$ means that $x$ is an element of $S$. The notation $x \cancel{ \in } S$ means that $x$ is not an element of $S$. A set may be specified using the set-roster notation by writing all of its elements between braces. For example, $\{1, 2, 3\}$ denotes the set whose elements are $1$, $2$, and $3$. A variation of the notation is sometimes used to describe a very large set, as when we write ${1, 2, 3, \dots , 100}$ to refer to the set of all integers from 1 to 100. A similar notation can also describe an infinite set, as when we write ${1, 2, 3, \dots }$ to refer to the set of all positive integers. (The symbol $\dots$ is called an ellipsis and is read “and so forth.”)

> [!definition]
>
> **Axiom of Extension**
>
> The **axiom of extension** says that a set is completely determined by what its elements are—not the order in which they might be listed or the fact that some elements might be listed more than once.

> [!notation]
>
> - $R$: the set of all real numbers
> - $Z$: the set of all integers
> - $Q$: the set of all rational numbers, or quotients of integers

> [!notation]
>
> **Set-Builder Notation**
>
> Let $S$ denote a set and let $P(x)$ be a property that elements of $S$ may or may not satisfy. We may define a new set to be *the set of all elements $x$ in $S$ such that $P(x)$ is true.* We denote this set as follows:
> $$
> \{x \in S|P(x)\}
> $$

> [!definition]
>
> **Subsets**
>
> If $A$ and $B$ are sets, then $A$ is called a subset of $B$, written $A \subset B$, if, and only if, every element of $A$ is also an element of $B$.
> $$
> A \subset B \text{ meant that for every element x, if} x \in A \text{ then } x \in B
> $$
> The phrases *$A$ is contained in $B$* and *$B$ contains $A$* are alternative ways of saying that $A$ is a subset of $B$.

> [!definition]
>
> **Proper subset**
>
> Let $A$ and $B$ be sets. $A$ is a proper subset of $B$ if, and only if, every element of $A$ is in $B$ but there is at least one element of $B$ that is not in $A$.

> [!notation]
>
> **Ordered Pair** 
>
> Given elements $a$ and $b$, the symbol $(a, b)$ denotes the ordered pair consisting of $a$ and $b$ together with the specification that $a$ is the first element of the pair and $b$ is the second element. Two ordered pairs $(a, b)$ and $(c, d)$ are equal if, and only if, $a = c$ and $b = d$. Symbolically:
> $$
> (a, b) = (c, d) \text{ means that } a = c \text{ and } b = d
> $$

> [!definition]
>
> **Ordered n-tuple**
>
> Let $n$ be a positive integer and let $x_{1}, x_{2}, \dots , x_{n}$ be (not necessarily distinct) elements. The *ordered n-tuple*, $(x_{1}, x_{2}, . . . , x_{n})$, consists of $x_{1}, x_{2}, \dots , x_{n}$ together with the ordering: first $x_{1}$, then $x_{2}$, and so forth up to $x_{n}$. An ordered 2-tuple is called an *ordered pair*, and an ordered 3-tuple is called an *ordered triple*. Two ordered n-tuples $(x_{1}, x_{2}, \dots , x_{n})$ and $(y_{1}, y_{2}, \dots , y_{n})$ are equal if, and only if, $x_{1} = y_{1}$, $x_{2} = y_{2}$, $...$ , and $x_{n} = y_{n}$. Symbolically:
> $$
> (x_{1},x_{2},\dots ,x_{n}) = (y_{1},y_{2},\dots,y_{n}) <=> x_{1}=y_{1},x_{2}=y_{2},\dots,x_{n}=y_{n}
> $$

> [!definition]
>
> **Cartesian Product**
>
> Givens sets $A_{1},A_{2},\dots ,A_{n}$ the *Cartesian product* of $A_{1},A_{2},\dots ,A_{n}$ denoted,
> $$
> A_{1} \times A_{2} \times \dots \times A_{n},
> $$
> is the set of all ordered n-tuples $(a_{1}, a_{2}, \dots , a_{n})$ where $a_{1} \in A_{1}, a_{2} \in A_{2}, \dots a_{n} \in A_{n}$. Symbolically:
> $$
> A_{1} \times A_{2} \times \dots \times A_{n} = \{(a_{1}, a_{2}, \dots , a_{n})|a_{1} \in A_{1}, a_{2} \in A_{2}, \dots a_{n} \in A_{n}\}
> $$
> In particular,
> $$
> A_{1} \times A_{2} = {(a_{1},a_{2})|a_{1} \in A_{1} \text{ and } a_{2} in A_{2}}
> $$
> is the Cartesian product of $A_{1}$ and $A_{2}$.

> [!definition]
>
> **String**
>
> Let $n$ be a positive integer. Given a finite set $A$, a *string of length $n$ over $A$* is an ordered n-tuple of elements of $A$ written without parentheses or commas. The elements of $A$ are called the characters of the string. The null string over $A$ is defined to be the “string” with no characters. It is often denoted $\lambda$ and is said to have length 0. If $A = \{0, 1\}$, then a string over $A$ is called a bit string. 

## The Language of relations and functions
> [!definition] 
>
> Let $A$ and $B$ be sets. A relation $R$ from $A$ to $B$ is a subset of $A \times B$. Given an ordered pair $(x, y)$ in $A \times B$, $x$ is related to $y$ by $R$, written $x R y$, if, and only if, $(x, y)$ is in $R$. The set $A$ is called the domain of $R$ and the set $B$ is called its *co-domain*. The notation for a relation $R$ may be written symbolically as follows:
> $$
> x R y \text{ means that } (x, y) \in R.
> $$  
> The notation $x \cancel{ R } y$ means that $x$ is not related to $y$ by $R$:
> $$
> x \cancel{ R } y \text{ means that } (x, y) \cancel{ \in } R.
> $$
>
> > [!notation]
> >
> > **Arrow Diagram of a Relation**
> >
> > Suppose $R$ is a relation from a set $A$ to a set $B$. The *arrow diagram* for $R$ is obtained as follows:
> > 1. Represent the elements of $A$ as points in one region and the elements of $B$ as points in another region.
> > 2. For each $x$ in $A$ and $y$ in $B$, draw an arrow from $x$ to $y$ if, and only if, $x$ is related to $y$ by $R$. Symbolically:
> > $$
> > \text{Draw an arrow from x to y}
> > $$
> > $$
> > \text{if, and only if, } x R y
> > $$
> > $$
> >\text{if, and only if, } (x, y) \in R.
> > $$

> [!definition]
>
> **Functions**
>
> A function $F$ from a set $A$ to a set $B$ is a relation with domain $A$ and co-domain $B$ that satisfies the following two properties:
> 1. For every element $x$ in $A$, there is an element $y$ in $B$ such that $(x, y) \in F$.
> 2. For all elements $x$ in $A$ and $y$ and $z$ in $B$,
> $$
> \text{if } (x,y) \in F \text{ and } (x,z) \in F \text{ then } y = z
> $$
> 
> > [!notation]
> >
> > If $A$ and $B$ are sets and $F$ is a function from $A$ to $B$, then given any element $x$ in $A$, the unique element in $B$ that is related to $x$ by $F$ is denoted $F(x)$, which is read “$F$ of $x$.”
> 
> > [!note]
> >
> > If $f$ and $g$ are functions from a set $A$ to a set $B$, then
> > $$
> > f = \{ (x,y) \in A \times B | y = f(x) \} \text{ and } g = \{ (x,y) \in A \times B | y = g(x) \}.
> > $$
> > It follows that: $f$ equals $g$, written $f = g$, if, and only if, $f(x) = g(x)$ for all $x$ in $A$.

## The Language of Graphs
> [!definition]
>
> **Graph**
>
> A *graph* $G$ consists of two finite sets: a nonempty set $V(G)$ of *vertices* and a set $E(G)$ of *edges*, where each edge is associated with a set consisting of either one or two vertices called its *endpoints*. The correspondence from edges to endpoints is called the *edge-endpoint function*.
> An edge with just one endpoint is called a *loop*, and two or more distinct edges with the same set of endpoints are said to be *parallel*. An edge is said to *connect* its endpoints; two vertices that are connected by an edge are called *adjacent*; and a vertex that is an endpoint of a loop is said to be *adjacent to itself*.
> An edge is said to be *incident on* each of its endpoints, and two edges incident on the same endpoint are called *adjacent*. A vertex on which no edges are incident is called *isolated*.
>
> > [!notation]
> >
> > Graphs have pictorial representations in which the vertices are represented by dots and the edges by line segments. A given pictorial representation uniquely determines a graph.
> >
> > ![[Pasted image 20260207230015.png]]
> >
> > > [!note]
> > >
> > > Although a given pictorial representation uniquely determines a graph, a given graph may have more than one pictorial representation. Such things as the lengths or curvatures of the edges and the relative position of the vertices on the page may vary from one pictorial representation to another.
> > >
> > > ![[Pasted image 20260207230302.png]]

> [!definition]
> 
> **Directed Graph**
>
> A *directed graph*, or *digraph*, consists of two finite sets: a nonempty set $V(G)$ of vertices and a set $D(G)$ of directed edges, where each is associated with an ordered pair of vertices called its *endpoints*. If edge $e$ is associated with the pair $(y, w)$ of vertices, then $e$ is said to be the *(directed) edge* from $y$ to $w$.

> [!Definition]
> 
> **Degree of a Vertex**
>
> Let $G$ be a graph and $y$ a vertex of $G$. The degree of $v$, denoted $deg(v)$, equals the number of edges that are incident on $y$, with an edge that is a loop counted twice.
> 
> ![[Pasted image 20260207231531.png]]

> [!exercise] [[Solutions 1 - Speaking Mathematically|Solutions to chapter exercises]]

> [!strategy] [[Chapter 2 - The Logic of Compound Statements|Next Chapter]]