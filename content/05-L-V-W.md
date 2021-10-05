# The vector space of linear transformations {#chapter-vector-space-linear-transf}
{{< chapter 4 >}}

## $\mathcal{L}(V, W)$

The theme of this part of the course is how to construct new vector
spaces from existing ones.

::: {.thm}
[]{#thm-hom-v-w label="thm-hom-v-w"} Let $V$ and $W$ be a
vector spaces over a field $F$ and let $\mathcal{L}(V,
    W)$ denote the set of all linear transformations from $V$ to $W$.
Then $\mathcal{L}(V, W)$ is a vector space with addition and scalar
multiplication are defined by
$$(S + T)(v) = S(v) + T(v) \qquad\text{and}\qquad (\alpha T)(v) = \alpha
    T(v)$$ for all $v\in V$, and where $S, T\in \mathcal{L}(V, W)$ and
$\alpha \in F$.
:::

::: {.proof}
*Proof.* See
Problem [4]({{< ref "04-linear-transf#problem-04-04" >}}) in
[Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}). ◻
:::

Given that $\mathcal{L}(V, W)$ is a vector space we can ask all of the
usual questions about $\mathcal{L}(V, W)$ that we might about any vector
space: what is $\dim \mathcal{L}(V, W)$? What is a basis for
$\mathcal{L}(V, W)$?

