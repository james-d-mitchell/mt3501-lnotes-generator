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
Define linear transformations $T_{k \ell} : V \longrightarrow W$ by:
$$T_{k \ell}(v_{\ell}) = w_{k}
    \quad
    \text{and}
    \quad
    T_{k \ell}(v_j) = \vec{0}
    \quad
    \text{for all}
    \quad
    j\not=\ell.$$ Then
$\mathscr{E} = \{T_{k \ell} : 1 \leqslant\ell \leqslant n, \; 1 \leqslant k \leqslant m\}$
is a basis for $\mathcal{L}(V, W)$, and so
$\dim \mathcal{L}(V, W) = \dim V \dim W$.
:::

::: {.proof}
*Proof.* In
Problem [7]({{< ref "04-linear-transf#problem-04-07" >}})(a) in
[Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), we showed that every linear
transformation $T : V \longrightarrow W$ can be expressed as
$$T = \sum_{\substack{1 \leqslant\ell \leqslant n\\1 \leqslant k \leqslant
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
$\mathscr{F} = \{B_{k \ell} : 1 \leqslant\ell \leqslant n, \; 1 \leqslant k \leqslant m\}$
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
and $n$, respectively, then $\mathcal{L}(V, W)$ is isomorphic to
$M_{m, n}(F)$.
:::

::: {.proof}
*Proof.* It follows directly from
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) and
[Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}) that
$\dim \mathcal{L}(V, W) = \dim M_{m, n}(F)$. Hence, by
[Corollary 4.4.4]({{< ref "04-linear-transf#thm-isomorphism" >}}), $\mathcal{L}(V, W)$ and $M_{m, n}(F)$ are
isomorphic vector spaces. ◻
:::

::: {.thm}
[]{#thm-linear-transf-equal-matrices label="thm-linear-transf-equal-matrices"} Let $V$ and $W$ be vector
spaces of dimensions $n$ and $m$ over a field $F$ and let $\mathscr{B}$
and $\mathscr{C}$ be bases for $V$ and $W$, respectively. Then
$\Psi: \mathcal{L}(V, W) \longrightarrow M_{m, n}(F)$ defined by
$$\Psi(T) = \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)\quad \text{for
    all}\quad T \in \mathcal{L}(V, W)$$ is an isomorphism of vector
spaces.
:::

::: {.proof}
*Proof.* By
[Theorem 4.4.3]({{< ref "04-linear-transf#thm-bijection-basis" >}}), it suffices to show that $\Psi$ maps a
basis of $\mathcal{L}(V, W)$ bijectively to a basis of $M_{m, n}(F)$.
The set
$\mathscr{E}= \{T_{kl} : 1\leqslant l \leqslant n,\ 1\leqslant k \leqslant m\}$
given in
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) is a basis for $\mathcal{L}(V, W)$.
Similarly, the set
$\mathscr{F} =  \{B_{k \ell} : 1 \leqslant\ell \leqslant n, \; 1
  \leqslant k \leqslant m\}$ is a basis for $M_{m, n}(F)$ by
[Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}). A routine computation shows that
$$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T_{kl}) 
    = B_{kl}$$ for all $k$ and $l$. ◻
:::

::: {.examp}
Suppose that $T : \mathbb{R} ^ 3 \longrightarrow\mathbb{R} ^ 2$ is
defined by
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
  W) \longrightarrow M_{m, n}(F)$ is an isomorphism and
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
    field $F$ such that $\dim V = \dim W$ and let
    $T: V \longrightarrow W$ be a linear transformation. Prove that the
    following are equivalent:

    1.  $T$ is invertible;

    2.  $T$ is injective;

    3.  $T$ is surjective.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    By Problem [3]({{< ref "04-linear-transf#problem-04-03" >}})(b) in
    [Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), $T$ is invertible if and
    only if it is surjective and injective. This implies that (a)
    implies (b) and (c), and (b) and (c) imply (a). Hence it suffices to
    show that $T$ is injective if and only if it is surjective.

    ($\Rightarrow$) Suppose that $T: V \longrightarrow W$ is an
    injective linear transformation. It follows that
    $\ker T = \{\vec{0}\}$, and so $\dim \ker T = 0$. Hence, by the
    Rank-Nullity Theorem,
    $\dim \operatorname{im}T = \dim V - \dim \ker T = \dim V = \dim W$
    and so $\operatorname{im}T
       = W$, and so $T$ is surjective.

    ($\Leftarrow$) Suppose that $T: V \longrightarrow W$ is a surjective
    linear transformation. It follows that $\operatorname{im}T = W$, and
    so $\dim \operatorname{im}T = \dim W = \dim V$. Hence, by the
    Rank-Nullity Theorem,
    $\dim \ker T = \dim V - \dim \operatorname{im}T = 0$ and so $\ker T
       = \{\vec{0}\}$, and so $T$ is injective.
    :::

