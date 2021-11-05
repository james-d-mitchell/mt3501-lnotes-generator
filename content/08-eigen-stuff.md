# Eigenvectors, eigenvalues, and the characteristic polynomial
{{< chapter 7 >}}

## Eigenvectors and eigenvalues

::: {.defn}
[]{#defn-eigen label="defn-eigen"} Let $V$ be a vector
space over a field $F$ and let $T : V \to V$ be a linear transformation.
A *non-zero* vector $v$ is an ***eigenvector*** for $T$ with
*eigenvalue* $\lambda \in
  F$ if $$T(v) = \lambda v.$$
:::

Note that $T(\vec{0}) = \vec{0} = \lambda\vec{0}$ for every
$\lambda \in F$, which is why $v$ is non-zero in
[Definition 8.1.1]({{< ref "08-eigen-stuff#defn-eigen" >}}).

::: {.defn}
Let $V$ be a vector space over a field $F$, let $T : V \to V$ be a
linear transformation, and $\lambda \in F$. The ***eigenspace***
corresponding to the eigenvalue $\lambda$ is the subspace
$$\begin{aligned}
    E_{\lambda} = \ker(T-\lambda \operatorname{id}) 
    & = \{v \in V : T(v) - \lambda v = \vec{0}\}                                                                \\
                                    & = \{v \in V : T(v) = \lambda v\},
  \end{aligned}$$ where $\operatorname{id}: V \to V$ is the identity
transformation. In other words, the eigenspace of an eigenvalue
$\lambda$ is the subspace of $V$ consisting of all of the eigenvectors
for $\lambda$ and the zero vector $\vec{0}_V$.
:::

Note that $T-\lambda I$ is a linear transformation and so
$E_{\lambda}=\ker(T-\lambda I)$ is a subspace of $V$ by
[Proposition 4.1.5]({{< ref "04-linear-transf#prop-image-kernel-subspaces" >}}).

## Characteristic polynomial

::: {.defn}
Let $T : V \to V$ be a linear transformation of the finite-dimensional
vector space $V$ (over $F$) and let $A$ be the matrix of $T$ with
respect to some basis. The ***characteristic polynomial*** of $T$ is
$$c_{T}(x) = \det(xI-A)$$ where $x$ is an indeterminate variable.
:::

::: {.prop}
[]{#prop-eigenvalue-root label="prop-eigenvalue-root"} Suppose that $T : V \to V$ is a linear
transformation of the finite-dimensional vector space $V$ over $F$. Then
$\lambda$ is an eigenvalue of $T$ if and only if $\lambda$ is a root of
the characteristic polynomial of $T$.
:::

::: {.cor}
Suppose that $T : V \to V$ is a linear transformation of the
finite-dimensional vector space $V$ over $\mathbb{C}$. Then $T$ has at
least one eigenvalue $\lambda \in \mathbb{C}$.
:::

The characteristic polynomial of a linear transformation $T:V \to V$ is
defined in terms of a matrix $A$ for $T$, and the matrix depends on a
particular choice of bases for $V$. Hence it appears that the
characteristic polynomial of $T$ depends on the choice of bases for $V$.

::: {.prop}
[]{#prop-char-poly-indep label="prop-char-poly-indep"} Let $V$ be a finite-dimensional vector
space $V$ over $F$ and $T : V \to V$ be a linear transformation. The
characteristic polynomial $c_{T}(x)$ is independent of the choice of
basis for $V$.
:::

::: {.proof}
*Proof.* Let $A$ and $B$ be matrices for $T$ with respect to some bases
for $V$. [Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}}) tells us that $B = P^{-1}AP$ for some
invertible matrix $P$. Then
$$P^{-1} (xI-A) P = xP^{-1}IP - P^{-1}AP = xI - B ,$$ so
$$\begin{aligned}
    \det(xI - B) & = \det(P^{-1}(xI-A)P)                         \\
                 & = \det P^{-1} \cdot \det(xI-A) \cdot \det P   \\
                 & = (\det P)^{-1} \cdot \det(xI-A) \cdot \det P \\
                 & = \det(xI-A)
  \end{aligned}$$ (since multiplication in the field $F$ is commutative
--- see condition (5) of
[Definition 2.1.1]({{< ref "02-vector-spaces#def-field" >}})). ◻
:::

## Eigenvalue magic tricks {#eigenvalue-magic-tricks .unnumbered}

In this section, we present some tricks for very rapidly computing the
eigenvalues of a linear transformation, or matrix. These tricks are
primarily intended for when you might want to find the eigenvalues of a
linear transformation by hand.

Throughout this section we suppose that $T : V\to V$ is a linear
transformation from an $n$-dimensional vector space $V$ to itself, and
that $A$ is the matrix of $T$ with respect to some bases for $V$.

Here are some definitions.

::: {.defn}
If $A = [\alpha_{ij}]$ is an $n\times n$ matrix over a field, then the
***trace*** of $A$ is the sum of the diagonal entries and it is denoted
$\operatorname{tr}(A)$. In other words, $\operatorname{tr}(A) =
  \sum_{i = 1} ^ n \alpha_{ii}$.
:::

Tricks:

1.  If $V$ is an $n$-dimensional vector space, then $T$ has at most $n$
    eigenvalues (not necessarily distinct).

2.  If $\lambda_1$, $\lambda_2$, $\ldots$, $\lambda_n$ are the
    eigenvalues of $T$, then
    $\operatorname{tr}(A) = \lambda_1 + \cdots + \lambda_n$.

3.  If $\lambda_1$, $\lambda_2$, $\ldots$, $\lambda_n$ are the
    eigenvalues of $T$, then
    $\det(A) = \lambda_1 \times \cdots \times \lambda_n$.

4.  The eigenvalues of $T$ and its dual transformation $T ^ *$ are the
    same.

5.  If for each row of $A$, the sum of the entries is $k$, then $T$ has
    an eigenvalue equal to $k$.

6.  If for each column of $A$, the sum of the entries is $k$, then $T$
    has an eigenvalue equal to $k$.

7.  If $\lambda_1$, $\lambda_2$, $\ldots$, $\lambda_n$ are the
    eigenvalues of $T$, then $\lambda_1 ^ 2$, $\lambda_2 ^ 2$, $\ldots$,
    $\lambda_n ^ 2$ are the eigenvalues of $T \circ T$.

8.  If $\lambda_1$, $\lambda_2$, $\ldots$, $\lambda_n$ are the
    eigenvalues of $T$, then the eigenvalues of $T + T$ are
    $2\lambda_1$, $2\lambda_2$, $\ldots$, $2\lambda_n$.

9.  If $T(v) = \vec{0}$ for all $v\in V$, then
    $\lambda_1 = \lambda_2 = \cdots
              = \lambda_n = 0$.

10. If $\lambda_1$, $\lambda_2$, $\ldots$, $\lambda_n$ are the
    eigenvalues of $T$, then $\lambda_1 + 2$, $\lambda_2 + 2$, $\ldots$,
    $\lambda_n + 2$ are the eigenvalues of $T + 2I$.

::: {.example}
[]{#ex-no-eigenvalues label="ex-no-eigenvalues"}
Suppose that $T: \mathbb{R} ^ 2 \to \mathbb{R} ^ 2$ is a linear
transformation with matrix $$A =
    \begin{pmatrix}
      1 & -2 \\
      2 & 0
    \end{pmatrix}.$$ Show that $T$ has no eigenvalues.
:::

::: {.solution}
By
[Proposition 8.2.2]({{< ref "08-eigen-stuff#prop-eigenvalue-root" >}}), $\lambda$ is an eigenvalue of $T$ if
and only if $\lambda$ is a root of the characteristic polynomial
$c_T(x) =
    c_A(x)$. Hence it suffices to show that $c_A(x)$ has no roots in
$\mathbb{R}$. By definition, $$c_A(x) = \det(xI - A)
    =
    \det
    \begin{pmatrix}
      x - 1 & 2 \\
      -2    & x
    \end{pmatrix}
    = (x-1)x + 4
    = x ^ 2 - x + 4$$ and so by the quadratic formula, the roots of
$c_A(x)$ are: $$\frac{1 \pm \sqrt{-15}}{2}\not\in \mathbb{R}.$$ Hence
$c_A(x)$ has no roots in $\mathbb{R}$, and hence $T$ has no eigenvalues.
:::

::: {.example}
[]{#ex-trick-II-III label="ex-trick-II-III"} Find the
eigenvalues of the matrix over $\mathbb{C}$: $$A =
    \begin{pmatrix}
      1 & 0 & 1 \\
      0 & 2 & 1 \\
      1 & 0 & 3
    \end{pmatrix}.$$
:::

::: {.solution}
Since $A$ is a matrix over $\mathbb{C}$ we know that $A$ has exactly $3$
eigenvalues $\lambda_1, \lambda_2, \lambda_3$. By Tricks (2) and (3):
$$\lambda_1 + \lambda_2 + \lambda_3 = \operatorname{tr}(A) = 1 + 2 + 3 = 6$$
and $$\lambda_1 \lambda_2 \lambda_3 = \det(A) = 4.$$ By inspection,
$$\begin{pmatrix}
      1 & 0 & 1 \\
      0 & 2 & 1 \\
      1 & 0 & 3
    \end{pmatrix}
    \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}
    =
    \begin{pmatrix} x + z \\ 2y + z \\ x + 3z \\ \end{pmatrix}
    =
    \lambda_1\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}$$ has
$\lambda_1 = 2$ as a solution. Therefore $\lambda_2 + \lambda_3 = 4$ and
$\lambda_2\lambda_3 = 2$. Solving for $\lambda_3$ we obtain:
$$\lambda_3 ^ 2 - 4\lambda_3 + 2 = 0$$ and so
$$\lambda_2 = 2 + \sqrt{2}\quad\text{and}\quad
    \lambda_3 = 2 - \sqrt{2}.$$
:::

::: {.example}
Find the eigenvalues of the matrix over $\mathbb{C}$: $$A =
    \begin{pmatrix}
      2 & 0 & 4  \\
      1 & 4 & 5  \\
      4 & 0 & 10
    \end{pmatrix}.$$
:::

::: {.solution}
Note that $$A =
    \begin{pmatrix}
      1 & 0 & 1 \\
      0 & 2 & 1 \\
      1 & 0 & 3
    \end{pmatrix}
    \begin{pmatrix}
      1 & 0 & 1 \\
      0 & 2 & 1 \\
      1 & 0 & 3
    \end{pmatrix}$$ and so, by Trick (7), the eigenvalues of $A$ are
just the squares of the eigenvalues of $$\begin{pmatrix}
      1 & 0 & 1 \\
      0 & 2 & 1 \\
      1 & 0 & 3
    \end{pmatrix}.$$ We calculated these in
[Example 8.2.7]({{< ref "08-eigen-stuff#ex-trick-II-III" >}}), and so the eigenvalues of $A$ are $4$,
$(2 + \sqrt{2}) ^ 2$ and $(2 - \sqrt{2}) ^ 2$.
:::

::: {.example}
Find the eigenvalue of the matrix over $\mathbb{C}$: $$A =
    \begin{pmatrix}
      1 & 0 & 2  \\
      0 & 2 & 1  \\
      1 & 0 & -1
    \end{pmatrix}.$$
:::

::: {.solution}
Note that the column sums of $A$ are all $2$ and so we known that $2$ is
an eigenvalue of $A$ by Trick (6). Also, if $\lambda_2$ and $\lambda_3$
are the other eigenvalues of $A$, then
$$2 + \lambda_2 + \lambda_3 = 2\quad\text{and}\quad 2\lambda_2\lambda_3 =
    \det(A) = -6.$$ Hence, solving the second equation for $\lambda_3$,
we get $\lambda_3 = \frac{-3}{\lambda_2}$, and so, by the first
equation, $$2 + \lambda_2 - \frac{3}{\lambda_2} = 2$$ solving for
$\lambda_2$ yields $\lambda_2 = \sqrt{3}$ and $\lambda_3 = -3/
    \sqrt{3} = -\sqrt{3}$, as required.
:::

## Upper triangular matrices

Two of the important themes in linear algebra are: finding "nice"
matrices for a linear transformation; and decomposing matrices into
products of "nice" matrices. In this section we consider the first (of
at least three) type of "nice" matrices for a linear transformation.
What's the definition of "nice"? Well, there's no mathematical
definition, but if we are able to determine the answer to many questions
by just looking at the matrix and performing no further calculations,
then perhaps we can all agree that matrix is "nice".

::: {.defn}
A matrix $A = [\alpha_{ij}]$ with entries in a field $F$ is ***upper
triangular*** if $\alpha_{ij} = 0$ for all $i > j$. An upper triangular
matrix is of the form $$\begin{pmatrix}
    \alpha_{11} & \alpha_{12} & \cdots & \alpha_{1n} \\
    0 & \alpha_{22} & \cdots & \alpha_{2n} \\
    \vdots  & \vdots  & \ddots & \vdots   \\
    0 & 0 & \cdots & \alpha_{nn}
  \end{pmatrix}.$$
:::

Recall that an *algebraically closed field* is field in which *every*
polynomial is a product of linear factors. For example, $\mathbb{C}$ is
an algebraically closed field, by the Fundamental Theorem of Algebra.

Here's why upper triangular matrices are a good thing.

::: {.prop}
[]{#prop-upper-triangular-good label="prop-upper-triangular-good"} Let $V$ be an $n$-dimensional vector
space over an algebraically closed field $F$, let $T : V\to V$ be a
linear transformation, and let $A = [\alpha_{ij}]$ be an upper
triangular matrix for $T$ with respect to some basis for $V$. Then the
following hold:

1.  $\det(A) = \alpha_{11}\alpha_{22} \cdots \alpha_{nn}$;

2.  $A$ is invertible if and only if none of $\alpha_{11}, \alpha_{22},
                \ldots, \alpha_{nn}$ is $0$;

3.  the eigenvalues of $A$ are $\alpha_{11}, \alpha_{22}, \ldots,
                \alpha_{nn}$;

4.  the characteristic polynomial $c_A(x)$ is $(x - \alpha_{11})(x -
                \alpha_{22})\cdots(x - \alpha_{nn})$.

In other words, upper triangular matrices are [nice]{.sans-serif}.
:::

::: {.lemma}
[]{#lemma-upper-triangular label="lemma-upper-triangular"} Let $T: V \to V$ be a linear
transformation and let $\mathscr{B} = \{v_1,
  v_2, \ldots, v_n\}$ be a basis for $V$. Then
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ is upper triangular
if and only if $T(v_i) \in \operatorname{Span}(v_1, \ldots, v_i)$ for
all $i \in
  \{1, 2, \ldots, n\}$.
:::

::: {.proof}
*Proof.* It is straightforward to verify this directly from the
definitions of upper triangular matrices and the definition of
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$. ◻
:::

::: {.thm}
[]{#cor:quotient:triangular label="cor:quotient:triangular"} Let $V$ be an $n$-dimensional vector
space over an algebraically closed field $F$, and let $T : V\to V$ be a
linear transformation. Then there is a basis $\mathscr{B}$ of $V$ so
that $\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$ is upper
triangular.
:::

::: {.proof}
*Proof.* We proceed by induction on the dimension $n$ of $V$. Every
$1 \times 1$ matrix is upper triangular, and so the result holds for
$n = 1$.

Suppose that $n > 1$ and that the conclusion of the theorem holds for
all vector spaces over $F$ with dimension strictly less than $n$. Since
$F$ is algebraically closed, it follows from
[Proposition 8.2.2]({{< ref "08-eigen-stuff#prop-eigenvalue-root" >}}) that $T$ has an eigenvalue
$\lambda \in F$. We define
$$W = \operatorname{im} (T - \lambda \operatorname{id}),$$ where
$\operatorname{id}: V\to V$ is the identity linear transformation. If
$v\in V\setminus \{\vec{0}\}$ is an eigenvector with eigenvalue
$\lambda$, then $v\in\ker(T - \lambda \operatorname{id})$ (the
eigenspace of $\lambda$). Hence
$\dim\ker(T - \lambda \operatorname{id}) > 0$ and so, by the
Rank-Nullity Theorem
([Theorem 4.1.7]({{< ref "04-linear-transf#thm-rank-nullity" >}})),
$$\dim W = \dim \operatorname{im} (T - \lambda \operatorname{id}) = \dim V -
    \dim \ker(T - \lambda \operatorname{id})  < \dim V.$$ To apply the
inductive hypothesis, we require a linear transformation from $W$ to
$W$. If $w\in W$, then $T(w) = (T- \lambda \operatorname{id})(w) +
  \lambda w$ and since $(T- \lambda \operatorname{id})(w) \in
  \operatorname{im} (T- \lambda \operatorname{id}) = W$ and
$\lambda w \in W$, it follows that $T(w) \in W$. If we define
$S : W \to W$ by $S(w) = T(w)$ for all $w\in W$, then $S$ is a linear
transformation.

Hence, by the inductive hypothesis, there exists a basis $\mathscr{C} =
  \{w_1, w_2, \ldots, w_m\}$ for $W$ such that
$\operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(S)$ is upper triangular.
In particular, by
[Lemma 8.3.3]({{< ref "08-eigen-stuff#lemma-upper-triangular" >}}), $T(w_i) = S(w_i) \in
  \operatorname{Span}(w_1, \ldots, w_i)$ for all $w_i\in \mathscr{C}$.
If we extend $\mathscr{C}$ to a basis
$\mathscr{B} = \{v_1 = w_1, v_2 = w_2,
    \ldots, v_m = w_m, v_{m + 1}, \ldots, v_n\}$ for $V$, then, for
every $i\in
    \{1, \ldots, n\}$,
$$T(v_i) = (T - \lambda \operatorname{id})(v_i) + \lambda v_i.$$ Hence
if $i\in \{1, \ldots, n\}$ is arbitrary, then
$$(T - \lambda \operatorname{id})(v_i) \in \operatorname{im} (T - \lambda\operatorname{id}) = W = \operatorname{Span}(w_1,
    \ldots, w_m) = \operatorname{Span}(v_1, \ldots, v_m)$$ and so
$$T(v_i) = (T - \lambda \operatorname{id})(v_i) + \lambda v_i 
    \in  
    \operatorname{Span}(v_1, \ldots, v_m, v_i)
    \subseteq 
    \operatorname{Span}(v_1, \ldots, v_m, v_{m + 1}, \ldots, v_i).$$
Hence, again by
[Lemma 8.3.3]({{< ref "08-eigen-stuff#lemma-upper-triangular" >}}),
$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$ is upper triangular. ◻
:::

Note that although
[Theorem 8.3.4]({{< ref "08-eigen-stuff#cor:quotient:triangular" >}}) states that every linear
transformation from a vector space over an algebraically closed field to
itself has an upper triangular matrix, neither the statement of the
result nor the proof is constructive. In other words, neither the
theorem nor its proof says how to find such an upper triangular matrix
(at least not in an easy to compute way).

## The Cayley-Hamilton Theorem

The subject of this section is the following theorem.

::: {.thm}
[]{#thm-cayley-hamilton label="thm-cayley-hamilton"} Let $V$ be a finite-dimensional vector
space and let $T : V \to V$ be a linear transformation. If $c_{T}(x)$ is
the characteristic polynomial of $T$, then
$c_{T}(T) = \vec{0}_{\mathcal{L}(V, V)}$, where
$\vec{0}_{\mathcal{L}(V, V)}$ is the linear transformation of $V$
mapping every vector $v\in V$ to $\vec{0}_V$.
:::

We showed in
Problem [5]({{< ref "08-eigen-stuff#problem-08-05" >}}) in
[Section 8.5]({{< ref "08-eigen-stuff#problems-08-eigen-stuff" >}}) that the matrix of the linear
transformation $c_T(T)$ equals $c_T(A)$ where $A$ is the matrix of $T$.
It follows that $c_T(A)$ is the zero matrix.

::: {.exampjupyter}
We showed in
[Example 8.2.6]({{< ref "08-eigen-stuff#ex-no-eigenvalues" >}}) that the characteristic polynomial of
$T: \mathbb{R} ^ 2 \to \mathbb{R} ^ 2$ with matrix $$A =
    \begin{pmatrix}
      1 & -2 \\
      2 & 0
    \end{pmatrix}$$ is $$c_A(x) = x ^ 2 - x + 4.$$ The Cayley-Hamilton
Theorem asserts that $$c_A(A) = A ^ 2 - A + 4I$$ is the $2\times 2$ zero
matrix, where $I$ is the $2\times 2$ identity matrix. You can verify
that this is true by direct computation.
:::

::: {.proof}
*Proof of
[Theorem 8.4.1]({{< ref "08-eigen-stuff#thm-cayley-hamilton" >}}).* We will give a proof of the special
case of
[Theorem 8.4.1]({{< ref "08-eigen-stuff#thm-cayley-hamilton" >}}) when the field $F$ over which the
vector space $V$ is defined is algebraically closed[^1].

By
[Theorem 8.3.4]({{< ref "08-eigen-stuff#cor:quotient:triangular" >}}), there exists a basis
$\mathscr{B} = \{w_1, w_2,
  \ldots, w_n\}$ for $V$ such that the matrix
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ of $T$ with respect
to $\mathscr{B}$ is upper triangular. We will denote
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ by $A =
  [\alpha_{ij}]$. If $\dim V = n$, then, by
[Proposition 8.3.2]({{< ref "08-eigen-stuff#prop-upper-triangular-good" >}})(4),
$$c_T(x) = (x - \alpha_{11})(x - \alpha_{22})\cdots (x - \alpha_{nn}).$$
If we substitute $T$ for $x$ in the previous equation, we obtain
$$c_T(T) = (T - \alpha_{11}\operatorname{id})(T -
    \alpha_{22}\operatorname{id})\cdots (T - \alpha_{nn}\operatorname{id}).$$
So, $c_T(T)$ is itself a linear transformation from $V$ to $V$ (as a
composite of the linear transformations
$T - \alpha_{ii}\operatorname{id}$).

We define $W_0 = \{\vec{0}\}$ and
$W_k = \operatorname{Span}(w_1, \ldots,
  w_k)$ for every $k \in \{1, \ldots, n\}$. Note that
$$W_0 \subseteq W_1 \subseteq W_2\subseteq \cdots \subseteq W_n.$$ Since
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ is upper triangular,
[Lemma 8.3.3]({{< ref "08-eigen-stuff#lemma-upper-triangular" >}}) implies that
$$\label{eq-proof-of-ch}
    T(w_i) = \alpha_{1i}w_1 + \alpha_{2i}w_2 + \cdots + \alpha_{ii}w_i \in
    \operatorname{Span}(w_1, w_2, \ldots, w_i) = W_i$$ for every
$i\in \{1, \ldots, n\}$.

We will show that
$(T- \alpha_{kk} \operatorname{id})(W_k) \subseteq W_{k -
  1}$ for all $k$.

Suppose that $w_k\in \mathscr{B}$ is arbitrary. Then $$\begin{aligned}
    (T- \alpha_{kk}\operatorname{id})(w_k) &= T(w_k) - \alpha_{kk}w_k \\
                             &= \alpha_{1k}w_1  + \cdots + \alpha_{k-1\ k}w_{k -
                             1} + \alpha_{kk}w_k - \alpha_{kk}w_k\\
                             &= \alpha_{1k}w_1  + \cdots + \alpha_{k-1\ k}w_{k
                             - 1} \in \operatorname{Span}(w_1, \ldots, w_{k
                           -1}) = W_{k -1}.
  \end{aligned}$$ On the other hand, if $j \in \{1, \ldots, k - 1\}$,
then $$(T- \alpha_{kk}\operatorname{id})(w_j) = T(w_j) - \alpha_{kk}w_j 
                             = \alpha_{1j}w_1  + \cdots + \alpha_{jj}w_j -
                             \alpha_{kk}w_j \in \operatorname{Span}(w_1,
                             \ldots, w_{j}) = W_{j} \subseteq W_{k -1}.$$
Hence $(T- \alpha_{kk}\operatorname{id})(w_j)\in W_{k - 1}$ for all
$j\in \{1, \ldots, k\}$ and for all $k \in \{1, \ldots,
 n\}$.

If $w\in W_k$ is arbitrary, then there exist $\beta_1,
  \beta_2,\ldots, \beta_k\in F$ such that
$$w = \beta_1w_1 + \beta_2w_2 + \cdots + \beta_k w_k.$$ This implies
that $$(T - \alpha_{kk}\operatorname{id})(w)
    = 
    \underbrace{\beta_1(T - \alpha_{kk}\operatorname{id})(w_1)}_{\in W_{k-1}} + 
    \underbrace{\beta_2(T - \alpha_{kk}\operatorname{id})(w_2)}_{\in W_{k-1}} 
    + \cdots + 
    \underbrace{\beta_k(T - \alpha_{kk}\operatorname{id})(w_k)}_{\in W_{k - 1}}
    \in W_{k - 1}.$$ Since $k$ and $w\in W_k$ were arbitrary, it follows
that
$$(T - \alpha_{kk}\operatorname{id})(W_k) \subseteq W_{k - 1}\quad \text{for all }k \in 
    \{1, \ldots, n\}.$$ But
$W_n = \operatorname{Span}(w_1, \ldots, w_n) = V$, and so
$$\begin{aligned}
    c_T(T)(V)  & = & 
    (T - \alpha_{11}\operatorname{id})(T - \alpha_{22}\operatorname{id})\cdots (T - \alpha_{nn}\operatorname{id})(V) \\
    & = & 
    (T - \alpha_{11}\operatorname{id})(T - \alpha_{22}\operatorname{id})\cdots (T - \alpha_{nn}\operatorname{id})(W_n) \\
    & \subseteq & 
    (T - \alpha_{11}\operatorname{id})(T - \alpha_{22}\operatorname{id})\cdots (T - \alpha_{n-1\, n-1
    }\operatorname{id})(W_{n - 1}) \\
    & \vdots &  \\
    & \subseteq & (T - \alpha_{11}\operatorname{id})(W_1) \\
    & \subseteq & W_0 = \{\vec{0}_{V}\}.
  \end{aligned}$$ Therefore $c_T(T)(v) = \vec{0}_V$ for every $v\in V$
and so $c_T(T) = \vec{0}_{\mathcal{L}(V, V)}$, as required. ◻
:::

## Problems {#problems-08-eigen-stuff}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-08-01 label="problem-08-01"}

    ::: {.questionjupyter}
    Let $T \colon \mathbb{R}^{2} \to \mathbb{R}^{2}$ be the linear
    transformation having matrix $$A = \begin{pmatrix}
          -13 & -5 \\
          34 & 13
        \end{pmatrix}$$ with respect to the standard basis. Calculate
    the characteristic polynomial of $T$.
    :::

2.  []{#problem-08-02 label="problem-08-02"}

    ::: {.questionjupyter}
    For each matrix $A$ below, let
    $T \colon \mathbb{R}^{3} \to \mathbb{R}^{3}$ be the linear
    transformation having matrix $A$ with respect to the standard basis,
    that is, $$\begin{aligned}
      T \colon \mathbb{R}^{3} &\to \mathbb{R}^{3} \\
      \vec{v} &\mapsto A\vec{v}.
      \end{aligned}$$ Calculate the characteristic polynomial of $T$ and
    find the eigenvalues of $T$. $$\begin{array}{rlrlrl}
          \mbox{(a)} & \begin{pmatrix}
            3 & -4 & 0 \\
            0 & -1 & 0 \\
            0 & 6 & 2
          \end{pmatrix}
          &\quad
          \mbox{(b)} & \begin{pmatrix}
            1 & 1 & -1 \\
            -2 & 4 & -2 \\
            0 & 1 & 0
          \end{pmatrix}
          &\quad
          \mbox{(c)} &\begin{pmatrix}
            5 & 2 & 2 \\
            2 & 2 & -4 \\
            2 & -4 & 2
          \end{pmatrix}
          \\[20pt]
          \mbox{(d)} & \begin{pmatrix}
            3 & 4 & 4 \\
            1 & 3 & 0 \\
            -2 & -4 & -1
          \end{pmatrix}
          &
          \mbox{(e)} & \begin{pmatrix}
            1 & 0 & 1 \\
            0 & 2 & 1 \\
            -1 & 0 & 3
          \end{pmatrix}
          &
          \mbox{(f)} & \begin{pmatrix}
            2 & -1 & 0 \\
            0 & 2 & 0 \\
            -1 & 1 & 2
          \end{pmatrix}
          \\[20pt]
          \mbox{(g)} & \begin{pmatrix}
            -2 & -3 & 0 \\
            3 & 4 & 0 \\
            6 & 6 & 1
          \end{pmatrix}.
        \end{array}$$
    :::

3.  []{#problem-08-03 label="problem-08-03"}

    ::: {.questionjupyter}
    Let $$A = \begin{pmatrix}
              1 & 1 & 0 \\
              0 & 2 & 0 \\
              0 & 0 & 1
            \end{pmatrix}
            \qquad \text{and} \qquad
            B = \begin{pmatrix}
              2 & 0 & 0 \\
              0 & 2 & 2 \\
              0 & 0 & 1
            \end{pmatrix}.$$ Show that $A$ and $B$ have different
    characteristic polynomials.
    :::

4.  []{#problem-08-04 label="problem-08-04"}

    ::: {.questionjupyter}
    Let $T \colon \mathbb{R}^{4} \to \mathbb{R}^{4}$ be the linear
    transformation given by the matrix $$A = \begin{pmatrix}
              2 & 1 & 0 & -1 \\
              -2 & 5 & -1 & -7 \\
              -12 & 16 & -4 & -15 \\
              -2 & 3 & -1 & -5
            \end{pmatrix}.$$ Calculate the characteristic polynomial
    of $T$.
    :::

5.  []{#problem-08-05 label="problem-08-05"}

    ::: {.question}
    Let $T \colon V \to V$ be a linear transformation of a
    finite-dimensional vector space $V$ over a field $F$. Let $f(x)$ be
    a polynomial over $F$,  $\mathscr{B}$ be a basis for $V$ and $A =
          \operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$. Show that
    $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(f(T)) = f(A).$$
    Deduce that
    $\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(c_T(T)) = c_T(A)$.
    :::

[^1]: The general case can be reduced to the case when $F$ is
    algebraically closed via the observation that for any matrix $A$
    with entries in $F$, $c_A(x)$ does not change if we interpret $A$ as
    having entries in the algebraic closure $\bar F$. For example,
    interpret a real matrix as having complex entries. Interested and
    Galois-theoretically inclined students can chase down the details.