::: {.thm}
[]{#thm-basis-for-hom label="thm-basis-for-hom"}
Let $V$ and $W$ be finite-dimensional vector spaces over the field $F$
and let $\mathscr{B} = \{ v_{1},v_{2},\dots,v_{n} \}$ and
$\mathscr{C} = \{
    w_{1},w_{2},\dots,w_{m} \}$ be bases for $V$ and $W$, respectively.
Define linear transformations $T_{k \ell} : V \to W$ by:
$$T_{k \ell}(v_{\ell}) = w_{k}
    \quad
    \text{and}
    \quad
    T_{k \ell}(v_j) = \vec{0}
    \quad
    \text{for all}
    \quad
    j\not=\ell.$$ Then
$\mathscr{E} = \{T_{k \ell} : 1 \leq \ell \leq n, \; 1 \leq k \leq m\}$
is a basis for $\mathcal{L}(V, W)$, and so
$\dim \mathcal{L}(V, W) = \dim V \dim W$.
:::

::: {.proof}
*Proof.* In
Problem [7]({{< ref "04-linear-transf#problem-04-07" >}})(a) in
[Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), we showed that every linear
transformation $T : V \to W$ can be expressed as
$$T = \sum_{\substack{1 \leq \ell \leq n\\1 \leq k \leq
        m}} \alpha_{k\ell} T_{k\ell}$$ for some
scalars $\alpha_{k\ell} \in F$. It follows that
$\operatorname{Span}(\mathscr{E}) = \mathcal{L}(V, W)$.

In Problem [7]({{< ref "04-linear-transf#problem-04-07" >}})(b) in
[Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), we showed that $\mathscr{E}$ is
linearly independent, and hence
$$\dim \mathcal{L}(V,W) = |\mathscr{E}| = \dim V \cdot \dim W.\square$$ ◻
:::

::: {.examp}
[]{#ex-L-F-V label="ex-L-F-V"} Show that
$\mathcal{L}(\mathbb{R}, \mathbb{R} ^ 3)$ is isomorphic to
$\mathbb{R} ^ 3$.
:::

::: {.solution}
It follows from
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) that $\dim \mathcal{L}(\mathbb{R},
  \mathbb{R} ^ 3) = \dim \mathbb{R}\ \dim \mathbb{R} ^ 3 = 1 \cdot 3 = 3 = \dim
  \mathbb{R} ^ 3$. Since both $\mathcal{L}(\mathbb{R}, \mathbb{R} ^ 3)$
and $\mathbb{R} ^ 3$ are vector spaces over $\mathbb{R}$, it follows by
[Corollary 4.4.4]({{< ref "04-linear-transf#thm-isomorphism" >}}) that
$\mathcal{L}(\mathbb{R}, \mathbb{R} ^ 3)$ is isomorphic to
$\mathbb{R} ^ 3$.

Note that, since isomorphic vector spaces are the "same", by
[Corollary 4.4.4]({{< ref "04-linear-transf#thm-isomorphism" >}}), we could think of the elements of
$\mathcal{L}(\mathbb{R}, \mathbb{R} ^ 3)$ as being $3 \times 1$ matrices
with entries in $\mathbb{R}$, or in other words, column vectors with
entries in $\mathbb{R}$!
:::

Let $F$ be a field and let $M_{m, n}(F)$ denote the set of all
$m \times n$ matrices with entries in $F$. Then $M_{m, n}(F)$ is a
vector space with addition (the usual addition of matrices) defined by:
$$\begin{pmatrix}
      \alpha_{11} & \alpha_{12} & \cdots & \alpha_{1n} \\
      \alpha_{21} & \alpha_{22} & \cdots & \alpha_{2n} \\
      \vdots      & \vdots      & \ddots & \vdots        \\
      \alpha_{m1} & \alpha_{m2} & \cdots & \alpha_{mn}
    \end{pmatrix}
    \begin{pmatrix}
      \beta_{11} & \beta_{12} & \cdots & \beta_{1n} \\
      \beta_{21} & \beta_{22} & \cdots & \beta_{2n} \\
      \vdots     & \vdots     & \ddots & \vdots     \\
      \beta_{m1} & \beta_{m2} & \cdots & \beta_{mn}
    \end{pmatrix}
    =
    \begin{pmatrix}
      \alpha_{11} + \beta_{11} & \alpha_{12} + \beta_{12} & \cdots & \alpha_{1n}
      + \beta_{1n}                                                                 \\
      \alpha_{21} + \beta_{21} & \alpha_{22} + \beta_{22} & \cdots & \alpha_{2n}
      + \beta_{2n}                                                                 \\
      \vdots                   & \vdots                   & \ddots & \vdots        \\
      \alpha_{m1} + \beta_{m1} & \alpha_{m2} + \beta_{m2} & \cdots & \alpha_{mn} +
      \beta_{mn}
    \end{pmatrix}$$ and scalar multiplication $$\gamma 
    \begin{pmatrix}
      \alpha_{11} & \alpha_{12} & \cdots & \alpha_{1n} \\
      \alpha_{21} & \alpha_{22} & \cdots & \alpha_{2n} \\
      \vdots      & \vdots      & \ddots & \vdots        \\
      \alpha_{m1} & \alpha_{m2} & \cdots & \alpha_{mn}
    \end{pmatrix}
    = 
    \begin{pmatrix}
      \gamma\alpha_{11} & \gamma\alpha_{12} & \cdots & \gamma\alpha_{1n} \\
      \gamma\alpha_{21} & \gamma\alpha_{22} & \cdots & \gamma\alpha_{2n} \\
      \vdots            & \vdots            & \ddots & \vdots        \\
      \gamma\alpha_{m1} & \gamma\alpha_{m2} & \cdots & \gamma\alpha_{mn}
    \end{pmatrix}.$$ for $\gamma \in F$ and
$[\alpha_{ij}], [\beta_{ij}] \in M_{m, n}(F)$. This follows by a similar
argument to that given in the solution of
Problem [1]({{< ref "02-vector-spaces#problem-02-01" >}}) in
[Section 2.6]({{< ref "05-L-V-W#problems-02-vector-spaces" >}}).

::: {.examp}
[]{#example-matrix-basis label="example-matrix-basis"} Show that $$\mathscr{F} = \left\{
    \begin{array}{rrclrclrcl}
      B_{11} & = &
      \begin{pmatrix}
        1 & 0 & 0 \\
        0 & 0 & 0
      \end{pmatrix},
      B_{12} & = &
      \begin{pmatrix}
        0 & 1 & 0 \\
        0 & 0 & 0
      \end{pmatrix},
      B_{13} & = &
      \begin{pmatrix}
        0 & 0 & 1 \\
        0 & 0 & 0
      \end{pmatrix}, \\
      \\
      B_{21} & = &
      \begin{pmatrix}
        0 & 0 & 0 \\
        1 & 0 & 0
      \end{pmatrix},
      B_{22} & = &
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 1 & 0 \\
      \end{pmatrix},
      B_{23} & = &
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 0 & 1 \\
      \end{pmatrix}
    \end{array}
    \right\}$$ is a basis for $M_{3, 2}(\mathbb{R})$.
:::

::: {.solution}
It suffices to show that $\mathscr{F}$ is a spanning set for $M_{3,
  2}(\mathbb{R})$ and that $\mathscr{F}$ is linearly independent.

If $A = [\alpha_{ij}] \in M_{3, 2}(\mathbb{R})$ is any matrix, then
$$\begin{aligned}
    A & = & \begin{pmatrix}
      \alpha_{11} & \alpha_{12} & \alpha_{13} \\
      \alpha_{21} & \alpha_{22} & \alpha_{23} 
    \end{pmatrix}\\
     & = & 
     \alpha_{11}
      \begin{pmatrix}
        1 & 0 & 0 \\
        0 & 0 & 0
      \end{pmatrix}
      + 
     \alpha_{12}
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 1 & 0 \\
      \end{pmatrix}
      + 
     \alpha_{13}
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 0 & 1 \\
      \end{pmatrix}
      \\
    && 
    + \alpha_{21}
      \begin{pmatrix}
        0 & 0 & 0 \\
        1 & 0 & 0 \\
      \end{pmatrix}
      + 
     \alpha_{22}
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 1 & 0 
      \end{pmatrix}
      + 
     \alpha_{23}
      \begin{pmatrix}
        0 & 0 & 1 \\
        0 & 0 & 0
      \end{pmatrix}\\
    & = & 
    \alpha_{11}B_{11}
      + 
      \alpha_{12}B_{12}
      + 
     \alpha_{13}
     B_{13}
     + \alpha_{21}B_{21}
      + 
      \alpha_{22}B_{22}
     +
     \alpha_{23}B_{23}\in \operatorname{Span}(\mathscr{F}).
    \end{aligned}$$

To show that $\mathscr{F}$ is linearly independent, suppose that
$$\beta_{11} B_{11} + \beta_{12} B_{12} + \beta_{13} B_{13}
    +
    \beta_{21} B_{21} + \beta_{22} B_{22} + \beta_{23} B_{23} =
    \begin{pmatrix}
      0 & 0 & 0 \\
      0 & 0 & 0
    \end{pmatrix}.$$ Then, evaluating the left-hand side, we obtain that
$$\begin{pmatrix}
      \beta_{11} & \beta_{12} & \beta_{13} \\
      \beta_{21} & \beta_{22} & \beta_{23}
    \end{pmatrix} =
    \begin{pmatrix}
      0 & 0 & 0 \\
      0 & 0 & 0
    \end{pmatrix}$$ and so
$\beta_{11} = \beta_{12} = \beta_{13} = \beta_{21} = \beta_{22} =
    \beta_{23} = 0$. Therefore $\mathscr{F}$ is linear independent, and
hence a basis for $M_{3, 2}(\mathbb{R})$.
:::

::: {.thm}
[]{#thm-basis-for-matrix label="thm-basis-for-matrix"} Let $m, n\in \mathbb{N}$ be arbitrary. For
every $k\in \{1, \ldots, m\}$ and every $\ell \in \{1, \ldots, n\}$, we
define $B_{k \ell} \in M_{m, n}(F)$ so that the only non-zero entry in
$B_{k\ell}$ is the value $1$ in the $k$-th row and $\ell$-th column.
Then
$\mathscr{F} = \{B_{k \ell} : 1 \leq \ell \leq n, \; 1 \leq k \leq m\}$
is a basis for $M_{m, n}(F)$, and so $\dim M_{m, n}(F) = m n$.
:::

::: {.proof}
*Proof.* It is routine to show that $\mathscr{F}$ spans $M_{m, n}(F)$
and that it is linearly independent. Hence $\mathscr{F}$ is a basis for
$M_{m, n}(F)$, as required. ◻
:::

Combining
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) and
[Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}), we obtain the following corollary.