2.  []{#problem-05-02 label="problem-05-02"}

    ::: {.question}
    Let $\mathbb{R}[x]$ denote the vector space of polynomials with
    coefficients in $\mathbb{R}$, and let $\mathbb{R}_n[x]$ denote those
    polynomials in $\mathbb{R}[x]$ with degree at most $n$. If $q \in
          \mathbb{R}[x]$ is any polynomial, then we denote the
    derivative of $q$ by $q'$.

    1.  Show that $T: \mathbb{R}_m[x] \longrightarrow\mathbb{R}_m[x]$
        defined by $$T(p) = ((x ^ 2 + 3x + 4)p)''$$ is a linear
        transformation.

    2.  Show that $T$ is injective. \[**Hint:** Show that
        $\ker T = \{\vec{0}\}$.\]

    3.  If $q\in \mathbb{R}[x]$ show that there exists
        $p\in \mathbb{R}[x]$ such that $q = ((x ^ 2 + 3x + 4)p)''$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  If $p\in \mathbb{R}_m[x]$, then $p$ is a polynomial of degree at
        most $m$. Hence $(x ^ 2 + 3x + 4)p$ is a polynomial of degree at
        most $m + 2$ and so $((x ^ 2 + 3x + 4)p)''$ is a polynomial of
        degree at most $m$. Hence
        $((x ^ 2 + 3x + 4)p)'' \in \mathbb{R}_m[x]$.

        If $f, g \in \mathbb{R}_m[x]$, then $$\begin{aligned}
              T(f + g) & = & ((x ^ 2 + 3x + 4)(f + g))''                   \\
                       & = & ((x ^ 2 + 3x + 4)f + (x ^ 2 + 3x + 4)g)''     \\
                       & = & ((x ^ 2 + 3x + 4)f)'' + ((x ^ 2 + 3x + 4)g)'' \\
                       & = & T(f) + T(g) 
            \end{aligned}$$ and if $\alpha \in \mathbb{R}$, then
        $$T(\alpha f) = ((x ^ 2 + 3x + 4)(\alpha f))''
                           = \alpha ((x ^ 2 + 3x + 4)f)''
                           = \alpha T(f).\square$$

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  Suppose that $p\in \mathbb{R}_m[x]$ belongs to $\ker T$. Then
        $$T(p) = 0$$ and, by part (a), the degree of $T(p)$ equals that
        of $p$. It follows that the degree of $p$ is $-\infty$, and so
        $p = 0$, and so $\ker T = \{\vec{0}\}$. Thus $T$ is injective by
        Problem [3]({{< ref "04-linear-transf#problem-04-03" >}})(a) in
        [Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}).

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  If $q\in \mathbb{R}[x]$ is arbitrary, then there exists
        $m\in \mathbb{N}$ such that $q\in
            \mathbb{R}_m[x]$. Since $\dim \mathbb{R}_m[x] = m + 1$, it
        follows by
        Problem [1]({{< ref "05-L-V-W#problem-05-01" >}}), that the linear transformation
        $T: \mathbb{R}_m[x] \longrightarrow
            \mathbb{R}_m[x]$ from part (a) is surjective (since we
        showed it is injective in part (b)). Hence there exists
        $p\in \mathbb{R}_m[x]$ such that $T(p) = q$, and from the
        definition of $T$ $$T(p) = ((x ^ 2 + 3x + 4)p)'' = q.\square$$
    :::

