# Algorithms to live by {#chapter-algorithms}
{{< chapter 2 >}}

## Preamble

You learned one algorithm in MT2501, and this is really the only
algorithm required for the linear algebra computations in this course
too. The algorithm is ***Gaussian elimination***. The following are the
different types of problems you can solve using Gaussian elimination:

1.  Show that a collection $\mathscr{A}$ of vectors in a vector space
    $V$ is linearly independent or linearly dependent;

2.  Find the dimension of a subspace $W$ spanned by some collection
    $\mathscr{A}$ of vectors;

3.  Find a basis for a subspace $W$ spanned by some collection
    $\mathscr{A}$ of vectors;

4.  Find a linear combination of vectors equal to some vector.

In this section, we will show why and how you can use Gaussian
elimination to solve these types of problems by hand.

Almost no one performs linear algebra calculations by hand today, this
is error prone, and precisely the type of thing that computers are much
better at than human beings. Given that you spent an entire semester in
MT2501 perfecting the obsolete art of performing Gaussian elimination by
hand, we are not going to do any Gaussian elimination in MT3501, but I
am instead going to use a computer. While I encourage you to use a
computer also, and there are some computing resources available for this
module, you are welcome to do it the old fashioned way, if you want to.
You are also free to use any computing resources that you choose, you do
not have to use those provided as part of this module. However, when it
comes to Gaussian elimination and resolving the related problems in this
module, I will only be able to provide support for the computing
resources provided as part of this module, and not other resources
(including your hand computations).

Why include a section about how to perform these algorithms by hand,
when we will use computers instead? The purpose is two-fold: firstly,
for completeness, to show you what is possible, and why it is valid;
secondly, to demonstrate that using a computer is superior.

When covering this material in lectures, I will concentrate on:

-   how to theoretically apply Gaussian elimination to resolve problems
    of the above types;

-   how to practically perform such computations with the aid of a
    computer.

I will not go through the proofs of why the various algorithms are
valid, nor how to perform Gaussian elimination by hand; both of these
aspects are covered in full detail in the notes below.

## Gaussian elimination

We recall a bunch of stuff from MT2501 that is useful in this section
and course. \[The material in this section is a summary of the section
of a similar name in the MT2501 notes.\]

Recall from MT2501, that a matrix is in *row-echelon form* if it looks
like: $$\begin{pmatrix}
    \ast   & \ast   & \ast   & \cdots & \cdots & \ast     \\
    0      & \ast   & \ast   & \cdots & \cdots & \ast     \\
    0      & 0      & \ast   & \cdots & \cdots & \ast     \\
    \vdots & \vdots & \vdots & \ddots &        & \vdots   \\
    0      & 0      & 0      & \cdots & \ast   & \ast   &
  \end{pmatrix}
  \qquad\text{for example}\qquad
  \begin{pmatrix}
    1 & 2 & 3 & 4  & 5  \\
    0 & 6 & 7 & 8  & 9  \\
    0 & 0 & 0 & 10 & 11 \\
    0 & 0 & 0 & 0  & 12
  \end{pmatrix}$$ while a matrix is in ***reduced row-echelon form*** if
it looks like:
$$% The following is not completely ideal, but it's the same as used in MT2501
  % in 2018-19 so probably good enough.
  \begin{pmatrix}
    1      & 0      & \ldots & 0      \\
    0      & 1      & \ldots & 0      \\
    \vdots & \vdots & \ddots & \vdots \\
    0      & 0      & \ldots & 1      \\
    0      & 0      & \ldots & 0      \\
    0      & 0      & \ldots & 0      \\
    \vdots & \vdots & \ddots & \vdots \\
    0      & 0      & \ldots & 0      \\
  \end{pmatrix}
  \qquad\text{for example}\qquad
  \begin{pmatrix}
    1 & 0 & 2 & 0 & 3 \\
    0 & 1 & 4 & 0 & 0 \\
    0 & 0 & 0 & 1 & 5 \\
    0 & 0 & 0 & 0 & 0
  \end{pmatrix}$$

If $r_i$ denotes the $i$th row of a matrix $A$, then ***elementary row
operations*** on $A$ are:

-   interchanging of two rows ($r_i \leftrightarrow r_j$, $i\neq j$);

-   multiplying a row by a non-zero scalar $\lambda$
    ($r_i \rightarrow \lambda
              r_i$, $\lambda \neq 0$);

-   adding a non-zero scalar multiple of another row to a row
    ($r_i \rightarrow
              r_i + \lambda r_j$, $i \neq j$).

::: {.defn}
If $A$ and $B$ are $m \times n$ matrices with entries from a field $F$,
then we say that $A$ and $B$ are ***row-equivalent*** if $B$ can be
obtained from $A$ by a finite sequence of elementary row operations.
:::

