# Diagonalisation of linear transformations
{{< chapter 8 >}}

In this section, we will discuss the diagonalisation of linear
transformations.

## Diagonalisability

::: {.defn}
A linear transformation $T : V \to V$ of a finite-dimensional vector
space $V$ is ***diagonalisable*** if there is a basis $\mathscr{B}$ for
$V$ such that $\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ is a
diagonal matrix.

A square matrix $A$ is ***diagonalisable*** if there is an invertible
matrix $P$ such that $P^{-1}AP$ is diagonal.
:::

If $V$ is a finite-dimensional vector space and $T: V\to V$ is a linear
transformation, then it is routine to verify that $T$ is diagonalisable
if and only if $\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ is
diagonalisable for every choice of basis $\mathscr{B}$ for $V$.

Why do we care about diagonal matrices or diagonalisable linear
transformations? The reason is that diagonal matrices are considerably
easier to handle than arbitrary matrices and so if a linear
transformation $T$ is diagonalisable, we can find a diagonal matrix $D$
for $T$ and then compute with $D$.

::: {.prop}
[]{#prop-diagonal-good label="prop-diagonal-good"}
If $$A =
    \begin{pmatrix}
      \alpha_{11} & 0           & \ldots & 0           \\
      0           & \alpha_{22} & \ldots & 0           \\
      \vdots      & \vdots      & \ddots & \vdots      \\
      0           & 0           & \ldots & \alpha_{nn} \\
    \end{pmatrix}
    \quad
    \text{and}
    \quad
    B =
    \begin{pmatrix}
      \beta_{11} & 0          & \ldots & 0          \\
      0          & \beta_{22} & \ldots & 0          \\
      \vdots     & \vdots     & \ddots & \vdots     \\
      0          & 0          & \ldots & \beta_{nn}
    \end{pmatrix},$$ then the following hold:

1.  $$AB =
                \begin{pmatrix}
                  \alpha_{11}\beta_{11} & 0                     & \ldots & 0                    \\
                  0                     & \alpha_{22}\beta_{22} & \ldots & 0                    \\
                  \vdots                & \vdots                & \ddots & \vdots               \\
                  0                     & 0                     & \ldots & \alpha_{nn}\beta{nn} \\
                \end{pmatrix};$$

2.  $\det(A) = \alpha_{11} \alpha_{22} \cdots \alpha_{nn}$;

3.  $A$ is invertible if and only if $\alpha_{11}, \alpha_{22}, \ldots,
                \alpha_{nn}$ are non-zero;

4.  if $A$ is invertible, then $$A ^ {-1} =
                \begin{pmatrix}
                  \alpha_{11} ^{-1} & 0                  & \ldots & 0                  \\
                  0                 & \alpha_{22} ^ {-1} & \ldots & 0                  \\
                  \vdots            & \vdots             & \ddots & \vdots             \\
                  0                 & 0                  & \ldots & \alpha_{nn} ^ {-1} \\
                \end{pmatrix}$$

5.  the eigenvalues of $A$ are $\alpha_{11}, \alpha_{22}, \ldots,
              \alpha_{nn}$ and the associated eigenvectors are the
    standard basis vectors $ec{e}_1, \ldots, \vec{e}_n$, respectively;

6.  the characteristic polynomial $c_A(x)$ is $(x - \alpha_{11})(x -
                \alpha_{22})\cdots(x - \alpha_{nn})$.
:::

The aim of this section is to establish several characterisations of
diagonalisable linear transformations; these will allow you to more or
less easily determine whether or not a given linear transformation is
diagonalisable or not.

We require the following definitions.

::: {.defn}
Let $V$ be a finite-dimensional vector space over the field $F$, let
$T : V \to V$ be a linear transformation of $V$, and let $\lambda \in F$
be an eigenvalue of $T$. Then

1.  The ***algebraic multiplicity*** of $\lambda$ is the largest
    power $k$ such that $(x-\lambda)^{k}$ is a factor of the
    characteristic polynomial $c_{T}(x)$; we denote this by
    $a_{\lambda}$.

2.  The ***geometric multiplicity*** of $\lambda$ is the dimension
    $g_{\lambda}$ of the eigenspace $E_{\lambda}$ corresponding
    to $\lambda$.
:::

Recall that a polynomial is called ***monic*** if the leading
coefficient is $1$.

::: {.defn}
[]{#de-min-poly label="de-min-poly"} Let $T : V \to V$ be
a linear transformation of an $n$-dimensional vector space over the
field $F$. Then the monic polynomial $m_T(x)$ with coefficients in $F$
of smallest degree such that $m_T(T) = 0$ is called the ***minimum
polynomial*** of $T$.
:::

It is not at all clear from the definition that the minimum polynomial
of a linear transformation even exists; see
[Proposition 9.4.1]({{< ref "09-diagonal#prop-min-poly" >}}) for a proof that it does.

The main theorem in this section is the following.

::: {.thm}
[]{#thm-diagonalisation label="thm-diagonalisation"} Let $V$ be a finite-dimensional vector
space and let $T: V\to V$ be a linear transformation. Then the following
are equivalent:

1.  $T$ is diagonalisable;

2.  there is a basis for $V$ consisting of eigenvectors for $T$;

3.  the characteristic polynomial $c_{T}(x)$ is a product of linear
    factors and $a_{\lambda} = g_{\lambda}$ for all
    eigenvalues $\lambda$;

4.  the minimum polynomial $m_{T}(x)$ is a product of distinct linear
    factors.
:::

::: {.cor}
Suppose that $T: V \to V$ is a linear transformation over an
$n$-dimensional vector space $V$. Then the following hold:

1.  if the characteristic polynomial of $T$ has $n$ distinct roots, then
    $T$ is diagonalisable;

2.  if $T$ has $n$ distinct eigenvalues, then $T$ is diagonalisable.
:::

We will prove
[Theorem 9.1.5]({{< ref "09-diagonal#thm-diagonalisation" >}}) in the following three sections; we
will do several examples in
[Section 9.5]({{< ref "09-diagonal#section-diag-examples" >}}).

## Basis consisting of eigenvectors

::: {.thm}
[]{#thm-basis-eigenvectors label="thm-basis-eigenvectors"} Let $V$ be a finite-dimensional vector
space and let $T: V\to V$ be a linear transformation. Then $T$ is
diagonalisable if and only if $V$ has a basis consisting of eigenvectors
of $T$.
:::

::: {.proof}
*Proof.* ($\Rightarrow$) If $T$ is diagonalisable, there is a basis
$\mathscr{B} = \{
  v_{1},v_{2},\dots,v_{n} \}$ with respect to which $T$ is represented
by a diagonal matrix, say
$$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = 
    \begin{pmatrix}
      \lambda_{1} & 0           & \cdots & 0\\
      0           & \lambda_{2} & \cdots & 0 \\
     \vdots       & \vdots      & \ddots & \vdots \\
      0           & 0           & \cdots & \lambda_{n}
    \end{pmatrix}$$ for some
$\lambda_{1},\lambda_{2},\dots,\lambda_{n} \in F$. Then, by the
definition of $\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$,
$T(v_{i}) =
  \lambda_{i}v_{i}$ for $i = 1$, $2$, ..., $n$, so each basis vector
in $\mathscr{B}$ is an eigenvector.

($\Leftarrow$) If each vector in a basis $\mathscr{B}$ is an
eigenvector, then $T(v_i) =
  \lambda_iv_i$ for all $i$ and so (again by the definition of
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$) the matrix
$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$ is diagonal (with each
diagonal entry being the corresponding eigenvalue). ◻
:::

## Algebraic and geometric multiplicities

Recall that a *linear* polynomial is just a polynomial of degree $1$,
that is a polynomial of the form $\alpha x + \beta$.

::: {.prop}
[]{#prop-diag-linfactors label="prop-diag-linfactors"} If the linear transformation $T : V \to V$
is diagonalisable and $A$ is the matrix of $T$ with respect to some
basis for $V$, then the characteristic polynomial
$c_T(x) = \det(xI - A)$ of $T$ is a product of linear factors.
:::

::: {.proof}
*Proof.* Since $T : V \to V$ is diagonalisable, there exists a
basis $\mathscr{B}$ for $V$ such that
$$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = A = 
    \begin{pmatrix}
      \lambda_{1} & 0           & \cdots & 0\\
      0           & \lambda_{2} & \cdots & 0 \\
      \vdots      & \vdots      & \ddots & \vdots \\
      0           & 0           & \cdots & \lambda_{n}
    \end{pmatrix}$$ for some
$\lambda_{1},\lambda_{2},\dots,\lambda_{n} \in F$ (possibly including
repeats). The characteristic polynomial of $T$ does not depend on the
choice of basis
([Proposition 8.2.4]({{< ref "08-eigen-stuff#prop-char-poly-indep" >}})), so $$c_{T}(x) 
    = \det(xI-A) 
    = \det 
    \begin{pmatrix}
      x - \lambda_{1} & 0              & \cdots & 0\\
      0               & x- \lambda_{2} & \cdots & 0 \\
      \vdots          & \vdots         & \ddots & \vdots \\
      0               & 0              & \cdots & x- \lambda_{n}
    \end{pmatrix}
    = (x-\lambda_{1})(x-\lambda_{2}) \cdots (x-\lambda_{n}). \square$$ ◻
:::

If $T: V\to V$ is diagonalisable, then its characteristic polynomial is
a product of linear factors. So, if $T: V \to V$ has characteristic
polynomial that is not a product of linear factors, then $T$ is not
diagonalisable. However, if the characteristic polynomial of a linear
transformation $T : V \to
V$ happens to be a product of linear factors, then this does not tell us
anything about whether or not $T$ is diagonalisable. (Every polynomial
over $\mathbb{C}$ can be factorised as a product of linear factors, but
not every linear transformation of complex vector spaces is
diagonalisable!)

::: {.prop}
[]{#prop-alg-geo label="prop-alg-geo"} Let $V$ be an
$n$-dimensional vector space over the field $F$ and let $T : V
  \to V$ be a linear transformation of $V$ with distinct eigenvalues
$\lambda_1, \lambda_2, \ldots, \lambda_k\in F$ with algebraic and
geometric multiplicities $a_{1}, a_{2}, \ldots, a_{k}$ and
$g_{1}, g_{2}, \ldots,
  g_{k}$ respectively.

1.  If the characteristic polynomial $c_{T}(x)$ is a product of linear
    factors, then $$a_{1} + a_{2} + \cdots + a_{k} = \dim V$$ (the sum
    of the algebraic multiplicities equals $\dim V$);

2.  $1 \leq g_{i} \leq a_{i}$ for all $i = 1, \ldots, k$ (the geometric
    multiplicity is at most the algebraic multiplicity).
:::

::: {.proof}
*Proof.* **(1).** By assumption, we may write $c_{T}(x)$ as a product of
linear factors
$$c_{T}(x) = (x-\lambda_{1})^{a_{1}} (x-\lambda_{2})^{a_{2}} \dots
    (x-\lambda_{k})^{a_{k}}.$$ Since $c_{T}(x) = \det(xI - A)$ where $A$
is the matrix of $T$, it follows that $A$ is an $n\times n$ matrix, and
so $c_{T}(x)$ is a polynomial of degree $n = \dim V$.
$$\dim V = n = a_{1} + a_{2} + \dots + a_{k},$$ the sum of the algebraic
multiplicities.

**(2).** Let $\lambda$ be an eigenvalue of $T$. Then the geometric
multiplicity $g_{\lambda}$ of $\lambda$ is defined to be the dimension
of the eigenspace $E_{\lambda} = \ker(T-\lambda I)$. Since eigenvectors
are not allowed to be $\vec{0}$, it follows that $g_{\lambda} \geq
  1$. Choose a basis $\{ v_{1},v_{2},\dots,v_{g_{\lambda}} \}$
for $E_{\lambda}$ and extend to a basis $\mathscr{B} = \{
    v_{1},v_{2},\dots,v_{g_{\lambda}},v_{g_{\lambda}+1},\dots,v_{n} \}$
for $V$. Since $v_1, \ldots, v_{g_{\lambda}}\in E_{\lambda}$ it follows
that
$$T(v_{i}) = \lambda v_{i} \qquad \text{for $i = 1$, $2$, \dots, $g_{\lambda}$}.$$
Hence the matrix of $T$ with respect to $\mathscr{B}$ has the form
$$A = \operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = \begin{pmatrix}
      \lambda & 0       & \cdots & 0       & \ast   & \cdots & \ast   \\
      0       & \lambda & \ddots & \ddots  & \ast   & \cdots & \ast   \\
      0       & 0       & \ddots & 0       & \ddots &        & \vdots \\
      \vdots  & \vdots  & \ddots & \lambda & \vdots &        & \vdots \\
      \vdots  & \vdots  &        & 0       & \vdots &        & \vdots \\
      \vdots  & \vdots  &        & \vdots  & \vdots &        & \vdots \\
      0       & 0       & \cdots & 0       & \ast   & \cdots & \ast
    \end{pmatrix}$$ This implies that $$\begin{aligned}
    c_{T}(x)    & = 
    \det \begin{pmatrix}
      x-\lambda & 0                      & \cdots & 0         & \ast   & \cdots & \ast   \\
      0         & x-\lambda              & \ddots & \ddots    & \ast   & \cdots & \ast   \\
      0         & 0                      & \ddots & 0         & \ddots &        & \vdots \\
      \vdots    & \vdots                 & \ddots & x-\lambda & \vdots &        & \vdots \\
      \vdots    & \vdots                 &        & 0         & \vdots &        & \vdots \\
      \vdots    & \vdots                 &        & \vdots    & \vdots &        & \vdots \\
      0         & 0                      & \cdots & 0         & \ast   & \cdots & \ast
    \end{pmatrix} \\
             & = (x-\lambda)^{g_{\lambda}} p(x)
  \end{aligned}$$ for some polynomial $p(x)$. Hence $a_{\lambda}$, being
the greatest power of $(x - \lambda)$ in the characteristic polynomial,
is greater than or equal to $g_{\lambda}$. ◻
:::

::: {.lemma}
[]{#lemma-eigenvectors-linear-indep label="lemma-eigenvectors-linear-indep"} Let $V$ be a finite-dimensional
vector space and let $T: V\to V$ be a linear transformation. Then a set
of eigenvectors of $T$ corresponding to *distinct* eigenvalues is
linearly independent.
:::

::: {.thm}
[]{#thm-diag-algebraic-geometric label="thm-diag-algebraic-geometric"} Let $V$ be an n-dimensional vector
space over the field $F$ and let $T :
    V \to V$ be a linear transformation of $V$. Then $T$ is
diagonalisable if and only if $c_{T}(x)$ is a product of linear factors
and $a_{\lambda} = g_{\lambda}$ for all eigenvalues $\lambda$.
:::

::: {.proof}
*Proof.* ($\Leftarrow$) Suppose that
$$c_{T}(x) = (x-\lambda_{1})^{a_{1}} (x-\lambda_{2})^{a_{2}} \dots
    (x-\lambda_{k})^{a_{k}}$$ where $\lambda_{1}$, $\lambda_{2}$,
..., $\lambda_{k}$ are the distinct eigenvalues of $T$. By
[Proposition 9.3.2]({{< ref "09-diagonal#prop-alg-geo" >}})(1),
$$a_{1} + a_{2} + \cdots + a_{k} = n = \dim V.$$ Let
$g_{i} = \dim E_{\lambda_{i}}$ be the geometric multiplicity
of $\lambda_{i}$.

We assume for this implication that $g_{i} = a_{i}$ for all $i$. Choose
a basis $\mathscr{B}_{i} = \{v_{i1}, v_{i2}, \ldots, v_{ig_i}\}$ for
each $E_{\lambda_{i}}$ and let
$$\mathscr{B} = \mathscr{B}_{1} \cup \mathscr{B}_{2} \cup \dots \cup
    \mathscr{B}_{k} = \{v_{ij} : i = 1, 2, \ldots, k,\  j = 1, 2, \ldots,
    g_i\}.$$ We will show that $\mathscr{B}$ is linearly independent in
a moment. Assuming that $\mathscr{B}$ is linearly independent, we have
that
$$|\mathscr{B}| = g_1 + g_2 + \cdots + g_k = a_{1} + a_{2} + \cdots + a_{k} = n.$$
Hence $\mathscr{B}$ is a linearly independent set of size equal to the
dimension of $V$. Therefore $\mathscr{B}$ is a basis for $V$ and it
consists of eigenvectors for $T$. Hence $T$ is diagonalisable by
[Theorem 9.2.1]({{< ref "09-diagonal#thm-basis-eigenvectors" >}}).

We conclude the proof by showing that $\mathscr{B}$ is linearly
independent. Suppose
$$\sum_{\substack{1\leq i\leq k\\1\leq j \leq g_{i}}} \alpha_{ij}
    v_{ij} = \vec{0}.$$ If
$w_{i} = \sum_{j=1}^{g_{i}} \alpha_{ij} v_{ij} \in E_{\lambda_i}$, then
$$w_{1} + w_{2} + \dots + w_{k} = \vec{0}.$$
[Lemma 9.3.3]({{< ref "09-diagonal#lemma-eigenvectors-linear-indep" >}}) says that eigenvectors for
distinct eigenvalues are linearly independent, so the $w_{i}$ cannot be
eigenvectors. Since $w_i\in E_{\lambda_i}$, and the only non-eigenvector
in $E_{\lambda_i}$ is $\vec{0}$, it follows that $w_{i} = \vec{0}$ for
all $i = 1$, $2$, ..., $k$. Hence
$$\sum_{j=1}^{g_{i}} \alpha_{ij} v_{ij} = w_i = \vec{0} \qquad \text{for $i = 1$,
      $2$, \dots, $k$}.$$ Since $\mathscr{B}_{i}$ is a basis
for $E_{\lambda_{i}}$, it is linearly independent and so
$\alpha_{ij} = 0$ for all $i$ and $j$. Hence $\mathscr{B}$ is a linearly
independent set.

($\Rightarrow$) Suppose $T$ is diagonalisable. We have already observed
that $c_{T}(x)$ is a product of linear factors
([Proposition 9.3.1]({{< ref "09-diagonal#prop-diag-linfactors" >}})). We may therefore maintain the
notation of the first part of this proof. Since $T$ is diagonalisable,
there is a basis $\mathscr{B}$ for $V$ consisting of eigenvectors
for $T$. Let $\mathscr{B}_{i} = \mathscr{B} \cap E_{\lambda_{i}}$, that
is, $\mathscr{B}_{i}$ consists of those vectors from $\mathscr{B}$ that
have eigenvalue $\lambda_{i}$. As every vector in $\mathscr{B}$ is an
eigenvector,
$$\mathscr{B} = \mathscr{B}_{1} \cup \mathscr{B}_{2} \cup \dots \cup \mathscr{B}_{k}.$$
As $\mathscr{B}$ is linearly independent, so is $\mathscr{B}_{i}$ and
[Lemma 2.4.3]({{< ref "02-vector-spaces#lemma-dim-dim" >}}) tells us
$$|\mathscr{B}_{i}| \leq \dim E_{\lambda_{i}} = g_{i} .$$ Hence
$$n = |\mathscr{B}| = |\mathscr{B}_{1}| + |\mathscr{B}_{2}| + \dots +
    |\mathscr{B}_{k}| \leq g_{1} + g_{2} + \dots + g_{k}.$$ But
$g_{i} \leq a_{i}$ and $a_{1} + a_{2} + \dots + a_{k} = n$, so we deduce
$g_{i} = a_{i}$ for all $i$. ◻
:::

## Minimum polynomial

To get some further information about diagonalisation of linear
transformations, we introduce the concept of the minimum polynomial.

Recall that a polynomial is called *monic* if the leading coefficient is
$1$.

::: {.prop}
[]{#prop-min-poly label="prop-min-poly"} Let $V$ be a
finite-dimensional vector space over a field $F$ and let $T
    : V \to V$ be a linear transformation. Then there exists a unique
monic polynomial $m_T(x)$ with coefficients in $F$ of smallest degree
such that $m_T(T) = 0$. The monic polynomial $m_T(x)$ is called the
**minimum polynomial** of $T$.
:::

::: {.proof}
*Proof.* We prove that there exists a monic polynomial $f$ such that
$f(T) = 0$, and hence there exist such polynomials of minimum degree. We
then show that any two such monic polynomials are actually equal.

**Existence.** Suppose that $\operatorname{id}: V \to V$ is the identity
transformation. Then
$$\mathscr{A} = \{\operatorname{id}, \; T, \; T^{2}, \; T^{3}, \; \dots , \; T^{n^{2}}\} \subseteq \mathcal{L}(V,
    V).$$ Since $\dim \mathcal{L}(V, V) = n ^ 2$ but
$|\mathscr{A}| = n ^ 2 + 1$ it follows that $\mathscr{A}$ is linearly
dependent. Hence there exist scalars $\alpha_{0},
    \alpha_{1}, \dots, \alpha_{n^{2}} \in F$ (not all zero) such that
$$\alpha_{0} \operatorname{id} + \alpha_{1} T + \alpha_{2} T^{2} + \dots +
    \alpha_{n^{2}} T^{n^{2}} = \vec{0}_{\mathcal{L}(V, V)}$$ (where
$\vec{0}_{L(V, V)}$ is the zero map). Omitting zero coefficients and
dividing by the last non-zero scalar $\alpha_{k}$ yields an expression
of the form
$$T^{k} + \beta_{k-1} T^{k-1} + \dots + \beta_{2} T^{2} + \beta_{1} T + \beta_{0} \operatorname{id} = \vec{0}_{\mathcal{L}(V,
      V)}$$ where $\beta_{i} = \alpha_{i}/\alpha_{k}$ for $i = 1$, $2$,
..., $k-1$. Hence there exists a *monic* polynomial
$$f(x) = x^{k} + \beta_{k-1}x^{k-1} + \dots + \beta_{2}x^{2} + \beta_{1}x +
    \beta_{0}$$ such that $f(T) = 0$ (and note that the degree of $f$ is
at most $n ^
    2$).

**Uniqueness.** Suppose that
$$f(x) = x^{k} + \alpha_{k-1} x^{k-1} + \dots + \alpha_{1} x +
    \alpha_{0} \qquad \text{and} \qquad
    g(x) = x^{k} + \beta_{k-1} x^{k-1} + \dots + \beta_{1} x + \beta_{0}$$
are monic polynomials of the least degree such that $f(T) =
    g(T) = \vec{0}_{\mathcal{L}(V, V)}$. If $f \not=g$, then
$$h(x) = f(x) - g(x) = (\alpha_{k-1} - \beta_{k-1})x^{k-1} + \dots +
    (\alpha_{1} - \beta_{1}) x + (\alpha_{0} - \beta_{0})$$ is a
non-zero polynomial of degree at most $k - 1$ satisfying $h(T) =
    \vec{0}_{\mathcal{L}(V, V)}$, and so some scalar multiple of $h(x)$
is monic. But, by definition, $m_{T}$ is the monic polynomial of least
degree such that $m_T(T)
    = \vec{0}_{\mathcal{L}(V, V)}$ and
$\deg m_T(x) = k > k - 1 = \deg h$, which is a contradiction. It follows
that $f = g$, and so there is a *unique* monic polynomial $f(x)$ of
smallest degree such that $f(T) = 0$. ◻
:::

::: {.prop}
[]{#prop-m-divide label="prop-m-divide"} Let $V$ be a
finite-dimensional vector space over a field $F$ and let $T : V \to V$
be a linear transformation. Then the following hold:

1.  if $f(x)$ is any polynomial (over $F$) such that $f(T) = 0$, then
    the minimum polynomial $m_{T}(x)$ divides $f(x)$;

2.  the minimum polynomial $m_{T}(x)$ divides the characteristic
    polynomial $c_{T}(x)$;

3.  the roots of the minimum polynomial $m_{T}(x)$ and the roots of the
    characteristic polynomial $c_{T}(x)$ coincide.
:::

::: {.proof}
*Proof.* **(1).** Attempt to divide $f(x)$ by the minimum
polynomial $m_{T}(x)$: $$f(x) = m_{T}(x) q(x) + r(x)$$ for some
polynomials $q(x)$ and $r(x)$ with either $r(x) = 0$ or
$\deg r(x) < \deg m_{T}(x)$ (possible by the Division Algorithm for
polynomials). Substituting the transformation $T$ for the variable $x$
gives $$0 = f(T) = m_{T}(T) q(T) + r(T) = r(T)$$ since $m_{T}(T) = 0$ by
definition. But $m_{T}$ has the smallest degree among non-zero
polynomials $f$ such that $f(T) = 0$. If $r(x)\not=0$, then $r$ is a
polynomial with $\deg r(x) < \deg m_{T}(x)$ and $r(T) = 0$, which is a
contradiction. Hence $r(x) = 0$ and so $$f(x) = m_{T}(x) q(x).$$ In
other words, $m_{T}(x)$ divides $f(x)$.

**(2).** By the Cayley--Hamilton Theorem
([Theorem 8.4.1]({{< ref "08-eigen-stuff#thm-cayley-hamilton" >}})), $c_T(T) = 0$, and so, by part (1),
$m_T(x)$ divides $c_T(x)$.

**(3).** Let $\lambda$ be a root of $m_{T}(x)$. Then
$m_T(x) =  (x-\lambda)f(x)$ for some polynomial $f$ with degree
$\deg m_T(x) - 1$. By part (2), $m_T(x)$ divides $c_T(x)$ and so
$c_T(x) = m_T(x) g(x)$ for some polynomial $g$. It follows that
$$c_T(x) = m_T(x)\ g(x) = (x-\lambda)\ f(x)\ g(x)$$ and so $\lambda$ is
a root of $c_T(x)$ also. ◻
:::

::: {.lemma}
[]{#lem:kernel-bound label="lem:kernel-bound"} Let
$V$, $W$, and $X$ be finite-dimensional vector spaces over a field $F$.
Suppose that $T: V\to W$ and $S : W\to X$ are linear maps. Then
$$\dim \ker ST \le \dim\ker S + \dim \ker T$$
:::

::: {.proof}
*Proof.* Let $v\in \ker ST$. Then $ST(v) = \vec{0}_{X}$ and so
$T(v) \in \ker S$. On the other hand, if $v\in V$ and $T(v)\in \ker S$,
then $S(T(v)) = \vec{0}_{X}$, and so $v\in \ker ST$. It follows that
$$\ker ST = \{v\in V : T(v)\in \ker S\}.$$ If $v\in \ker T$, then
$T(v) = 0_W \in \ker S$, and so $\ker(T) \subseteq
    \ker(ST)$. The function $F: \ker ST \to W$ defined by $F(v) = T(v)$
for all $v\in \ker ST$ is linear (since $\ker ST$ is a subspace and
hence a vector space in its own right, and because $T$ is linear). Hence
the Rank-Nullity Theorem implies that
$$\dim \ker ST = \dim \ker F + \dim \operatorname{im} F.$$ But
$\operatorname{im} F\subseteq \ker S$ and so
$\dim \operatorname{im} F \leq \dim \ker S$. On the other hand,
$\ker F = \{v\in \ker ST : F(v) = \vec{0}_W = T(v)\}\subseteq
    \ker(T)$. On the third hand, if $v\in \ker T\subseteq \ker ST$, then
$T(v) =
    F(v) = \vec{0}_W$ and so $\ker F = \ker T$. Thus
$\dim \ker F = \dim \ker T$, and so
$$\dim \ker ST  = \dim \ker F + \dim \operatorname{im} F \le \dim \ker T + \dim \ker S,$$
as required. ◻
:::

To see the full link to diagonalisability, we finally prove:

::: {.thm}
[]{#thm:m-diag-condn label="thm:m-diag-condn"} Let
$V$ be a finite-dimensional vector space over the field $F$ and let
$T : V \to V$ be a linear transformation. Then $T$ is diagonalisable if
and only if the minimum polynomial $m_{T}(x)$ is a product of distinct
linear factors.
:::

::: {.proof}
*Proof.* ($\Rightarrow$) Suppose there is a basis $\mathscr{B}$ with
respect to which $T$ is represented by a diagonal matrix:
$$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = A = 
    \left(
    \begin{array}{ccccccccccccccccc}
      \lambda_{1}   & 0           & \cdots           & 0 \\
      0             & \lambda_{1} & \cdots           & 0 \\
      \vdots        & \vdots      & \ddots        \\
      0             & 0           &                  & \lambda_{1} \\
                    &             &                  &                & \lambda_{2} & 0           & \cdots           & 0 \\
                    &             &                  &                & 0           & \lambda_{2} & \cdots           & 0 \\
                    &             &                  &                & \ddots      & \vdots      & \ddots        \\
                    &             &                  &                & 0           & 0           &                  & \lambda_{2} \\
                    &             &                  &                &             &             &                  &                & \ddots \\
                    &             &                  &                &             &             &                  &                &           &  & \lambda_{k} & 0           & \cdots           & 0 \\
                    &             &                  &                &             &             &                  &                &           &  & 0           & \lambda_{k} & \cdots           & 0 \\
                    &             &                  &                &             &             &                  &                &           &  & \vdots      & \vdots      & \ddots        \\
                    &             &                  &                &             &             &                  &                &           &  & 0           & 0           &                  & \lambda_{k}
    \end{array}
  \right)$$ where the $\lambda_{i}$ are the *distinct* eigenvalues. Then
$$A - \lambda_{1}I = \begin{pmatrix}
      0                                                                          \\
       & \ddots                                                                  \\
       &        & 0                                                              \\
       &        &   & \lambda_{2}-\lambda_{1}                                    \\
       &        &   &                         & \ddots                           \\
       &        &   &                         &        & \lambda_{k}-\lambda_{1}
    \end{pmatrix}$$ (with all non-diagonal entries being $0$) and
similar expressions apply to $A-\lambda_{2}I$, ..., $A-\lambda_{k}I$.
Hence $$(A-\lambda_{1}I) (A-\lambda_{2}I) \cdots (A-\lambda_{k}I)
    = \begin{pmatrix}
      0      & \cdots & 0      \\
      \vdots &        & \vdots \\
      0      & \cdots & 0
    \end{pmatrix} = 0,$$ so
$$(T-\lambda_{1}I) (T-\lambda_{2}I) \cdots (T-\lambda_{k}I) = 0.$$ Thus
$m_{T}(x)$ divides $(x-\lambda_{1})(x-\lambda_{2})\cdots(x-\lambda_{k})$
by [Proposition 9.4.2]({{< ref "09-diagonal#prop-m-divide" >}})(2). Hence $m_{T}(x)$ is a product of distinct
linear factors.

($\Leftarrow$) Suppose that the minimum polynomial of $T$ consists of
distinct linear factors. Then
$$m_T(T) = (T - \lambda_1 I)\cdots (T - \lambda_k I)$$ for some
$\lambda_1, \lambda_2, \ldots, \lambda_k\in F$. Also by the definition
of the minimum polynomial $m_T(T)$ is the zero linear transformation.
Hence $$\begin{array}{rclr}
      \dim V
       & =                                                        & \dim\ker (T - \lambda_1 I)\cdots (T - \lambda_k I)
       & (T - \lambda_1 I)\cdots (T - \lambda_k I)
      \text{ is the zero map}                                                                                                                               \\
       & \le                                                      & \dim \ker (T - \lambda_1 I) + \cdots +
      \dim \ker(T - \lambda_k I)
       & \text{by \cref{lem:kernel-bound}}
      \\
       & =                                                        & \dim E_{\lambda_1} + \cdots + \dim E_{\lambda_k}
       & E_{\lambda_i} = \ker(T - \lambda_i I) \text{ for all } i
      \\
       & =                                                        & g_1 + \cdots + g_k
       & \text{by definition of the geometric multiplicity}
      \\
       & \leq                                                     & a_1 + \cdots + a_k                                 & \text{by \cref{prop-alg-geo}(2)} \\
       & \leq                                                     & \deg c_T(x)                                                                             \\
       & \leq                                                     & \dim V                                                                                  \\
    \end{array}$$ yielding equality throughout. Hence
$a_1 + \cdots + a_k = \deg c_T(x)$ and so $c_T(x)$ is a product of
linear factors. Finally, since $g_i \leq a_i$ for all $i$ and
$a_1 + \cdots + a_k = g_1 + \cdots + g_k$, it follows that $a_i = g_i$
for all $i$. Hence, by
[Theorem 9.3.4]({{< ref "09-diagonal#thm-diag-algebraic-geometric" >}}), $T$ is diagonalisable. ◻
:::

## Examples {#section-diag-examples}

::: {.exampjupyter}
[]{#ex-non-diag label="ex-non-diag"} Let
$T : \mathbb{R}^{3} \to \mathbb{R}^{3}$ be the linear transformation
such that the matrix of $T$ with respect to the standard basis for
$\mathbb{R} ^ 3$ is $$B = \begin{pmatrix}
      8   & 3  & 0 \\
      -18 & -7 & 0 \\
      -9  & -4 & 2
    \end{pmatrix}.$$ Show that $T$ is not diagonalisable.
:::

::: {.solution}
By
[Theorem 9.3.4]({{< ref "09-diagonal#thm-diag-algebraic-geometric" >}}), $T$ is diagonalisable if and
only if $c_T(x)$ is a product of linear factors and the algebraic
multiplicity of every eigenvalue equals the geometric multiplicity.

To find the characteristic polynomial: $$\begin{aligned}
    c_{T}(x) = \det(xI-B) & = \det \begin{pmatrix}
      x-8 & -3  & 0   \\
      18  & x+7 & 0   \\
      9   & 4   & x-2
    \end{pmatrix}              \\
                          & = (x-2) \left( (x-8)(x+7) + 3 \times 18 \right) \\
                          & = (x-2) \left( (x-8)(x+7) + 54 \right)          \\
                          & = (x-2) (x^{2}-x-2)                             \\
                          & = (x+1)(x-2)^{2}.
  \end{aligned}$$ Since the eigenvalues of $T$ correspond to the roots
of the characteristic polynomial
([Proposition 8.2.2]({{< ref "08-eigen-stuff#prop-eigenvalue-root" >}})), it follows that the eigenvalues of
$T$ are $-1$, $2$, and $2$. The algebraic multiplicities are
$a_{-1} = 1$ and $a_{2} = 2$.

$\mathbf{\lambda = -1.}$ Since $g_{-1} \leq a_{-1}\leq 1$ and because
$g_{-1} \geq 1$, it follows that $g_{-1} = 1$.

If $\in E_{2}$, then $T(\vec{v}) = 2\vec{v}$ and so $(T-2I)(\vec{v}) =
  \vec{0}$. In other words, $$(B - 2I)
    \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}
    =
    \begin{pmatrix}
      6   & 3  & 0 \\
      -18 & -9 & 0 \\
      -9  & -4 & 0
    \end{pmatrix}
    \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}
    = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix},$$ and so
$$6x+3y = -18x-9y = -9x-4y = 0;$$ that is,
$$2x + y = 0, \qquad 9x + 4y = 0.$$ The first equation gives $y = -2x$,
and when we substitute in the second we obtain $x = 0$ and so $y = 0$.
Hence
$$E_{2} = \ker(T-2I) = \left\{ \begin{pmatrix} 0 \\ 0 \\ z \\ \end{pmatrix}
    \;\middle|\; z \in \mathbb{R} \right\} = \operatorname{Span} \left(
    \begin{pmatrix} 0 \\ 0 \\ 1 \\ \end{pmatrix} \right)$$ and so
$g_{2} = 1 \not= 2 = a_{2}$, and so $T$ is not diagonalisable.
:::

::: {.omittedexampjupyter}
Let $$A = \begin{pmatrix}
      -1 & 2 & -1 \\
      -4 & 5 & -2 \\
      -4 & 3 & 0
    \end{pmatrix}.$$ Show that $A$ is not diagonalisable.
:::

::: {.solution}
The characteristic polynomial of $A$ is $$\begin{aligned}
    c_{A}(x) & = \det (xI - A)                                             \\
             & = \det \begin{pmatrix}
      x+1 & -2  & 1 \\
      4   & x-5 & 2 \\
      4   & -3  & x
    \end{pmatrix}                          \\
             & = (x+1) \det \begin{pmatrix} x-5 & 2 \\ -3 & x \end{pmatrix} + 2
    \det \begin{pmatrix} 4 & 2 \\ 4 & x \end{pmatrix} +
    \det \begin{pmatrix} 4 & x-5 \\ 4 & -3 \end{pmatrix}                                       \\
             & = (x+1) \bigl( x(x-5) + 6 \bigr) + 2(4x-8) + (-12 -4x + 20) \\
             & = (x+1) (x^{2}-5x+6) + 8(x-2) - 4x + 8                      \\
             & = (x+1)(x-2)(x-3) + 8(x-2) - 4(x-2)                         \\
             & = (x-2) \bigl( (x+1)(x-3) + 8 - 4 \bigr)                    \\
             & = (x-2) (x^{2} - 2x - 3 + 4)                                \\
             & = (x-2) (x^{2} - 2x + 1)                                    \\
             & = (x-2) (x-1)^{2}.
  \end{aligned}$$ In particular, the algebraic multiplicity of the
eigenvalue $1$ is $2$.

We now determine the eigenspace for eigenvalue $1$. We solve
$(A-I)ec{v} = \vec{0}$; that is, $$\begin{pmatrix}
      -2 & 2 & -1 \\
      -4 & 4 & -2 \\
      -4 & 3 & -1
    \end{pmatrix} 
    \begin{pmatrix} 
      x \\ 
      y \\ 
      z  
    \end{pmatrix} 
    = 
    \begin{pmatrix} 
      0 \\
      0 \\ 
      0 \\ 
    \end{pmatrix}.$$ We solve this by applying row operations:
$$\begin{aligned}
    \left( \begin{matrix} -2 & 2 & -1 \\
      -4 & 4 & -2 \\
      -4 & 3 & -1\end{matrix} \;\middle|\; \begin{matrix}
      0 \\ 0 \\ 0 \end{matrix} \right)
     & \longrightarrow \left( \begin{matrix}
      -2 & 2  & -1 \\
      0  & 0  & 0  \\
      0  & -1 & 1\end{matrix} \;\middle|\; \begin{matrix}
      0 \\ 0 \\ 0 \end{matrix} \right)
     &                                                                                                     & \begin{array}{l}
      r_{2} \mapsto r_{2} - 2r_{1} \\
      r_{3} \mapsto r_{3} - 2r_{1}
    \end{array} \\
     & \longrightarrow \left( \begin{matrix}
      -2 & 0  & 1 \\
      0  & 0  & 0 \\
      0  & -1 & 1\end{matrix} \;\middle|\; \begin{matrix}
      0 \\ 0 \\ 0 \end{matrix} \right)
     &                                                                                                     & \begin{array}{l}
      r_{1} \mapsto r_{1}+2r_{3}
    \end{array}
  \end{aligned}$$ So the second displayed equation in this solution is
equivalent to $$-2x + z = 0 = -y + z.$$ Hence $z = 2x$ and $y = z = 2x$.
Therefore the eigenspace is
$$E_{1} = \left\{ \begin{pmatrix} x \\ 2x \\ 2x \\ \end{pmatrix} \:\middle|\: x \in \mathbb{R} \right\} =
    \operatorname{Span}\left(\begin{pmatrix} 1 \\ 2 \\ 2 \\ \end{pmatrix}\right)$$
and we conclude $\dim E_{1} = 1$. Thus the geometric multiplicity of $1$
is not equal to the algebraic multiplicity, so $A$ is not
diagonalisable.
:::

::: {.examp}
In [Example 9.5.1]({{< ref "09-diagonal#ex-non-diag" >}}), we showed that the linear transformation
$T : \mathbb{R}^{3} \to \mathbb{R}^{3}$ whose matrix with respect to the
standard basis for $\mathbb{R} ^ 3$ is $$B = \begin{pmatrix}
      8   & 3  & 0 \\
      -18 & -7 & 0 \\
      -9  & -4 & 2
    \end{pmatrix}$$ is not diagonalisable, and that
$c_T(x) = (x + 1)(x - 2) ^ 2$. Find the minimum polynomial of $T$.
:::

::: {.solution}
Since $B$ is not diagonalisable, it follows by
[Theorem 9.4.4]({{< ref "09-diagonal#thm:m-diag-condn" >}}) that the minimum polynomial $m_T(x)$ is
not a product of distinct linear factors. But, by
[Proposition 9.4.1]({{< ref "09-diagonal#prop-min-poly" >}}), $m_T(x)$ divides $c_T(x)$ and the roots of
$m_T(x)$ equal those of $c_T(x)$. Hence $m_T(x) = (x + 1)(x
    -2)$ or $m_T(x) = (x + 1)(x - 2) ^ 2 = c_T(x)$. The first
possibility is a product of distinct linear factors, which we already
ruled out, and so $m_T(x) = c_T(x)$.
:::

::: {.exampjupyter}
[]{#ex:diagonalise label="ex:diagonalise"} Let
$T : \mathbb{R} ^ 3 \to \mathbb{R} ^ 3$ be such that the matrix of $T$
with respect to the standard basis for $\mathbb{R} ^ 3$ is
$$A = \begin{pmatrix}
      8  & 6  & 0 \\
      -9 & -7 & 0 \\
      3  & 3  & 2
    \end{pmatrix}.$$

1.  Find the characteristic polynomial of $T$.

2.  Show that $T$ is diagonalisable and find the diagonal matrix $D$
    such that $D = \operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ for
    some basis $\mathscr{B}$ for $\mathbb{R} ^ 3$.

3.  Find the minimum polynomial of $T$.
:::

::: {.solution}
Throughout this solution we will use the fact that since $A$ is written
with respect to the standard bases for $\mathbb{R} ^ 3$, $T(v) = Av$ for
all $v\in \mathbb{R} ^ 3$.

1.  We calculate the characteristic polynomial: $$\begin{aligned}
                \det(xI - A) & = \det \begin{pmatrix}
                  x-8 & -6  & 0   \\
                  9   & x+7 & 0   \\
                  -3  & -3  & x-2
                \end{pmatrix}             \\
                             & = (x-2) \left( (x-8)(x+7) + 6 \times 9 \right) \\
                             & = (x-2) \left( (x-8)(x+7) + 54 \right)         \\
                             & = (x-2) (x^{2} - x - 2)                        \\
                             & = (x-2)(x+1)(x-2)                              \\
                             & = (x+1)(x-2)^{2},
              \end{aligned}$$ so $$c_{T}(x) = (x+1)(x-2)^{2}.$$

2.  [Proposition 8.2.2]({{< ref "08-eigen-stuff#prop-eigenvalue-root" >}}) states the roots of $c_T(x)$ are
    in one-to-one correspondence with the eigenvalues of $T$. Hence the
    eigenvalues of $T$ are $-1$ and $2$.

    [Proposition 9.3.2]({{< ref "09-diagonal#prop-alg-geo" >}}) states that $T$ is diagonalisable if and
    only if $c_T(x)$ is a product of linear factors and the algebraic
    multiplicity $a_{\lambda}$ of every eigenvalue $\lambda$ equals the
    geometric multiplicity $g_{\lambda}$ of $\lambda$.

    We showed in part (1) that $c_T(x)$ is a product of linear factors,
    and so it suffices to show that $a_{-1} = g_{-1} = 1$ and
    $a_{2} = g_{2} = 2$.

    $\mathbf{\lambda = -1.}$ We want to find
    $g_{-1} = \dim E_{-1} = \dim \ker (T + I)$. Since
    $g_{-1} \leq a_{-1} = 1$, it suffices to show that $g_{-1}
                \not= 0$. But $$(A + I)
                =
                \begin{pmatrix}
                  9  & 6  & 0 \\
                  -9 & -6 & 0 \\
                  3  & 3  & 3
                \end{pmatrix}$$ and clearly the row rank of $A + I$ is
    $2$. Hence the column rank of $A + I$ is strictly less than $3$, and
    so $\dim \operatorname{im} (T
              + I) < 3$ by
    [Theorem 4.2.3]({{< ref "04-linear-transf#thm-column-space-is-image" >}})(1) (the column rank of
    $\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T) = A$ equals
    $\dim\operatorname{im} T$). Hence, by the Rank-Nullity Theorem,
    $\dim
              \ker (T + I) > 0$, and so $g_{-1} = 1$.

    \[Note that an alternative (longer) solution to this would be to
    calculate the dimension of $\dim E_{-1}$ by finding a basis for it
    explicitly.\]

    $\mathbf{\lambda = 2.}$ In this case, we want to find
    $g_2 = \dim E_{2} = \dim \ker (T - 2I)$. As in the previous case,
    $$(A - 2I)
                \begin{pmatrix}
                  6  & 6  & 0 \\
                  -9 & -9 & 0 \\
                  3  & 3  & 0
                \end{pmatrix}$$ and the column rank of $A - 2I$ is
    clearly $1$. Hence $\dim \operatorname{im} (T - 2I)
                = 1$, and so $g_2 = \dim \ker (T - 2I) = 2$.

    It follows that $T$ is diagonalisable, and that $$D =
                \begin{pmatrix}
                  -1 & 0 & 0 \\
                  0  & 2 & 0 \\
                  0  & 0 & 2
                \end{pmatrix}.$$

3.  It follows by
    [Proposition 9.4.2]({{< ref "09-diagonal#prop-m-divide" >}})(2) that $m_T(x) =
                (x+1)(x-2)$ or $m_T(x) = (x+1)(x-2)^{2}$. By part (2),
    we know that $T$ is diagonalisable, and so, by
    [Theorem 9.4.4]({{< ref "09-diagonal#thm:m-diag-condn" >}}), $m_T(x)$ is a product of distinct
    linear factors, i.e. $m_T(x) = (x + 1)(x - 2)$.

    You can verify that $(A+I)(A-2I) = 0$ as an exercise.
:::

::: {.exampjupyter}
Consider the linear transformation $\mathbb{R}^{3} \to \mathbb{R}^{3}$
given by the matrix $$D = \begin{pmatrix}
      3  & 0 & 1 \\
      2  & 2 & 2 \\
      -1 & 0 & 1
    \end{pmatrix}.$$ Calculate the characteristic polynomial of $D$,
determine if $D$ is diagonalisable and calculate the minimum polynomial.
:::

::: {.solution}
The characteristic polynomial is $$\begin{aligned}
    c_{D}(x) & = \det \begin{pmatrix}
      x-3 & 0   & -1  \\
      -2  & x-2 & -2  \\
      1   & 0   & x-1
    \end{pmatrix} \\
             & = (x-3) (x-2) (x-1) + (x-2)        \\
             & = (x-2) (x^{2} - 4x + 3 + 1)       \\
             & = (x-2) (x^{2} - 4x + 4)           \\
             & = (x-2)^{3}.
  \end{aligned}$$ Therefore $D$ is a diagonalisable only if
$m_{D}(x) = x-2$. But $$D-2I = \begin{pmatrix}
      1  & 0 & 1  \\
      2  & 0 & 2  \\
      -1 & 0 & -1
    \end{pmatrix}
    \neq \begin{pmatrix}
      0 & 0 & 0 \\
      0 & 0 & 0 \\
      0 & 0 & 0
    \end{pmatrix},$$ so $m_{D}(x) \neq x-2$. Thus $D$ is not
diagonalisable. Indeed $$(D-2I)^{2} = \begin{pmatrix}
      1  & 0 & 1  \\
      2  & 0 & 2  \\
      -1 & 0 & -1
    \end{pmatrix}
    \begin{pmatrix}
      1  & 0 & 1  \\
      2  & 0 & 2  \\
      -1 & 0 & -1
    \end{pmatrix} = \begin{pmatrix}
      0 & 0 & 0 \\
      0 & 0 & 0 \\
      0 & 0 & 0
    \end{pmatrix},$$ so we deduce $m_{D}(x) = (x-2)^{2}$.
:::

::: {.exampjupyter}
Consider the linear transformation $\mathbb{R}^{3} \to \mathbb{R}^{3}$
given by the matrix $$E = \begin{pmatrix}
      -3 & -4  & -12 \\
      0  & -11 & -24 \\
      0  & 4   & 9
    \end{pmatrix}.$$ Calculate the characteristic polynomial of $E$,
determine if $E$ is diagonalisable and calculate its minimum polynomial.
:::

::: {.solution}
$$\begin{aligned}
    c_{E}(x) & = \det \begin{pmatrix}
      x+3 & 4    & 12  \\
      0   & x+11 & 24  \\
      0   & -4   & x-9
    \end{pmatrix}      \\
             & = (x+3) \left( (x+11)(x-9) + 96 \right) \\
             & = (x+3) (x^{2} + 2x - 3)                \\
             & = (x+3) (x-1) (x+3)                     \\
             & = (x-1) (x+3)^{2}.
  \end{aligned}$$ So the eigenvalues of $E$ are $1$ and $-3$. Now $E$ is
diagonalisable only if $m_{E}(x) = (x-1)(x+3)$. We calculate
$$E-I = \begin{pmatrix}
      -4 & -4  & -12 \\
      0  & -12 & -24 \\
      0  & 4   & 8
    \end{pmatrix} , \qquad
    E+3I = \begin{pmatrix}
      0 & -4 & -12 \\
      0 & -8 & -24 \\
      0 & 4  & 12
    \end{pmatrix} ,$$ so $$(E-I)(E+3I) = \begin{pmatrix}
      -4 & -4  & -12 \\
      0  & -12 & -24 \\
      0  & 4   & 8
    \end{pmatrix}
    \begin{pmatrix}
      0 & -4 & -12 \\
      0 & -8 & -24 \\
      0 & 4  & 12
    \end{pmatrix} =
    \begin{pmatrix}
      0 & 0 & 0 \\
      0 & 0 & 0 \\
      0 & 0 & 0
    \end{pmatrix}.$$ Hence $m_{E}(x) = (x-1)(x+3)$ and $E$ is
diagonalisable.
:::

::: {.omittedexampjupyter}
Let $$A = 
    \begin{pmatrix}
      0  & -2 & -1 \\
      1  & 5  & 3  \\
      -1 & -2 & 0
    \end{pmatrix}.$$ Calculate the characteristic polynomial and the
minimum polynomial of $A$. Hence determine whether $A$ is
diagonalisable.
:::

::: {.solution}
$$\begin{aligned}
    c_{A} & = \det(xI - A)                                                                                               \\
          & = \det
    \begin{pmatrix}
      x  & 2   & 1  \\
      -1 & x-5 & -3 \\
      1  & 2   & x
    \end{pmatrix}                                                                                          \\
          & = x \det \begin{pmatrix}
      x-5 & -3 \\
      2   & x
    \end{pmatrix} - 2 \det \begin{pmatrix}
      -1 & -3 \\ 1 & x
    \end{pmatrix} + \det \begin{pmatrix}
      -1 & x-5 \\ 1 & 2
    \end{pmatrix} \\
          & = x \bigl( x(x-5) + 6 \bigr) - 2(-x+3) + (-2-x+5)                                                            \\
          & = x(x^{2} - 5x + 6) + 2(x-3) - x+3                                                                           \\
          & = x(x-3)(x-2) + 2(x-3) - (x-3)                                                                               \\
          & = (x-3) \bigl( x(x-2) + 2 - 1 \bigr)                                                                         \\
          & = (x-3) (x^{2} - 2x + 1)                                                                                     \\
          & = (x-3) (x-1)^{2}.
  \end{aligned}$$ Since the minimum polynomial divides $c_{A}(x)$ and
has the same roots, we deduce
$$m_{A}(x) = (x-3)(x-1) \quad \text{or} \quad m_{A}(x) = (x-3)(x-1)^{2}.$$
We calculate $$\begin{aligned}
    (A-3I)(A-I) & = \begin{pmatrix}
      -3 & -2 & -1 \\
      1  & 2  & 3  \\
      -1 & -2 & -3
    \end{pmatrix}
    \begin{pmatrix}
      -1 & -2 & -1 \\
      1  & 4  & 3  \\
      -1 & -2 & -1
    \end{pmatrix}                         \\
                & = \begin{pmatrix}
      2  & 0 & -2 \\
      -2 & 0 & 2  \\
      2  & 0 & -2
    \end{pmatrix} \neq 0.
  \end{aligned}$$ Hence $m_{A}(x) \neq (x-3)(x-1)$. We conclude
$$m_{A}(x) = (x-3)(x-1)^{2}.$$ This is not a product of distinct linear
factors, so $A$ is not diagonalisable.
:::

## Problems {#problems-09-diagonal}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-09-01 label="problem-09-01"}

    ::: {.question}
    1.  Let $T \colon \mathbb{R}^{2} \to \mathbb{R}^{2}$ be the linear
        transformation having matrix $$A = \begin{pmatrix}
              -13 & -5 \\
              34 & 13
            \end{pmatrix}$$ with respect to the standard basis. Is
        $T$ diagonalisable?

    2.  Let $S \colon \mathbb{C}^{2} \to \mathbb{C}^{2}$ be the linear
        transformation having the above matrix $A$ with respect to the
        standard basis. Is $S$ diagonalisable?
    :::

2.  []{#problem-09-02 label="problem-09-02"}

    ::: {.questionjupyter}
    For each matrix $A$ below, let
    $T \colon \mathbb{R}^{3} \to \mathbb{R}^{3}$ be the linear
    transformation having matrix $A$ with respect to the standard basis,
    that is, $$\begin{aligned}
        T \colon \mathbb{R}^{3} &\to \mathbb{R}^{3} \\
        \vec{v} &\mapsto A\vec{v}.
      \end{aligned}$$ Calculate the algebraic and geometric
    multiplicities of each eigenvalue of each such $T$, and determine
    whether $T$ is diagonalisable. If $T$ is diagonalisable, find a
    matrix $P$ such that $P^{-1}AP$ is diagonal. $$\begin{array}{rlrlrl}
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

3.  []{#problem-09-03 label="problem-09-03"}

    ::: {.questionjupyter}
    For each matrix in
    Problem [2]({{< ref "09-diagonal#problem-09-02" >}}), determine the minimum polynomial of the
    corresponding transformation $T$.
    :::

4.  []{#problem-09-04 label="problem-09-04"}

    ::: {.question}
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
    \end{pmatrix}.$$ Show that $A$ and $B$ have the same minimum
    polynomial.
    :::

5.  []{#problem-09-05 label="problem-09-05"}

    ::: {.questionjupyter}
    Let $T \colon \mathbb{R}^{4} \to \mathbb{R}^{4}$ be the linear
    transformation given by the matrix $$A = \begin{pmatrix}
            2 & 1 & 0 & -1 \\
            -2 & 5 & -1 & -7 \\
            -12 & 16 & -4 & -15 \\
            -2 & 3 & -1 & -5
          \end{pmatrix}.$$

    1.  Determine the minimum polynomial of $T$.

    2.  By considering the minimum polynomial, or otherwise, determine
        whether or not $T$ is diagonalisable.
    :::