3.  []{#problem-05-03 label="problem-05-03"}

    ::: {.question}
    Let $V$ and $W$ be finite-dimensional vector spaces over a field
    $F$, and let $v\in V$ be any fixed vector. We define
    $$U = \{T\in \mathcal{L}(V, W): T(v) = \vec{0}_W\}.$$

    1.  Show that $U$ is a subspace of $\mathcal{L}(V, W)$.

    2.  If $v\not=\vec{0}$, then what is $\dim U$?
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  Let $v\in V$ be fixed. We verify the Subspace Criteria from
        [Theorem 2.2.3]({{< ref "02-vector-spaces#thm-subspace-criteria" >}}).

        1.  If $T : V \longrightarrow W$ is defined by
            $T(u) = \vec{0}_W$ for all $u\in V$, then $T$ is a linear
            transformation and $T(v) = \vec{0}_W$. Hence $T\in U$ and so
            $U\not=\varnothing$.

        2.  if $S, T \in U$, then
            $$(S + T)(v) = S(v) + T(v) = 0_W + 0_W = 0_W$$ and so
            $S + T\in U$.

        3.  if $\alpha \in F$ and $T\in U$, then
            $\alpha T(v) = \alpha 0_W = 0_W$ and so $\alpha T\in U$.

        Hence $U$ is a subspace of $\mathcal{L}(V, W)$ for all $v\in V$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  It is possible to solve this problem using linear
        transformations alone, but it turns out to be more
        straightforward to use matrices instead. Recall that we denote
        the vector space consisting of $n\times m$ matrices over the
        field $F$ by $M_{n, m}(F)$. We showed in
        [Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}) that if $\dim V =
              m$ and $\dim W = n$, then
        $\Psi: \mathcal{L}(V, W) \longrightarrow M_{n, m}(F)$ defined by
        $\Psi(T) = \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$ is
        an isomorphism of vector spaces for every choice of bases
        $\mathscr{B}$ and $\mathscr{C}$ for $V$ and $W$, respectively.

        Since the vector $v$ given in the question is assumed to be not
        equal to $\vec{0}$, we can extend $\{v_1 = v\}$ to a basis
        $\mathscr{B}= \{v_1 = v, v_2, \ldots,
              v_n\}$ for $V$. If $\mathscr{C}$ is any basis for $W$,
        then, by the definition of the matrix of a linear
        transformation, the first column of
        $\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$ consists
        entirely of $0$.

        On the other hand, if $A\in M_{n, m}(F)$ is such that the first
        column of $A$ consists entirely of $0$, then since $\Psi$ is an
        isomorphism, there exists $T\in \mathcal{L}(V, W)$ such that
        $\Psi(T) = A = \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$.
        It follows that $T(v) = \vec{0}_W$ (again by the definition of
        $\operatorname{Mat}_{\mathscr{B},
              \mathscr{C}}(T)$), and so $T \in U$.

        The restriction of $\Psi$ to $U$ is an isomorphism between $U$
        and the set of all matrices in $M_{n, m}(F)$ such that the first
        column consists entirely of $0$. This latter space is isomorphic
        to $M_{n, m - 1}(F)$ (via the isomorphism that removes the first
        column), and so
        $\dim U = \dim M_{n, m - 1}(F) = (m -1)n = (\dim V - 1)\dim W$.
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

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    ($\Rightarrow$) Let $S\in \mathcal{L}(V, V)$ be arbitrary, and let
    $v\in V$. Then $$ST(v) =
         S(T(v)) = S(\lambda v) = \lambda S(v) = T(S(v)) = TS(v)$$ and
    so $ST =
         TS$.

    ($\Leftarrow$) Suppose that $T\in \mathcal{L}(V, V)$ is such that
    $ST = TS$ for all $S\in \mathcal{L}(V,
          V)$. We must show that $T(v) = \lambda v$ for all $v\in V$.

    Seeking a contradiction, suppose that there exists $v\in V$ such
    that for all $\lambda \in F$ the following holds:
    $T(v) \neq \lambda v$. Then $\{v, T(v)\}$ is a linearly independent
    set ($T(v)$ is not a scalar multiple of $v$), and so we may extend
    $\{v, T(v)\}$ to a basis $\mathscr{B}$ for $V$. If
    $S\in \mathcal{L}(V, V)$ is any linear transformation such that
    $S(T(v)) = v$ and $S(v) = v$, then $v = S(T(v)) = T(S(v)) = T(v)$,
    which is a contradiction. (Such a linear transformation $S$ exists
    because $v$ and $T(v)$ belong to the basis $\mathscr{B}$ for $V$ and
    by [Proposition 4.1.3]({{< ref "04-linear-transf#prop:mapconstruct" >}}).)

    It follows that for all $v\in V$ there exists $\lambda_v\in F$ such
    that $T(v) = \lambda_v v$. Suppose that $v, w\in V$. Then we must
    show that $\lambda_v = \lambda_w$. There are two cases to consider.

    First, if $v$ is not a scalar multiple of $w$, then since $T$ is
    linear,
    $$T(v + w) = \lambda_{v + w}(v + w) = \lambda_{v + w}v + \lambda_{v + w}w
            = \lambda_vv + \lambda_ww = T(v) = T(w).$$ Rearranging, we
    get
    $$(\lambda_{v + w} - \lambda_v)v = (\lambda_w - \lambda_{v + w})w.$$
    If $\lambda_{v + w} \neq \lambda_v$, then
    $\lambda_{v + w} - \lambda_v
          \neq 0$ and so
    $$v = \frac{(\lambda_w - \lambda_{v + w})}{(\lambda_{v + w} - \lambda_v)}w.$$
    This contradicts the assumption that $v$ is not a scalar multiple of
    $w$, and so $\lambda_{v + w}= \lambda_v$. A similar argument shows
    that $\lambda_w = \lambda_{v + w}$ and so $\lambda_v = \lambda_w$,
    as required.

    Second, if $w = \alpha v$ for some $\alpha \in F$, then
    $\lambda_{\alpha v}\alpha v = T(\alpha v) = \alpha T(v) = \alpha
          \lambda_v v$ and so
    $\lambda_w = \lambda_{\alpha v} = \lambda_{v}$, as required.
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
        $\vec{0}_{\mathcal{L}(V, V)}: V\longrightarrow V$ is the zero of
        $\mathcal{L}(V, V)$ that maps every $v\in V$ to $\vec{0}_{V}$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    Without loss of generality we may assume that $\mathcal{L}(V, V)$ is
    the vector space $M_{n, n}(F)$ of $n\times n$ matrices with entries
    in $F$ (since these two vector spaces are isomorphic). The
    assumption of the question becomes: $W$ is a subspace of
    $M_{n, n}(F)$ such that $AB, BA \in M_{n,
           n}(F)$ for all $B\in M_{n, n}(F)$ and all $A\in W$.

    1.  The assumption of part (a) becomes: there exists
        $A=[\alpha_{ij}]\in W$ such that $\operatorname{rank}A \not =0$.
        In particular, there exists a non-zero entry $\alpha_{ij}$ in
        $A$. We may assume without loss of generality that $\alpha_{11}$
        is non-zero. If $B = [\beta_{ij}]\in M_{n, n}(F)$ is such that
        $\beta_{11} =
               1$ and $\beta_{ij} = 0$ if $i\neq 0$ or $j\neq 0$, then
        $$AB = 
                  \begin{pmatrix}
                    \alpha_{11} & 0      & 0      & \cdots & 0 \\
                    \alpha_{21} & 0      & 0      & \cdots & 0 \\
                    \alpha_{31} & 0      & 0      & \cdots & 0 \\
                    \vdots      & \vdots & \vdots & \ddots & \vdots \\
                    \alpha_{n1} & 0      & 0      & \cdots & 0
                  \end{pmatrix}
                  \in 
                  W$$ and $\operatorname{rank}AB = 1$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  The assumption of part (b) becomes: if there exists $A\in W$
        such that $\operatorname{rank}A = 1$, then $W$ contains the
        basis for $M_{n, n}(F)$ from
        [Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}) and so $W = M_{n, n}(F)$. The
        basis from
        [Theorem 5.1.5]({{< ref "05-L-V-W#thm-basis-for-matrix" >}}) consists of the matrices
        $B_{kl}$ where the only non-zero entry is the value $1$ in the
        $k$-th row and $l$-th column.

        We showed in the solution to part (a) that the matrix: $$AB = 
                  \begin{pmatrix}
                    \alpha_{11} & 0      & 0      & \cdots & 0 \\
                    \alpha_{21} & 0      & 0      & \cdots & 0 \\
                    \alpha_{31} & 0      & 0      & \cdots & 0 \\
                    \vdots      & \vdots & \vdots & \ddots & \vdots \\
                    \alpha_{n1} & 0      & 0      & \cdots & 0
                  \end{pmatrix}$$ belongs to $W$. Hence
        $$\begin{pmatrix}
                    \alpha_{11} ^ {-1} & 0      & 0      & \cdots & 0 \\
                    0                  & 0      & 0      & \cdots & 0 \\
                    0                  & 0      & 0      & \cdots & 0 \\
                    \vdots             & \vdots & \vdots & \ddots & \vdots \\
                    0                  & 0      & 0      & \cdots & 0
                  \end{pmatrix}
                  \begin{pmatrix}
                    \alpha_{11} & 0      & 0      & \cdots & 0 \\
                    \alpha_{21} & 0      & 0      & \cdots & 0 \\
                    \alpha_{31} & 0      & 0      & \cdots & 0 \\
                    \vdots      & \vdots & \vdots & \ddots & \vdots \\
                    \alpha_{n1} & 0      & 0      & \cdots & 0
                  \end{pmatrix}
                  = 
                  \begin{pmatrix}
                    1      & 0      & 0      & \cdots & 0 \\
                    0      & 0      & 0      & \cdots & 0 \\
                    0      & 0      & 0      & \cdots & 0 \\
                    \vdots & \vdots & \vdots & \ddots & \vdots \\
                    0      & 0      & 0      & \cdots & 0
                  \end{pmatrix} = B_{11}.$$ Finally, if $k$ and $l$ are
        arbitrary, then it is routine to check that
        $B_{kl} = B_{k1} B_{11} B_{1l} \in W$.

        Since $W$ contains the basis for $V$, and is contained in $V$,
        it follows that $V = W$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  Either there exists $A \in W$ and $\operatorname{rank}A > 0$ or
        $\operatorname{rank}A = 0$ for all $A\in W$. In the former case,
        there exists $A'\in M_{n, n}(F)$ such that
        $\operatorname{rank}A' = 1$ (by part (a)), and so, by part (b),
        $W =V$.

        On the other hand, if $\operatorname{rank}A = 0$ for all
        $A\in W$, then $A$ is the zero matrix for all $A\in W$ (it's the
        only matrix of rank $0$). Hence $W$ consists solely of the zero
        matrix.
    :::