::: {.cor}
If $V$ and $W$ are vector spaces over the field $F$ with dimensions $m$
and $n$, respectively, then $\L(V, W)$ is isomorphic to $M_{m, n}(F)$.
:::

::: {.proof}
*Proof.* It follows directly from
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) and
[Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}) that
$\dim \L(V, W) = \dim M_{m, n}(F)$. Hence, by
[Corollary 4.4.4]({{< ref "04-linear-transf#thm-isomorphism" >}}), $\L(V, W)$ and $M_{m, n}(F)$ are
isomorphic vector spaces. ◻
:::

::: {.thm}
[]{#thm-linear-transf-equal-matrices label="thm-linear-transf-equal-matrices"} Let $V$ and $W$ be vector
spaces of dimensions $n$ and $m$ over a field $F$ and let $\mathscr{B}$
and $\mathscr{C}$ be bases for $V$ and $W$, respectively. Then
$\Psi: \mathcal{L}(V, W) \to M_{m, n}(F)$ defined by
$$\Psi(T) = \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)\quad \text{for
    all}\quad T \in \mathcal{L}(V, W)$$ is an isomorphism of vector
spaces.
:::

::: {.proof}
*Proof.* By
[Theorem 4.4.3]({{< ref "04-linear-transf#thm-bijection-basis" >}}), it suffices to show that $\Psi$ maps a
basis of $\mathcal{L}(V, W)$ bijectively to a basis of $M_{m, n}(F)$.
The set $\mathscr{E}= \{T_{kl} : 1\leq l \leq n,\ 1\leq k \leq m\}$
given in
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) is a basis for $\mathcal{L}(V, W)$.
Similarly, the set
$\mathscr{F} =  \{B_{k \ell} : 1 \leq \ell \leq n, \; 1
  \leq k \leq m\}$ is a basis for $M_{m, n}(F)$ by
[Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}). A routine computation shows that
$$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T_{kl}) 
    = B_{kl}$$ for all $k$ and $l$. ◻
:::

::: {.examp}
Suppose that $T : \mathbb{R} ^ 3 \to \mathbb{R} ^ 2$ is defined by
$$T \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} = \begin{pmatrix} 2x \\ x + y \end{pmatrix}.$$
Write $T$ as an explicit linear combination of the basis vectors
$T_{kl}$ defined in
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}).
:::

::: {.solution}
Let $\mathscr{B} = \{\vec{e}_1, \vec{e}_2, \vec{e}_3\}$ be the standard
basis for $\mathbb{R} ^ 3$, and let
$\mathscr{C} = \{\vec{f}_1, \vec{f}_2\}$ be the standard basis for
$\mathbb{R} ^ 2$. Then
$$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T) =
    \begin{pmatrix}
      2 & 0 & 0 \\
      1 & 1 & 0
    \end{pmatrix}.$$ Since $\mathscr{F}$ from
[Example 5.1.4]({{< ref "05-L-V-W#example-matrix-basis" >}}) is a basis for $M_{3, 2}(F)$, it
follows that we may write
$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$ as a unique linear
combination of the vectors in $\mathscr{B}$:
$$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T) =
    \begin{pmatrix}
      2 & 0 & 0 \\
      1 & 1 & 0
    \end{pmatrix}
    = 2B_{11} + B_{21} + B_{22}.$$ By the proof of
[Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}), the linear transformation
$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}: \mathcal{L}(V,
  W) \to M_{m, n}(F)$ is an isomorphism and
$\operatorname{Mat}_{\mathscr{B},
  \mathscr{C}}(T_{kl}) = B_{kl}$. Hence $T = 2T_{11} + T_{21} + T_{22}$.
:::

## Problems {#problems-05-L-V-W}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=801479>