::: {.prop}
[]{#prop-row-echelon label="prop-row-echelon"} If
$A$ is a non-zero matrix, then:

1.  $A$ is row-equivalent to a row-echelon matrix;

2.  $A$ is row-equivalent to a unique reduced row-echelon matrix.
:::

There can be many echelon matrices that are row-equivalent to a given
matrix, but only one reduced row-echelon matrix.

***Elementary column operations***, ***column-equivalent***,
***column-echelon***, and ***reduced column-echelon*** are defined
analogously to their "row" counterparts, and the analogue of
[Proposition 3.2.2]({{< ref "03-algorithms-to-live-by#prop-row-echelon" >}}) holds too.

::: {.defn}
If $A$ is an $m \times n$ matrix with entries from a field $F$, then the
set $\mathcal{R}$ of rows of $A$ can be viewed as row vectors in
$F ^ n$. The subspace of $F ^ n$ spanned by $\mathcal{R}$ is called the
***row-space*** of $A$; and is denoted by $\operatorname{Row}(A)$.

If $\mathcal{C}$ is the set of columns of $A$, then the
***column-space*** of $A$ is just $\operatorname{Span}(\mathcal{C})$ in
$F ^ m$ and is denoted $\operatorname{Col}(A)$.
:::

::: {.prop}
[]{#prop-row-equiv label="prop-row-equiv"} Let $A$ and
$B$ be $m \times n$ matrices with entries from a field $F$. Then the
following hold:

1.  $A$ and $B$ are row-equivalent if and only if
    $\operatorname{Row}(A) = \operatorname{Row}(B)$;

2.  $A$ and $B$ are column-equivalent if and only if
    $\operatorname{Col}(A) = \operatorname{Col}(B)$.
:::

Another way of stating
[Proposition 3.2.4]({{< ref "03-algorithms-to-live-by#prop-row-equiv" >}})(1) is to say that the row-space of a matrix
is *invariant* (i.e. does not change) under elementary row operations.
Similarly, the column-space of a matrix is invariant under elementary
column operations.

::: {.examp}
[]{#examp-row-ops-do-not-preserve-col-space label="examp-row-ops-do-not-preserve-col-space"} Show that the column
space of the matrix $$A =
    \begin{pmatrix}
      1 & 0 \\
      1 & 0
    \end{pmatrix}$$ does not equal the column space in $\mathbb{R} ^ 2$
of the reduced row-echelon matrix $E$ that's row-equivalent to $A$.
:::

::: {.solution}
Certainly,
$$\begin{pmatrix} 1 \\ 1 \end{pmatrix} \in \operatorname{Col}(A).$$ But
$$E =
    \begin{pmatrix}
      1 & 0 \\
      0 & 0
    \end{pmatrix}$$ and so
$$\operatorname{Col}(E) = \left\{ \begin{pmatrix} x \\ 0 \end{pmatrix} : x\in \mathbb{R}\right\}.$$
Clearly,
$$\begin{pmatrix} 1 \\ 1 \end{pmatrix}\not\in \operatorname{Col}(E)$$
and so $\operatorname{Col}(E) \not=\operatorname{Col}(A)$.
:::

::: {.prop}
[]{#prop-row-echelon-basis label="prop-row-echelon-basis"} The non-zero rows in a row echelon form
matrix $E$ form a basis for the row-space $\operatorname{Row}(E)$.

The non-zero columns in a column echelon form matrix $E$ form a basis
for the column-space $\operatorname{Col}(E)$.
:::

We end this section by stating a theorem that you might not have see
before, but which in any case you might have used. We saw in
[Example 3.2.5]({{< ref "03-algorithms-to-live-by#examp-row-ops-do-not-preserve-col-space" >}}) that row-operations
do not preserve the column-space of a matrix, but they do preserve its
null-space.

::: {.thm}
[]{#thm-row-ops-preserve-null-space label="thm-row-ops-preserve-null-space"} Let $A$ and $B$ be
row-equivalent $m \times n$ matrices with entries in a field $F$, and
let $\vec{v}\in F ^ n$. Then $A\vec{v} = \vec{0}$ if and only if
$B\vec{v} = \vec{0}$.
:::

::: {.proof}
*Proof.* Suppose that $$A =
    \begin{pmatrix}
      \alpha_{11}   & \alpha_{12}   & \cdots & \alpha_{1n} \\
      \alpha_{21}   & \alpha_{22}   & \cdots & \alpha_{2n} \\
      \vdots   & \vdots   & \ddots & \vdots \\
      \alpha_{m{1}} & \alpha_{m{2}} & \cdots & \alpha_{mn}
    \end{pmatrix}.$$ and suppose that
$$\vec{v} = \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix}\in F ^ n$$
is such that $A\vec{v} = \vec{0}$. It follows that $$\label{eq-prod}
    \alpha_{j1}v_1 + \alpha_{j2}v_2 + \cdots + \alpha_{jn}v_n = \sum_{i = 1}^ {n} \alpha_{ji}v_i = 0$$
for all $j$.

It suffices to show that if $B$ is an $m\times n$ matrix obtained from
$A$ by a single elementary row operation, then $Bv = \vec{0}$ also.
There are three elementary row operations which we consider in separate
cases.

**Case 1:** *Interchanging two rows.* Suppose that $B$ is obtained from
$A$ by interchanging the first and second row. Then $$B =
    \begin{pmatrix}
      \alpha_{21}   & \alpha_{22}   & \cdots & \alpha_{2n} \\
      \alpha_{11}   & \alpha_{12}   & \cdots & \alpha_{1n} \\
      \vdots   & \vdots   & \ddots & \vdots \\
      \alpha_{m{1}} & \alpha_{m{2}} & \cdots & \alpha_{mn}
    \end{pmatrix}.$$ Then $$B\vec{v} =
    \begin{pmatrix}
      \alpha_{21}   & \alpha_{22}   & \cdots & \alpha_{2n} \\
      \alpha_{11}   & \alpha_{12}   & \cdots & \alpha_{1n} \\
      \vdots   & \vdots   & \ddots & \vdots \\
      \alpha_{m{1}} & \alpha_{m{2}} & \cdots & \alpha_{mn}
    \end{pmatrix}
    \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix}
    =
    \begin{pmatrix}
      \alpha_{21}v_1 + \alpha_{22}v_2 + \cdots + \alpha_{2n}v_n \\
      \alpha_{11}v_1 + \alpha_{12}v_2 + \cdots + \alpha_{1n}v_n \\
      \vdots\\
      \alpha_{m1}v_1 + \alpha_{m2}v_2 + \cdots + \alpha_{mn}v_n
    \end{pmatrix}.$$ But from above
$$\alpha_{j1}v_1 + \alpha_{j2}v_2 + \cdots + \alpha_{jn}v_n = 0$$ for
every $j$, and so $B\vec{v} = \vec{0}$ also.

**Case 2:** *Multiplying a row by a non-zero scalar.* Suppose that $B$
is obtained from $A$ by multiplying the first row by the scalar
$\alpha\in F$. Then $$B =
    \begin{pmatrix}
      \alpha \alpha_{11} & \alpha  \alpha_{12} & \cdots & \alpha \alpha_{1n} \\
      \alpha_{21}        & \alpha_{22}         & \cdots & \alpha_{2n}        \\
      \vdots        & \vdots         & \ddots & \vdots        \\
      \alpha_{m{1}}      & \alpha_{m{2}}       & \cdots & \alpha_{mn}
    \end{pmatrix}.$$ Then $$\begin{aligned}
    B\vec{v} & = &
    \begin{pmatrix}
      \alpha \alpha_{11} & \alpha  \alpha_{12} & \cdots & \alpha \alpha_{1n} \\
      \alpha_{21}        & \alpha_{22}         & \cdots & \alpha_{2n}        \\
      \vdots        & \vdots         & \ddots & \vdots        \\
      \alpha_{m{1}}      & \alpha_{m{2}}       & \cdots & \alpha_{mn}
    \end{pmatrix}
    \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix}
    \\
    & = &
    \begin{pmatrix}
      \alpha \alpha_{11}v_1 + \alpha \alpha_{12}v_2 + \cdots + \alpha \alpha_{1n}v_n 
      \\
      \alpha_{21}v_1 + \alpha_{22}v_2 + \cdots + \alpha_{2n}v_n \\
      \vdots \\
      \alpha_{m1}v_1 + \alpha_{m2}v_2 + \cdots + \alpha_{mn}v_n 
    \end{pmatrix} \\
    & = &
    \begin{pmatrix}
    \alpha (\alpha_{11}v_1 + \alpha_{12}v_2 + \cdots + \alpha_{1n}v_n) \\
    \alpha_{21}v_1 + \alpha_{22}v_2 + \cdots + \alpha_{2n}v_n \\
    \vdots \\
    \alpha_{m1}v_1 + \alpha_{m2}v_2 + \cdots + \alpha_{mn}v_n
    \end{pmatrix} \\
    & = & \vec{0},
  \end{aligned}$$ from above and since $\alpha 0 = 0$.

**Case 3:** *Adding a non-zero scalar multiple of another row to a row.*
Suppose that $B$ is obtained from $A$ by adding the second row
multiplied by $\alpha\in F$ to the first row. Then $$B =
    \begin{pmatrix}
      \alpha_{11} + \alpha \alpha_{12} & \alpha_{12} + \alpha \alpha_{22} & \cdots & \alpha_{1n} +
      \alpha \alpha_{2n}                                                       \\
      \alpha_{21}                 & \alpha_{22}                 & \cdots & \alpha_{2n}   \\
      \alpha_{21}                 & \alpha_{22}                 & \cdots & \alpha_{2n}   \\
      \vdots                 & \vdots                 & \ddots & \vdots   \\
      \alpha_{m{1}}               & \alpha_{m{2}}               & \cdots & \alpha_{mn}
    \end{pmatrix}.$$ Hence $$\begin{aligned}
    B\vec{v} & = &
    \begin{pmatrix}
      \alpha_{11} + \alpha \alpha_{12} & \alpha_{12} + \alpha \alpha_{22} & \cdots & \alpha_{1n} +
      \alpha \alpha_{2n}                                                       \\
      \alpha_{21}                 & \alpha_{22}                 & \cdots & \alpha_{2n}   \\
      \alpha_{21}                 & \alpha_{22}                 & \cdots & \alpha_{2n}   \\
      \vdots                 & \vdots                 & \ddots & \vdots   \\
      \alpha_{m{1}}               & \alpha_{m{2}}               & \cdots & \alpha_{mn}
    \end{pmatrix}
    \begin{pmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{pmatrix} \\
    & = &
    \begin{pmatrix}
      (\alpha_{11} + \alpha \alpha_{12})v_1 + (\alpha_{12} + \alpha
       \alpha_{22}) v_2 +
        \cdots + (\alpha_{1n} + \alpha \alpha_{2n})v_n \\
      \alpha_{21}v_1 + \alpha_{22}v_2 + \cdots + \alpha_{2n}v_n\\
      \vdots\\
      \alpha_{m1}v_1 + \alpha_{m2}v_2 + \cdots + \alpha_{mn}v_n 
    \end{pmatrix}
    \\
    & = &
    \begin{pmatrix}
    (\alpha_{11}v_1 + \alpha_{12}v_2 + \cdots + \alpha_{1n}v_n) + \alpha
      (\alpha_{21}v_1 + \alpha_{22}v_2 + \cdots + \alpha_{2n}v_n) \\
    \alpha_{21}v_1 + \alpha_{22}v_2 + \cdots + \alpha_{2n}v_n \\
    \vdots\\
    \alpha_{m1}v_1 + \alpha_{m2}v_2 + \cdots + \alpha_{mn}v_n
    \end{pmatrix}\\
    & = &
    \vec{0}
  \end{aligned}$$ again by the above. ◻
:::

## Algorithm 1: Show that a set of vectors is linearly (in)dependent

::: {.algorithm}
[\[algorithm-lin-independence\]]{#algorithm-lin-independence
label="algorithm-lin-independence"} Show that the collection
$$\mathscr{A} = 
    \left\{
      \begin{pmatrix}
      v_{1,1}  \\
      v_{2, 1} \\
      \vdots\\
      v_{n, 1}
    \end{pmatrix}, 
    \ldots,
    \begin{pmatrix}
      v_{1, m}  \\
      v_{2, m} \\
      \vdots\\
      v_{n, m}
    \end{pmatrix}
    \right\}
    \subseteq F ^ n$$ of vectors is, or is not, linearly independent.

1.  Make an $n\times m$ matrix whose columns are the vectors in
    $\mathscr{A}$: $$\begin{pmatrix}
                  v_{1, 1} & v_{1, 2} & \cdots & v_{1, m} \\
                  v_{2, 1} & v_{2, 2} & \cdots & v_{2, m} \\
                  \vdots   & \vdots   & \ddots & \vdots   \\
                  v_{n, 1} & v_{n, 2} & \cdots & v_{n, m}
                \end{pmatrix}$$ or whose rows are the vectors in
    $\mathscr{A}$, in other words, the $m \times n$ matrix that is the
    transpose of the matrix above: $$\begin{pmatrix}
                  v_{1, 1} & v_{2, 1} & \cdots & v_{n, 1} \\
                  v_{1, 2} & v_{2, 2} & \cdots & v_{n, 2} \\
                  \vdots   & \vdots   & \ddots & \vdots   \\
                  v_{1, m} & v_{2, m} & \cdots & v_{n, m}
                \end{pmatrix}$$

2.  Perform elementary row operations or elementary column operations to
    the matrix from step (1) until it is in row or column echelon form.
    Note that it does not matter if you used rows or columns in step
    (1), you can use either row or column operations.

3.  If the number of non-zero rows in the row echelon form equals
    $|\mathscr{A}| = m$, then $\mathscr{A}$ is linearly independent. If
    the number of non-zero columns in the column echelon form equals
    $|\mathscr{A}| = m$, then $\mathscr{A}$ is linearly independent.
:::

::: {.thm}
[]{#thm-algorithm-1 label="thm-algorithm-1"}
[\[algorithm-lin-independence\]](#algorithm-lin-independence){reference-type="ref"
reference="algorithm-lin-independence"} is valid.
:::

::: {.proof}
*Proof.* \[Omitted from the course.\] Suppose that we enter the vectors
in $\mathscr{A}$ as columns in a matrix $A$ in part (1), and perform
elementary column operations in part (2) to obtain a matrix $E$ in
column echelon form. Then, by
[Proposition 3.2.4]({{< ref "03-algorithms-to-live-by#prop-row-equiv" >}}), $A$ and $E$ are column-equivalent, and so
$\operatorname{Col}(A) = \operatorname{Col}(E)$. Hence, by
[Proposition 3.2.6]({{< ref "03-algorithms-to-live-by#prop-row-echelon-basis" >}}), the non-zero columns in $E$ are a
basis for $\operatorname{Col}(E)$. But
$\operatorname{Col}(A) = \operatorname{Span}(\mathscr{A})$ by definition
and $\mathscr{A}$ is linearly independent if and only if the
$\operatorname{dim}\operatorname{Span}(\mathscr{A}) = |\mathscr{A}|$ if
and only if the number of non-zero columns in $E$, which equals
$\operatorname{dim}\operatorname{Col}(E) = \operatorname{dim}\operatorname{Span}(\mathscr{A})
    = |\mathscr{A}|$.

If we perform row operations rather than column operations in
[\[algorithm-lin-independence\]](#algorithm-lin-independence){reference-type="ref"
reference="algorithm-lin-independence"}(2) or obtain the row echelon
form for $A$, then we must use the fact that the row and column rank of
a matrix (see Theorem 7.5.3) are equal to prove that
[\[algorithm-lin-independence\]](#algorithm-lin-independence){reference-type="ref"
reference="algorithm-lin-independence"} is valid. ◻
:::

::: {.exampjupyter}
Is the collection $$\mathscr{A} =
    \left\{
    \begin{pmatrix} 2 \\ 1 \\ 0 \\ 0 \end{pmatrix},
    \begin{pmatrix} 1 \\ 1 \\ 1 \\ 0 \end{pmatrix},
    \begin{pmatrix} 1 \\ 0 \\ 1 \\ 1 \end{pmatrix}
    \right\}$$ a linearly independent subset of $\mathbb{R} ^ 4$?
:::

::: {.solution}
We must put the vectors in $\mathscr{A}$ in a matrix $A$, then perform
elementary operations to $A$ to put it into echelon form. The set
$\mathscr{A}$ is linearly independent if and only if the number of
non-zero rows in the echelon form of $A$ is $3$.

Do we enter the vectors as rows or columns of $A$? Do we perform row
operations or column operations? What is valid here exactly? The
argument in [Theorem 3.3.2]({{< ref "03-algorithms-to-live-by#thm-algorithm-1" >}}) says that it does not matter, and that all
approaches are valid here.

Set $A$ to be the matrix with rows equal to $\mathscr{A}$: $$A =
    \begin{pmatrix}
      2 & 1 & 0 & 0 \\
      1 & 1 & 1 & 0 \\
      1 & 0 & 1 & 1
    \end{pmatrix}.$$ We perform elementary column operations to obtain
the column-echelon form of $A$: $$\begin{array}{rcll}
      \begin{pmatrix}
        2 & 1 & 0 & 0 \\
        1 & 1 & 1 & 0 \\
        1 & 0 & 1 & 1
      \end{pmatrix}
       & \longrightarrow &
      \begin{pmatrix}
        2 & 0 & 1 & 0 \\
        1 & 1 & 1 & 0 \\
        1 & 1 & 0 & 1
      \end{pmatrix}
       &
      \begin{array}{l}
        c_2 \longleftrightarrow c_3 \\
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        2 & 0 & 0 & 1 \\
        1 & 1 & 0 & 1 \\
        1 & 1 & 1 & 0
      \end{pmatrix}
       &
      \begin{array}{l}
        c_3 \longleftrightarrow c_4 \\
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        2 & 0 & 0 & 1 \\
        0 & 1 & 0 & 1 \\
        0 & 0 & 1 & 0
      \end{pmatrix}
       &
      \begin{array}{l}
        c_1 \longrightarrow c_1 - c_2 \\
        c_2 \longrightarrow c_2 - c_3
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        2 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 1 & 0
      \end{pmatrix}
       &
      \begin{array}{l}
        c_4 \longrightarrow 2c_4 - c_1 - 2c_2.
      \end{array}
    \end{array}$$ The number of non-zero columns in the column echelon
form of $A$ is $3 =
    |\mathscr{A}|$ and so $\mathscr{A}$ is linearly independent.
:::

::: {.omittedexampjupyter}
Determine whether the set $\{ x+x^{2}, 1-2x^{2}, 3+6x \}$ is linearly
independent in the vector space $\mathcal{P}$ of all real polynomials.
:::

::: {.solution}
We solve $$\alpha(x+x^{2}) + \beta(1-2x^{2}) + \gamma(3+6x) = 0;$$ that
is, $$\label{eq:lindep-example}
    (\beta+3\gamma) + (\alpha+6\gamma)x + (\alpha-2\beta)x^{2} = 0.$$
Equating coefficients yields the system of equations $$\begin{aligned}
    \beta + 3\gamma          & = 0 \\
    \alpha \qquad\, +6\gamma & = 0 \\
    \alpha-2\beta \qquad\,   & =0;
  \end{aligned}$$ that is, $$\begin{pmatrix}
      0 & 1  & 3 \\
      1 & 0  & 6 \\
      1 & -2 & 0
    \end{pmatrix}
    \begin{pmatrix} \alpha \\ \beta \\ \gamma \end{pmatrix} 
    = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}.$$ A sequence of row
operations ([Check!]{.smallcaps}) converts this to $$\begin{pmatrix}
      1 & -2 & 0 \\
      0 & 1  & 3 \\
      0 & 0  & 0
    \end{pmatrix} 
    \begin{pmatrix} \alpha \\ \beta \\ \gamma \end{pmatrix} 
    = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}.$$ Hence the original
equation is equivalent to $$\begin{aligned}
    \alpha - 2\beta \qquad\, & = 0  \\
    \beta + 3\gamma          & = 0.
  \end{aligned}$$ Since there are fewer equations remaining than the
number of variables, there is a non-zero solution. For example, if we
set $\gamma = 1$, then $\beta = -3\gamma = -3$ and $\alpha
    = 2\beta = -6$. Hence the set $\{ x+x^{2}, 1-2x^{2}, 3+6x \}$ is
*linearly dependent*.
:::

::: {.omittedexampjupyter}
Is the collection: $$\mathscr{A} =
    \left\{
    \begin{pmatrix} -61 \\ -6 \\ -60 \\ -16 \end{pmatrix},
    \begin{pmatrix} 91 \\ 12 \\ 46 \\ 58 \end{pmatrix},
    \begin{pmatrix} 31 \\ -97 \\ 54 \\ -48 \end{pmatrix}
    \begin{pmatrix} 0 \\ 97 \\ 20 \\ 22 \end{pmatrix}
    \right\}$$ a linearly independent subset of $\mathbb{R} ^ 4$?
:::

::: {.solution}
We enter the vectors as the rows in a matrix $A$: $$\begin{pmatrix}
    -61 & -6  & -60 & -16 \\
    91  & 12  & 46  & 58 \\
    31  & -97 & 54  & -48\\
    0   & 97  & 20  & 22
  \end{pmatrix}$$ and compute an echelon form of $A$:
$$\begin{pmatrix}-61 & -6 & -60 & -16\\0 & -186 & 2654 & -2082\\0 & 0 &
-15930638 & 12069582\\0 & 0 & 0 & 0\end{pmatrix}.$$
:::

## Algorithm 2: Find the dimension of a subspace

::: {.algorithm}
[\[algorithm-dim-of-subspace\]]{#algorithm-dim-of-subspace
label="algorithm-dim-of-subspace"} Find
$\operatorname{dim}\operatorname{Span}(\mathscr{A})$ where $\mathscr{A}$
is:
$$\mathscr{A} = \left\{\begin{pmatrix} v_{1,1} \\ v_{2, 1} \\ \vdots \\ v_{n, 1}
      \end{pmatrix}, \ldots,
    \begin{pmatrix} v_{1,m} \\ v_{2, m} \\ \vdots \\ v_{n, m}
  \end{pmatrix}\right\}
    \subseteq F ^ n.$$

1.  Make an $n\times m$ matrix whose columns are the vectors in
    $\mathscr{A}$ or whose rows are the vectors in $\mathscr{A}$; this
    is identical to
    [\[algorithm-lin-independence\]](#algorithm-lin-independence){reference-type="ref"
    reference="algorithm-lin-independence"}(1).

2.  Perform elementary row operations or elementary column operations to
    the matrix from step (1) until it is in row or column echelon form;
    this is identical to
    [\[algorithm-lin-independence\]](#algorithm-lin-independence){reference-type="ref"
    reference="algorithm-lin-independence"}(2).

3.  The number of non-zero rows in the row echelon form of the matrix
    from step (1) is the dimension of the subspace spanned by
    $\mathscr{A}$. The number of non-zero columns in the column echelon
    form of the matrix from step (1) is the dimension of the subspace
    spanned by $\mathscr{A}$.
:::

::: {.thm}
[]{#thm-algorithm-2 label="thm-algorithm-2"}
[\[algorithm-dim-of-subspace\]](#algorithm-dim-of-subspace){reference-type="ref"
reference="algorithm-dim-of-subspace"} is valid.
:::

::: {.proof}
*Proof.* In the proof of
[Theorem 3.3.2]({{< ref "03-algorithms-to-live-by#thm-algorithm-1" >}}) we showed that if $E$ is the column echelon
form of the matrix $A$ with columns equal to the vectors in
$\mathscr{A}$, then
$\operatorname{dim} \operatorname{Col}(E) = \operatorname{dim} \operatorname{Span}(\mathscr{A})$
and that $\operatorname{dim} \operatorname{Col}(E)$ is the number of
non-zero columns in $E$. ◻
:::

::: {.exampjupyter}
Find the dimension of the subspace of $\mathbb{R} ^ 3$ spanned by the
vectors $$\begin{pmatrix}
      -2 \\
      2 \\
      0 \\
    \end{pmatrix},
    \begin{pmatrix}
      -1 \\
      0 \\
      0 \\
    \end{pmatrix},
    \begin{pmatrix}
      1 \\
      -3 \\
      1 \\
    \end{pmatrix}.$$
:::

::: {.solution}
We enter the vectors above as the columns in a matrix $A$: $$A =
    \begin{pmatrix}
      -2 & -1 & 1  \\
      2  & 0  & -3 \\
      0  & 0  & 1
    \end{pmatrix}$$ and perform elementary row operations to find an row
echelon matrix equivalent to $A$: $$\begin{array}{rcll}
      \begin{pmatrix}
        -2 & -1 & 1  \\
        2  & 0  & -3 \\
        0  & 0  & 1
      \end{pmatrix}
       & \longrightarrow &
      \begin{pmatrix}
        -2 & -1 & 1  \\
        0  & -1 & -2 \\
        0  & 0  & 1
      \end{pmatrix}
       &
      \begin{array}{l}
        r_2 \longrightarrow r_1 + r_2. \\
      \end{array}
      \\
    \end{array}$$ Since the matrix: $$\begin{pmatrix}
      -2 & -1 & 1  \\
      0  & -1 & -2 \\
      0  & 0  & 1
    \end{pmatrix}$$ is in row-echelon form, it follows that the
dimension of the space spanned by the vectors is $3$.
:::

::: {.exampjupyter}
Find $\operatorname{dim}\operatorname{Span}(\mathscr{A})$ where
$$\mathscr{A} =
    \left\{
      \begin{pmatrix} 0 \\
        0 \\
        0 \\
        0 \\
      \end{pmatrix},
      \begin{pmatrix} 1 \\
        0 \\
        1 \\
        -1 \\
      \end{pmatrix},
      \begin{pmatrix} 0 \\
        -1 \\
        0 \\
        0 \\
      \end{pmatrix},
      \begin{pmatrix} 2 \\
        -1 \\
        0 \\
        2 \\
      \end{pmatrix}
    \right\}\subseteq \mathbb{R} ^ 4.$$
:::

::: {.solution}
We enter the vectors in $\mathscr{A}$ as the rows in a matrix $A$: $$A =
    \begin{pmatrix}
      0 & 0  & 0 & 0  \\
      1 & 0  & 1 & -1 \\
      0 & -1 & 0 & 0  \\
      2 & -1 & 0 & 2
    \end{pmatrix}$$ and perform elementary row operations to find an row
echelon matrix equivalent to $A$: $$\begin{array}{rcll}
      \begin{pmatrix}
        0 & 0  & 0 & 0  \\
        1 & 0  & 1 & -1 \\
        0 & -1 & 0 & 0  \\
        2 & -1 & 0 & 2
      \end{pmatrix}
       & \longrightarrow &
      \begin{pmatrix}
        1 & 0  & 1 & -1 \\
        0 & -1 & 0 & 0  \\
        2 & -1 & 0 & 2  \\
        0 & 0  & 0 & 0  \\
      \end{pmatrix}
       &
      \begin{array}{l}
        r_1 \longrightarrow r_2 \longrightarrow r_3 \longrightarrow r_4
        \longrightarrow r_1 \\
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        1 & 0  & 1  & -1 \\
        0 & -1 & 0  & 0  \\
        0 & -1 & -2 & 4  \\
        0 & 0  & 0  & 0  \\
      \end{pmatrix}
       &
      \begin{array}{l}
        r_3 \longrightarrow r_3 - 2r_1 \\
      \end{array} \\
       & \longrightarrow &
      \begin{pmatrix}
        1 & 0  & 1  & -1 \\
        0 & -1 & 0  & 0  \\
        0 & 0  & -2 & 4  \\
        0 & 0  & 0  & 0  \\
      \end{pmatrix}
       &
      \begin{array}{l}
        r_3 \longrightarrow r_3 - r_2 \\
      \end{array}
    \end{array}$$ It follows that
$\operatorname{dim}\operatorname{Span}(\mathscr{A}) = 3$.
:::

## Algorithm 3: Find a basis for a subspace

::: {.algorithm}
[\[algorithm-subspace-basis\]]{#algorithm-subspace-basis
label="algorithm-subspace-basis"} Find a basis for the subspace
$\operatorname{Span}(\mathscr{A})$ where $\mathscr{A}$ is:
$$\mathscr{A} = \left\{\begin{pmatrix} v_{1,1} \\ v_{2, 1} \\ \vdots \\ v_{n, 1}
      \end{pmatrix}, \ldots,
    \begin{pmatrix} v_{1,m} \\  v_{2, m}\\\vdots \\vec{v}_{n, m} \end{pmatrix}  \right\}
    \subseteq F ^ n.$$

1.  Make an $n\times m$ matrix whose columns are the vectors in
    $\mathscr{A}$ or whose rows are the vectors in $\mathscr{A}$; this
    is identical to
    [\[algorithm-lin-independence\]](#algorithm-lin-independence){reference-type="ref"
    reference="algorithm-lin-independence"}(1).

2.  If in step (1) you entered $\mathscr{A}$ as rows, then perform
    elementary row operations to obtain the matrix in row echelon form.
    If in step (1) you entered $\mathscr{A}$ as columns, then perform
    elementary column operations to obtain the matrix in column echelon
    form.

3.  The non-zero rows in the row echelon form of the matrix from
    step (1) is a basis for the row-space of that matrix, which is also
    the subspace spanned by $\mathscr{A}$.

    The non-zero columns in the column echelon form of the matrix from
    step (1) is a basis for the column-space of that matrix, which is
    also the subspace spanned by $\mathscr{A}$.
:::

::: {.thm}
[]{#thm-algorithm-3 label="thm-algorithm-3"}
[\[algorithm-subspace-basis\]](#algorithm-subspace-basis){reference-type="ref"
reference="algorithm-subspace-basis"} is valid.
:::

::: {.proof}
*Proof.* Suppose that the vectors in $\mathscr{A}$ are entered as the
rows in a matrix $A$. Then part (2) of the algorithm says that we must
perform elementary row operations to $A$ to obtain a matrix $E$ in
row-echelon form for $A$. It follows by
[Proposition 3.2.4]({{< ref "03-algorithms-to-live-by#prop-row-equiv" >}}) that $\operatorname{Row}(A) =
  \operatorname{Row}(E)$ and by
[Proposition 3.2.2]({{< ref "03-algorithms-to-live-by#prop-row-echelon" >}}) that the non-zero rows of $E$ form a basis
for $\operatorname{Row}(E)$.

The proof using columns instead of rows is similar. ◻
:::

::: {.omittedexampjupyter}
[]{#omittedexamp-5a label="omittedexamp-5a"} Let
$$\vec{v}_{1} = \begin{pmatrix} 1 \\
      -1 \\
      0 \\
      3 \\
    \end{pmatrix}, \quad
    \vec{v}_{2} = \begin{pmatrix} 2 \\
      1 \\
      1 \\
      0 \\
    \end{pmatrix},  \quad
    \vec{v}_{3} = \begin{pmatrix} 0 \\
      3 \\
      1 \\
      -6 \\
    \end{pmatrix}, \quad
    \vec{v}_{4} = \begin{pmatrix} 0 \\
      1 \\
      0 \\
      -1 \\
    \end{pmatrix}, \quad
    \vec{v}_{5} = \begin{pmatrix} -1 \\
      1 \\
      -1 \\
      0 \\
    \end{pmatrix}$$ and let $U$ be the subspace of $\mathbb{R}^{4}$
spanned by the set $\mathscr{A} = \{
    \vec{v}_{1}, \vec{v}_{2}, \vec{v}_{3}, \vec{v}_{4}, \vec{v}_{5}
    \}$. Find a basis $\mathscr{B}$ for $U$ and hence determine the
dimension of $U$.
:::

::: {.solution}
We put the vectors $\vec{v}_1$, $\vec{v}_2$, $\vec{v}_3$, $\vec{v}_4$,
and $\vec{v}_5$ as columns in the matrix: $$A =
    \begin{pmatrix}
      1  & 2 & 0  & 0  & -1 \\
      -1 & 1 & 3  & 1  & 1  \\
      0  & 1 & 1  & 0  & -1 \\
      3  & 0 & -6 & -1 & 0
    \end{pmatrix}.$$ We apply column operation to $A$ as follows:
$$\begin{array}{rcll}
      \begin{pmatrix}
        1  & 2 & 0  & 0  & -1 \\
        -1 & 1 & 3  & 1  & 1  \\
        0  & 1 & 1  & 0  & -1 \\
        3  & 0 & -6 & -1 & 0
      \end{pmatrix}
       & \longrightarrow          &
      \begin{pmatrix}
        1 & 2 & 0  & 0  & -1 \\
        2 & 1 & 3  & 1  & 1  \\
        0 & 1 & 1  & 0  & -1 \\
        0 & 0 & -6 & -1 & 0
      \end{pmatrix}
       & c_1 \to c_1 + 3c_4         \\
       & \longrightarrow          &
      \begin{pmatrix}
        1 & 1 & 0  & 0  & -1 \\
        2 & 2 & 3  & 1  & 1  \\
        0 & 0 & 1  & 0  & -1 \\
        0 & 0 & -6 & -1 & 0
      \end{pmatrix}
       & c_2 \to c_2 + c_5          \\
       & \longrightarrow          &
      \begin{pmatrix}
        0 & 1 & 0  & 0  & -1 \\
        0 & 2 & 3  & 1  & 1  \\
        0 & 0 & 1  & 0  & -1 \\
        0 & 0 & -6 & -1 & 0
      \end{pmatrix}
       & c_1 \to c_1 - c_2          \\
       & \longrightarrow          &
      \begin{pmatrix}
        0 & 1 & -1 & 0  & -1 \\
        0 & 2 & -2 & 1  & 1  \\
        0 & 0 & 0  & 0  & -1 \\
        0 & 0 & 0  & -1 & 0
      \end{pmatrix}
       & c_3 \to c_3 - 6c_4 + c_5   \\
       & \longrightarrow          &
      \begin{pmatrix}
        0 & 1 & 0 & 0  & -1 \\
        0 & 2 & 0 & 1  & 1  \\
        0 & 0 & 0 & 0  & -1 \\
        0 & 0 & 0 & -1 & 0
      \end{pmatrix}
       & c_3 \to c_3 + c_2.
    \end{array}$$ At this point, it is more or less clear that the
non-zero columns of the matrix:
$$\vec{w}_1 = \begin{pmatrix} 1 \\ 2 \\ 0 \\ 0 \end{pmatrix}, \quad
    \vec{w}_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \\ -1 \end{pmatrix}, \quad
    \vec{w}_3 = \begin{pmatrix} -1 \\ 1 \\ -1 \\ 0 \end{pmatrix}$$ are
linearly independent, but let's prove it anyway. Suppose that
$\alpha \vec{w}_1 + \beta \vec{w}_2 + \gamma \vec{w}_3 = \vec{0}$ for
some $\alpha, \beta, \gamma \in \mathbb{R}$. Then $$\begin{aligned}
    \alpha - \gamma & = & 0 \\
    2\alpha + \beta + \gamma & = & 0 \\
    -\gamma & = & 0 \\
    -\beta  & = & 0
  \end{aligned}$$ and so $\alpha = \beta = \gamma = 0$, and the vectors
$\vec{w}_1$, $\vec{w}_2$, and $\vec{w}_3$ are linearly independent. It
follows from
[\[algorithm-subspace-basis\]](#algorithm-subspace-basis){reference-type="ref"
reference="algorithm-subspace-basis"} that
$\{\vec{w}_1, \vec{w}_2, \vec{w}_3\}$ is a basis for $U$ and that
$\operatorname{dim} U = 3$.

It is possible to double check that $\operatorname{Span}(\vec{w}_1,
  \vec{w}_2, \vec{w}_3) = U$ by showing that
$\vec{v}_1, \vec{v}_2, \vec{v}_3,
  \vec{v}_4, \vec{v}_5\in\operatorname{Span}(\vec{w}_1, \vec{w}_2, \vec{w}_3)$.
Since $\vec{v}_4 = \vec{w}_2$ and $\vec{v}_5 = \vec{w}_3$, it suffices
to show that
$\vec{v}_1, \vec{v}_2, \vec{v}_3\in\operatorname{Span}(\vec{w}_1,
  \vec{w}_2, \vec{w}_3)$. This follows because: $$\begin{aligned}
    \vec{v}_1 & = & \begin{pmatrix} 1 \\ -1 \\ 0 \\ 3 \end{pmatrix} = \vec{w}_1 - 3 \vec{w}_2 \\
    \vec{v}_2 & = & \begin{pmatrix} 2 \\ 1 \\ 1 \\ 0 \end{pmatrix}  = \vec{w}_1 - \vec{w}_3 \\
    \vec{v}_3 & = & \begin{pmatrix} 0 \\ 3 \\ 1 \\ -6 \end{pmatrix} = -\vec{w}_1 + 6\vec{w}_2 - \vec{w}_3,
  \end{aligned}$$ as required.
:::

## Algorithm 4: Find a linear combination of vectors equal a given vector

::: {.algorithm}
[\[algorithm-linear-combo\]]{#algorithm-linear-combo
label="algorithm-linear-combo"} If
$$\mathscr{A} = \left\{\vec{v}_1=\begin{pmatrix} v_{1,1} \\ v_{2, 1} \\ \vdots
      \\v_{n, 1} \end{pmatrix}, \ldots,
      \vec{v}_m=\begin{pmatrix} v_{1,m} \\ v_{2, m} \\ \vdots \\v_{n, m}
    \end{pmatrix} \right\}
    \subseteq F ^ n$$ and
$$\vec{u} = \begin{pmatrix} u_1 \\ u_2 \\ \vdots \\ u_n \end{pmatrix} \in \operatorname{Span}(\mathscr{A}),$$
then find a linear combination of the vectors in $\mathscr{A}$ that
equals $u$.

1.  Make an $n\times (m + 1)$ matrix $A$ whose first $m$ columns are the
    vectors in $\mathscr{A}$ and whose last column is $-\vec{u}$ or an
    $(m + 1)\times
                n$ matrix whose first $m$ rows are the vectors in
    $\mathscr{A}$ and whose last row is $-\vec{u}$ (transposed). In
    other words, either $$A =
                \begin{pmatrix}
                  v_{1, 1} & v_{1, 2} & \cdots & v_{1, m} & -u_1   \\
                  v_{2, 1} & v_{2, 2} & \cdots & v_{2, m} & -u_2   \\
                  \vdots   & \vdots   & \ddots & \vdots   & \vdots \\
                  v_{n, 1} & v_{n, 2} & \cdots & v_{n, m} & -u_n
                \end{pmatrix}
                \quad\text{or}\quad
                A =
                \begin{pmatrix}
                  v_{1, 1} & v_{2, 1} & \cdots & v_{n, 1} \\
                  v_{1, 2} & v_{2, 2} & \cdots & v_{n, 2} \\
                  \vdots   & \vdots   & \ddots & \vdots   \\
                  v_{1, m} & v_{2, m} & \cdots & v_{n, m} \\
                  -u_1     & -u_2     & \cdots & -u_n
                \end{pmatrix}.$$

2.  If in step (1) you entered $\mathscr{A}$ as rows, then perform
    elementary column operations to obtain the matrix $E$ in column
    echelon form. If in step (1) you entered $\mathscr{A}$ as columns,
    then perform elementary row operations to obtain the matrix $E$ in
    row echelon form.

3.  Suppose that we entered $\mathscr{A}$ as the columns of $A$ and that
    $$\vec{\alpha} = \begin{pmatrix} \alpha_1 \\ \alpha_2 \\ \vdots \\\alpha_{m + 1} \end{pmatrix}
                \in F ^ {m + 1}$$ is such that
    $$E\vec{\alpha} = \vec{0}.$$ This gives a homogeneous system of
    linear equations in the variables $\alpha_{i}$, which can be solved
    for the variables $\alpha_1, \ldots, \alpha_{m + 1}$. In particular,
    you have found a specific vector $\vec{\alpha}$ such that
    $E\vec{\alpha} = \vec{0}$.

    If you entered $\mathscr{A}$ as the columns of $A$, then the process
    is similar.

4.  By
    [Theorem 3.2.7]({{< ref "03-algorithms-to-live-by#thm-row-ops-preserve-null-space" >}}), since $A$ and $E$ are
    row-equivalent, $A \vec{\alpha} = \vec{0}$ also. In particular,
    $$\alpha_1\vec{v}_1 + \alpha_2\vec{v}_2 + \cdots + \alpha_m\vec{v}_m -
                \alpha_{m + 1} \vec{u} = \vec{0},$$ and so rearranging,
    we obtain, $$\vec{u} = \frac{\alpha_1}{\alpha_{m + 1}}\vec{v}_1 +
                \frac{\alpha_2}{\alpha_{m + 1}}\vec{v}_2 + \cdots +
                \frac{\alpha_m}{\alpha_{m + 1}}\vec{v}_m.$$
:::

That
[\[algorithm-dim-of-subspace\]](#algorithm-dim-of-subspace){reference-type="ref"
reference="algorithm-dim-of-subspace"} is valid, was shown in the
statement of the algorithm.

::: {.exampjupyter}
Suppose that $$\vec{v}_1 = 
    \begin{pmatrix} 
      -2 \\
      0 \\
      3 \\
      0 \\
    \end{pmatrix},\
    \vec{v}_2 = 
    \begin{pmatrix} 
      -1 \\
      1 \\
      -3 \\
      0 \\
    \end{pmatrix},\
    \vec{v}_3 = 
    \begin{pmatrix} 
      1 \\
      0 \\
      -1 \\
      3 \\
    \end{pmatrix},\
    \vec{v}_4 = 
    \begin{pmatrix} 
      1 \\
      0 \\
      -1 \\
      0 \\
    \end{pmatrix} \in \mathbb{R} ^ 4.$$ Write
$$\vec{u} = \begin{pmatrix} 0 \\
 0 \\
 -1 \\
 2 \\
 \end{pmatrix} \in \mathbb{R} ^ 4$$ as a linear combination of
$\vec{v}_1$, $\vec{v}_2$, $\vec{v}_3$, and $\vec{v}_4$.
:::

::: {.solution}
We write $\vec{v}_1$, $\vec{v}_2$, $\vec{v}_3$, $\vec{v}_4$, and
$\vec{u}$ as the columns in a matrix $A$ and perform elementary row
operations to obtain a matrix $E$ that is in row-echelon form and is
row-equivalent to $A$: $$\begin{array}{rcll}
      A =
      \begin{pmatrix}
        -2 & -1 & 1  & 1  & 0  \\
        0  & 1  & 0  & 0  & 0  \\
        3  & -3 & -1 & -1 & 1  \\
        0  & 0  & 3  & 0  & -2
      \end{pmatrix}
       & \longrightarrow &
      \begin{pmatrix}
        -6 & -3 & 3  & 3  & 0  \\
        0  & 1  & 0  & 0  & 0  \\
        6  & -6 & -2 & -2 & 2  \\
        0  & 0  & 3  & 0  & -2
      \end{pmatrix}
       &
      \begin{array}{l}
        r_1 \longrightarrow 3r_1 \\
        r_3 \longrightarrow 2r_3
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        -6 & -3 & 3 & 3 & 0  \\
        0  & 1  & 0 & 0 & 0  \\
        0  & -9 & 1 & 1 & 2  \\
        0  & 0  & 3 & 0 & -2
      \end{pmatrix}
       &
      \begin{array}{l}
        r_3 \longrightarrow r_1 + r_3
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        -6 & -3 & 3 & 3 & 0  \\
        0  & 1  & 0 & 0 & 0  \\
        0  & 0  & 1 & 1 & 2  \\
        0  & 0  & 3 & 0 & -2
      \end{pmatrix}
       &
      \begin{array}{l}
        r_3 \longrightarrow 9r_2 + r_3
      \end{array}
      \\
       & \longrightarrow &
      \begin{pmatrix}
        -6 & -3 & 3 & 3  & 0  \\
        0  & 1  & 0 & 0  & 0  \\
        0  & 0  & 1 & 1  & 2  \\
        0  & 0  & 0 & -3 & -8
      \end{pmatrix}
      =
      E
       &
      \begin{array}{l}
        r_4 \longrightarrow -3r_3 + r_4
      \end{array}
      \\
    \end{array}$$ So, if $$\vec{\alpha} =
    \begin{pmatrix}
      \alpha_1 \\
      \alpha_2 \\
      \alpha_3 \\
      \alpha_4 \\
      \alpha_5
    \end{pmatrix}
    \in \mathbb{R} ^ 5$$ is such that $E\vec{\alpha} = \vec{0}$, then
$$\begin{array}{rcrcrcrcrcl}
      -6\alpha_1 & - & 3\alpha_2 & + & 3\alpha_3 & + & 3\alpha_4 &   &
                 & = & 0                                               \\
                 &   & \alpha_2  &   &           &   &           &   &
                 & = & 0                                               \\
                 &   &           &   & \alpha_3  & + & \alpha_4  & + &
      2\alpha_5  & = & 0                                               \\
                 &   &           &   &           & - & 3\alpha_4 & - &
      8\alpha_5  & = & 0.                                              \\
    \end{array}$$ Hence $$\alpha_2 = 0,
    \quad \alpha_4 = \frac{-8}{3}\alpha_5,
    \quad \text{and}
    \quad \alpha_3 = \frac{2}{3}\alpha_5.$$ If we choose $\alpha_5 = 3$,
then $\alpha_2 = 0$, $\alpha_3 = 2$, $\alpha_4 = -8$, and so
$\alpha_1 = -3$. So, one possibility for $\vec{\alpha}$ is
$$\vec{\alpha} =
    \begin{pmatrix}
      -3 \\
      0  \\
      2  \\
      -8 \\
      3
    \end{pmatrix}.$$ \[Aside: at this point it would be prudent to
double-check that $E\vec{v}
    = \vec{0}$ and $A\vec{v} = \vec{0}$, I did this, I suggest you do
too!\] Hence
$$\alpha_1\vec{v}_1 + \alpha_2\vec{v}_2 + \alpha_3\vec{v}_3 + \alpha_4\vec{v}_4
    - \alpha_5\vec{u} = \vec{0}$$ and so
$$\vec{u} =    \frac{\alpha_1}{\alpha_5}\vec{v}_1
    + \frac{\alpha_2}{\alpha_5}\vec{v}_2
    + \frac{\alpha_3}{\alpha_5}\vec{v}_3
    + \frac{\alpha_4}{\alpha_5}\vec{v}_4
    = -\vec{v}_1 + \frac{2}{3}\vec{v}_3 - \frac{8}{3}\vec{v}_4.$$
:::

## Rows versus columns, the ultimate guide {#section-ultimate-guide}

You might have noticed by this point that we have been denoting vectors
by columns rather than rows. For example, we write,
$$\begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix}$$ rather than
$$(3\ 1\ 0\ 0).$$ We prefer column vectors to row vectors in this course
for reasons related to linear transformations; we will discuss this in
more detail in the next chapter.

Recall that from the start of this chapter that we said that there are 4
problems that you might be asked to solve that can be solved using
Gaussian elimination:

1.  Show that a collection $\mathscr{A}$ of vectors in a vector space
    $V$ is linearly independent or linearly dependent;

2.  Find the dimension of a subspace $W$ spanned by some collection
    $\mathscr{A}$ of vectors;

3.  Find a basis for a subspace $W$ spanned by some collection
    $\mathscr{A}$ of vectors;

4.  Find a linear combination of vectors equal to some vector;