6.  []{#problem-05-06 label="problem-05-06"}

    ::: {.question}
    Let $V$ be a vector space over a field $F$, and let
    $\mathscr{B} = \{v_1,
          v_2, \ldots, v_n\}$ be a basis for $V$.

    1.  Suppose that, for every $i$, $T_i : F \longrightarrow V$ is the
        unique linear transformation such that $T_i(1) = v_i$. Show that
        $\mathscr{A} = \{T_1, T_2, \ldots, T_n\}$ is a basis for
        $\mathcal{L}(F, V)$.

    2.  Define $\iota: V \longrightarrow\mathcal{L}(F, V)$ to be the
        unique linear transformation such that $\iota(v_i) = T_i$. Show
        that $\iota$ is an isomorphism.

    3.  If $\mathscr{B}$ is any basis for $V$, then prove that
        $\mathrm{Mat}_{\mathscr{B}}: V \longrightarrow F ^ n$ is an
        isomorphism using
        [Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}) and the
        isomorphism $\iota$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  One perfectly good solution to this problem would be to observe
        that the set $\mathscr{A}$ in the question is the one given in
        Problem [7]({{< ref "04-linear-transf#problem-04-07" >}}) in
        [Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), in the special case of
        $\mathcal{L}(F, V)$. We showed in
        Problem [7]({{< ref "04-linear-transf#problem-04-07" >}}) in
        [Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), that this is a basis for
        $\mathcal{L}(F, V)$.

        We can also show directly that $\mathscr{A}$ is a basis for
        $\mathcal{L}(F, V)$. If $T
               \in \mathcal{L}(F, V)$ and $T(1) = v$ for some $v\in V$,
        then there exist $\alpha_1, \alpha_2, \ldots, \alpha_n\in F$ are
        such that $$v = \sum_{i = 1} ^ n \alpha_i v_i.$$ If
        $\beta \in F$ is arbitrary, then $$T(\beta) = \beta T(1) 
                        = \beta v
                        = \beta \sum_{i = 1} ^ n \alpha_i v_i 
                        = \sum_{i = 1} ^ n \alpha_i T_{i}(\beta).$$
        Hence
        $T = \sum_{i = 1} ^ n \alpha_i T_{i}\in \operatorname{Span}(\mathscr{A})$.

        It remains to show that $\mathscr{A}$ is linearly independent.
        Suppose that
        $\sum_{i = 1} ^ n \alpha_i T_{i} = \vec{0}_{\mathcal{L}(F, V)}$
        where $\vec{0}_{\mathcal{L}(F, V)}$ is the linear transformation
        mapping every $\beta \in F$ to $\vec{0}_V$. It follows that
        $$\sum_{i = 1} ^ n \alpha_i v_i
               = \sum_{i = 1} ^ n \alpha_i T_{i}(1)
               = \sum_{i = 1} ^ n \alpha_i T_{i}(1) 
               = \vec{0}_{\mathcal{L}(F, V)}(1) 
               = \vec{0}_V.$$ Since $\mathscr{B}$ is linearly
        independent, if follows that $\alpha_1 =
               \alpha_2 = \cdots = \alpha_n = 0$, and so $\mathscr{A}$
        is linearly independent.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  This is similar to
        [Example 5.1.3]({{< ref "05-L-V-W#ex-L-F-V" >}}). Note that $F$ is a vector space over
        itself and that as such $\{1\}$ is a basis for $F$, and $\dim
               F = 1$. It follows from
        [Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) that $\dim \mathcal{L}(F,
               V) = \dim F\ \dim V = \dim V$. Since both
        $\mathcal{L}(F, V)$ and $V$ are vector spaces over $F$, it
        follows by
        [Corollary 4.4.4]({{< ref "04-linear-transf#thm-isomorphism" >}}) that $\mathcal{L}(F,
               V)$ is isomorphic to $V$. We showed in the proof of
        [Corollary 4.4.4]({{< ref "04-linear-transf#thm-isomorphism" >}}) that any linear transformation
        mapping a basis of $F$ to a basis for $V$ is an isomorphism.
        Since $\iota$ maps the basis $\mathscr{B}$ for $V$ to the basis
        $\mathscr{A}$ for $\mathcal{L}(F, V)$, it follows that $\iota$
        is an isomorphism.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  If $v\in V$ is arbitrary, then there are
        $\alpha_1, \alpha_2, \ldots,
               \alpha_n\in F$ such that
        $$v = \sum_{i = 1} ^ n \alpha_i v_i$$ and so
        $$\operatorname{Mat}_{\mathscr{B}}(v) = \begin{pmatrix}\alpha_1\\\alpha_2\\\vdots\\\alpha_n\end{pmatrix}.$$
        Let $\iota: V \longrightarrow\mathcal{L}(F, V)$ be the unique
        linear transformation such that $\iota(v_i) = T_i$ where
        $T_i\in \mathscr{A}$ is given in part (b). Then $\iota:V
               \longrightarrow\mathcal{L}(F, V)$ is an isomorphism. If
        $\mathscr{C} = \{\vec{e}_1, \vec{e}_2, \ldots,
               \vec{e}_n\}$ denotes the standard basis for $F ^ n$,
        then, by
        [Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}),
        $\mathrm{Mat}_{\mathscr{A},
               \mathscr{C}}: \mathcal{L}(F, V) \longrightarrow M_{n, 1}(F) = F ^ n$
        is an isomorphism, and
        $$\operatorname{Mat}_{\mathscr{A}, \mathscr{C}}(T_i) = \vec{e}_i$$
        for all $i = 1, \ldots, n$. It follows that $$\begin{aligned}
               \operatorname{Mat}_{\mathscr{A}, \mathscr{C}}(\iota(v)) 
                 & = & \operatorname{Mat}_{\mathscr{A}, \mathscr{C}}(\iota(\sum_{i = 1} ^ n \alpha_i v_i))
               = \operatorname{Mat}_{\mathscr{A}, \mathscr{C}}(\sum_{i = 1} ^ n \alpha_i \iota(v_i)) \\
                 & = & \sum_{i = 1} ^ n \alpha_i \operatorname{Mat}_{\mathscr{A}, \mathscr{C}}(\iota(v_i))
               = \sum_{i = 1} ^ n \alpha_i\vec{e}_i 
               = \operatorname{Mat}_{\mathscr{B}}(v).
               \end{aligned}$$ It follows that
        $\mathrm{Mat}_{\mathscr{B}} =  \mathrm{Mat}_{\mathscr{A}, \mathscr{C}} \circ
               \iota$ and since
        $\mathrm{Mat}_{\mathscr{A}, \mathscr{C}}$ and $\iota$ are
        isomorphisms, $\mathrm{Mat}_{\mathscr{B}}$ is also an
        isomorphism.

        We have shown that the following diagram *commutes*, in the
        sense that
        $\mathrm{Mat}_{\mathscr{B}} =  \mathrm{Mat}_{\mathscr{A}, \mathscr{C}} \circ
               \iota$. $$\begin{tikzcd}
                   V \arrow{r}{\mathrm{Mat}_{\mathscr{B}}} \arrow{d}[swap]{\iota} & F ^ n \\
                   \mathcal{L}(F, V) \arrow{ur}[swap]{\mathrm{Mat}_{\mathscr{A}, \mathscr{C}}}&
                 \end{tikzcd} 
                 \square$$
    :::