1.  []{#problem-05-01 label="problem-05-01"}

    ::: {.question}
    Let $V$ and $W$ be finite-dimensional vector spaces over the same
    field $F$ such that $\dim V = \dim W$ and let $T: V \to W$ be a
    linear transformation. Prove that the following are equivalent:

    1.  $T$ is invertible;

    2.  $T$ is injective;

    3.  $T$ is surjective.
    :::

2.  []{#problem-05-02 label="problem-05-02"}

    ::: {.question}
    Let $\mathbb{R}[x]$ denote the vector space of polynomials with
    coefficients in $\mathbb{R}$, and let $\mathbb{R}_n[x]$ denote those
    polynomials in $\mathbb{R}[x]$ with degree at most $n$. If $q \in
          \mathbb{R}[x]$ is any polynomial, then we denote the
    derivative of $q$ by $q'$.

    1.  Show that $T: \mathbb{R}_m[x] \to \mathbb{R}_m[x]$ defined by
        $$T(p) = ((x ^ 2 + 3x + 4)p)''$$ is a linear transformation.

    2.  Show that $T$ is injective. \[**Hint:** Show that
        $\ker T = \{\vec{0}\}$.\]

    3.  If $q\in \mathbb{R}[x]$ show that there exists
        $p\in \mathbb{R}[x]$ such that $q = ((x ^ 2 + 3x + 4)p)''$.
    :::

3.  []{#problem-05-03 label="problem-05-03"}

    ::: {.question}
    Let $V$ and $W$ be finite-dimensional vector spaces over a field
    $F$, and let $v\in V$ be any fixed vector. We define
    $$U = \{T\in \mathcal{L}(V, W): T(v) = \vec{0}_W\}.$$

    1.  Show that $U$ is a subspace of $\mathcal{L}(V, W)$.

    2.  If $v\not=\vec{0}$, then what is $\dim U$?
    :::

4.  []{#problem-05-04 label="problem-05-04"}

    ::: {.question}
    Let $V$ be a finite-dimensional vector space over a field $F$ and
    let $T\in
          \mathcal{L}(V, V)$. Prove that there exists $\lambda\in F$
    such that $T(v) =
          \lambda v$ for all $v\in V$ if and only if $ST = TS$ for all
    $S\in
          \mathcal{L}(V, V)$.
    :::

5.  []{#problem-05-05 label="problem-05-05"}

    ::: {.question}
    Let $V$ be a finite-dimensional vector space and let $W$ be a
    subspace of $\mathcal{L}(V, V)$ such that $ST, TS\in W$ for every
    $S\in
          \mathcal{L}(V, V)$ and for every $T\in W$.

    1.  Suppose that there exists $T\in W$ such that
        $\operatorname{rank} T
                \not=0$. Prove that there exists $T'\in W$ such that
        $\operatorname{rank} T' = 1$.

    2.  Prove that if there exists $T\in W$ such that
        $\operatorname{rank} T =
                1$, then $W$ contains the basis for $\mathcal{L}(V, V)$
        given in
        [Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}). Deduce that if there exists
        $T\in W$ such that $\operatorname{rank} T = 1$, then $W = V$.

    3.  Deduce that $W = \{\vec{0}_{\mathcal{L}(V, V)}\}$ or $W =
                 \mathcal{L}(V, V)$ where
        $\vec{0}_{\mathcal{L}(V, V)}: V\to V$ is the zero of
        $\mathcal{L}(V, V)$ that maps every $v\in V$ to $\vec{0}_{V}$.
    :::

6.  []{#problem-05-06 label="problem-05-06"}

    ::: {.question}
    Let $V$ be a vector space over a field $F$, and let
    $\mathscr{B} = \{v_1,
          v_2, \ldots, v_n\}$ be a basis for $V$.

    1.  Suppose that, for every $i$, $T_i : F \to V$ is the unique
        linear transformation such that $T_i(1) = v_i$. Show that
        $\mathscr{A} = \{T_1, T_2, \ldots, T_n\}$ is a basis for
        $\mathcal{L}(F, V)$.

    2.  Define $\iota: V \to \mathcal{L}(F, V)$ to be the unique linear
        transformation such that $\iota(v_i) = T_i$. Show that $\iota$
        is an isomorphism.

    3.  If $\mathscr{B}$ is any basis for $V$, then prove that
        $\mathrm{Mat}_{\mathscr{B}}: V \to F ^ n$ is an isomorphism
        using
        [Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}) and the
        isomorphism $\iota$.
    :::

7.  []{#problem-05-07 label="problem-05-07"}

    ::: {.question}
    Let $V$ be a vector space with a unique basis $\mathscr{B}$. Show
    that either $V$ is isomorphic to $\mathbb{Z}/2\mathbb{Z} = \{0, 1\}$
    or the trivial vector space $\{\vec{0}\}$.
    :::

8.  []{#problem-05-08 label="problem-05-08"}

    ::: {.question}
    Let $V$ and $W$ be finite dimensional vector spaces over a field $F$
    and let $\mathscr{B} = \{v_1, v_2, \ldots, v_n\}$ and
    $\mathscr{C} = \{w_1,
        w_2, \ldots, w_n\}$ be bases for $V$ and $W$, respectively.
    Suppose that $T
        : V \to W$ is a linear transformation such that
    $T(\mathscr{B}) =
        \mathscr{C}$.

    1.  Show that $T$ is invertible.

    2.  Suppose that $T ^ {-1}: W \to V$ is the inverse of $T$. Show
        that $\operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T ^ {-1})$
        is the inverse of the matrix $\operatorname{Mat}_{\mathscr{B},
                \mathscr{C}}(T)$ (where "inverse" means the usual
        inverse of a matrix).
    :::