7.  []{#problem-05-07 label="problem-05-07"}

    ::: {.question}
    Let $V$ be a vector space with a unique basis $\mathscr{B}$. Show
    that either $V$ is isomorphic to $\mathbb{Z}/2\mathbb{Z} = \{0, 1\}$
    or the trivial vector space $\{\vec{0}\}$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    If $V = \{\vec{0}\}$, then $\varnothing$ is the unique basis for
    $V$. If $V = \mathbb{Z}/2\mathbb{Z}$, then $\{1\}$ is the unique
    basis for $V$.

    If $V$ is any other vector space and
    $\mathscr{B}= \{v_1, v_2, \ldots\}$ is a basis for $V$, then
    $\mathscr{B}= \{v_1 + v_2, v_2, \ldots\}$ is also a basis for $V$.
    So, if $V$ has a unique basis, it must have dimension $1$ or $0$. If
    $V$ has dimension $1$, then there is a basis $\{v\}$ for $V$ for
    some $v\in
         V$, and for any $\alpha \in F \setminus \{0\}$, $\{\alpha v\}$
    is also a basis for $V$. So, if $V$ has a unique basis, then
    $|F\setminus \{0\}| =
         1$, and so $F$ must be the unique field with two elements
    $\mathbb{Z}/ 2\mathbb{Z}$.
    :::

8.  []{#problem-05-08 label="problem-05-08"}

    ::: {.question}
    Let $V$ and $W$ be finite dimensional vector spaces over a field $F$
    and let $\mathscr{B} = \{v_1, v_2, \ldots, v_n\}$ and
    $\mathscr{C} = \{w_1,
        w_2, \ldots, w_n\}$ be bases for $V$ and $W$, respectively.
    Suppose that $T
        : V \longrightarrow W$ is a linear transformation such that
    $T(\mathscr{B}) =
        \mathscr{C}$.

    1.  Show that $T$ is invertible.

    2.  Suppose that $T ^ {-1}: W \longrightarrow V$ is the inverse of
        $T$. Show that
        $\operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T ^ {-1})$ is the
        inverse of the matrix $\operatorname{Mat}_{\mathscr{B},
                \mathscr{C}}(T)$ (where "inverse" means the usual
        inverse of a matrix).
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  We showed in the proof of
        [Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}) that any linear
        transformation mapping a basis of $V$ to a basis of $W$ is an
        isomorphism. By definition
        ([Definition 4.4.1]({{< ref "04-linear-transf#defn-isomorphism" >}})) an isomorphism is invertible, and
        so $T$ is invertible.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  In this solution we will make use of the fact that, if $A$ is an
        invertible matrix and $B$ is any matrix such that $AB = BA = I$
        where $I$ is the identity matrix, then $B = A ^ {-1}$.

        Since $T ^ {-1} T : W \longrightarrow W$ is the identity linear
        transformation $\operatorname{id}_W$ on $W$, it follows that
        $$\operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(T ^ {-1}
              T) = \operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(\operatorname{id}_W) = I_n$$
        where $I_n$ is the $n\times n$ identity matrix. By
        Problem [5]({{< ref "02-vector-spaces#problem-02-05" >}}) in
        [Section 2.6]({{< ref "05-L-V-W#problems-02-vector-spaces" >}}),
        $$I_n = \operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T ^ {-1} T) 
                    = \operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T ^ {-1}) \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T).$$
        A similar argument shows that
        $$I_n =   \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)\operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T ^ {-1}).$$
        It follows that
        $\operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T ^ {-1}) =  \operatorname{Mat}_{\mathscr{B},
              \mathscr{C}}(T) ^ {-1}$ by the observation at the start of
        the solution.
    :::
