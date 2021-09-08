# Inner product spaces {#chapter-inner-product}
{{< chapter 10 >}}

In this section we consider the topic of inner product spaces. An "inner
product" is essentially a generalisation of the dot product:
$$\begin{pmatrix} x_1 \\ y_1 \\ z_1 \\ \end{pmatrix} \cdot \begin{pmatrix} x_2
  \\ y_2 \\ z_2 \\ \end{pmatrix} = x_1x_2 + y_1y_2 + z_1z_2$$ on
$\mathbb{R} ^ 3$. Inner products allow us to define the notion of
"length" of a vector, and "angle" between vectors, in abstract vector
spaces, not only in Euclidean spaces such as $\mathbb{R} ^ 3$.

Throughout this section, we will only consider real and complex vector
spaces.

## Complex numbers -- redux

We require the following definitions relating to complex numbers.

::: {.defn}
If $\alpha = a + ib \in \mathbb{C}$, the ***complex conjugate***
of $\alpha$ is given by $$\bar{\alpha} = a - ib$$ The ***modulus*** of
$\alpha$ is $$|\alpha| = \sqrt{a ^ 2 + b ^ 2}.$$ The ***real part*** of
$\alpha$ is $$\Re(\alpha) = a.$$
:::

Note that if $\alpha\in \mathbb{R}$, then $\bar{\alpha} = \alpha$ and
$|\alpha|$ is the usual absolute value of $\alpha$. We also require the
following elementary results about complex numbers.

::: {.prop}
Let $\alpha, \beta \in \mathbb{C}$. Then the following hold:

1.  $\overline{\alpha\beta} = \overline{\alpha}\overline{\beta}$;

2.  $\overline{\alpha + \beta} = \overline{\alpha} + \overline{\beta}$;

3.  $\alpha \overline{\alpha} = |\alpha| ^ 2$;

4.  $\alpha + \overline{\alpha} = 2 \Re(\alpha)$;

5.  $\Re(\alpha) \leq |\alpha|$.
:::

## Definition and examples

::: {.defn}
[]{#defn-inner-product label="defn-inner-product"}
An ***inner product*** on a real or complex vector space $V$ is a
function: $$\begin{aligned}
    \langle ., .\rangle : V \times V & \to F                       \\
    (v,w)                            & \mapsto \langle v,w \rangle
  \end{aligned}$$ such that

1.  (**additivity:**)
    $\langle u+v, w \rangle = \langle u,w \rangle + \langle v,w
          \rangle$ for all $u,v,w \in V$;

2.  (**homogeneity:**)
    $\langle \alpha v, w \rangle = \alpha \langle v,w \rangle$ for all
    $v,w \in V$ and $\alpha \in F$;

3.  (**conjugate symmetric:**)
    $\langle v,w \rangle = \overline{\langle w,v \rangle}$ for all
    $v,w \in V$;

4.  (**positivity:**) $\langle v,v \rangle$ is a real number satisfying
    $\langle v,v
          \rangle \geq 0$ for all $v \in V$;

5.  (**definiteness:**) $\langle v,v \rangle = 0$ if and only if
    $v = \vec{0}$ for all $v\in V$.

A vector space $V$ with an inner product is called an ***inner product
space***.
:::

Inner products are, in some sense, a generalisation of the notion of the
**angle** between two vectors.

::: {.example}
The vector space $\mathbb{R}^{n}$ of column vectors of real numbers is
an inner product space with respect to the usual ***dot product***:
$$\left\langle \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix},
    \begin{pmatrix} y_1 \\ y_2 \\ \vdots \\ y_n \end{pmatrix} \right\rangle =
    \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} \cdot
    \begin{pmatrix} y_1 \\ y_2 \\ \vdots \\ y_n \end{pmatrix} = \sum_{i=1}^{n}
    x_{i}y_{i}.$$ Note that if
$\vec{v} = \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n
  \end{pmatrix}$, then
$$\langle \vec{v}, \vec{v} \rangle = \sum_{i=1}^{n} x_{i}^{2}$$ and from
this [Definition 11.2.1]({{< ref "11-inner-products#defn-inner-product" >}}) (4) follows immediately.
:::

::: {.example}
The vector space $\mathbb{C} ^ n$ is an inner product space with respect
to
$$\left\langle \begin{pmatrix} z_1 \\ z_2 \\ \vdots \\ z_n \end{pmatrix},
    \begin{pmatrix} w_1 \\ w_2 \\ \vdots \\ w_n \end{pmatrix} \right\rangle =
    \sum_{i=1}^{n} z_{i} \bar{w}_{i}.$$ Note that if
$\vec{v} = \begin{pmatrix} z_1 \\ z_2 \\ \vdots \\ z_n
  \end{pmatrix}$, then
$$\langle \vec{v}, \vec{v} \rangle = \sum_{i=1}^{n} z_{i}
    \bar{z}_{i} = \sum_{i=1}^{n} \mathopen{|}z_{i}\mathclose{|}^{2}.$$
:::

::: {.example}
[]{#ex-cont-inner-product label="ex-cont-inner-product"} If $a < b$, the set $C[a,b]$ of
continuous functions $f :
  [a,b] \to \mathbb{R}$ is a real vector space when we define
$$\begin{aligned}
    (f+g)(x)      & = f(x) + g(x)       \\
    (\alpha f)(x) & = \alpha \cdot f(x)
  \end{aligned}$$ for $f,g \in C[a,b]$ and $\alpha \in \mathbb{R}$. In
fact, $C[a,b]$ is an inner product space when we define
$$\langle f,g \rangle = \int_{a}^{b} f(x)g(x) \, \mathrm{d} x.$$ Since
$f(x)^{2} \geq 0$ for all $x$, we have
$$\langle f,f \rangle = \int_{a}^{b} f(x)^{2} \, \mathrm{d} x \geq 0.$$
:::

::: {.example}
The space $\mathcal{P}_{n}$ of real polynomials of degree at most $n$ is
a real vector space of dimension $n+1$. It becomes an inner product
space by inheriting the inner product from
[Example 11.2.4]({{< ref "11-inner-products#ex-cont-inner-product" >}}):
$$\langle f,g \rangle = \int_{0}^{1} f(x) g(x) \, \mathrm{d} x$$ for
real polynomials $f(x),g(x) \in \mathcal{P}_{n}$.

Similarly, the space $\mathbb{C}[x]$ of polynomials
$$f(x) = \alpha_{n} x^{n} + \alpha_{n-1} x^{n-1} + \dots +
    \alpha_{1} x + \alpha_{0}$$ where
$\alpha_{0}, \alpha_{1}, \dots, \alpha_{n} \in \mathbb{C}$ becomes an
inner product space when we define
$$\langle f,g \rangle = \int_{0}^{1} f(x) \overline{g(x)} \, \mathrm{d} x$$
where $$\overline{f(x)} = \bar{\alpha}_{n} x^{n} + \bar{\alpha}_{n-1}
    x^{n-1} + \dots + \bar{\alpha}_{1} x + \bar{\alpha}_{0}.$$
:::

::: {.lemma}
Let $V$ be an inner product space with inner product $\langle \cdot,
    \cdot \rangle$. Then

1.  $\langle v,\alpha w \rangle = \bar{\alpha} \langle v,w
                \rangle$ for all $v,w \in V$ and $\alpha \in F$;

2.  $\langle u, v + w\rangle = \langle u, v\rangle  + \langle u, w\rangle$.
:::

::: {.proof}
*Proof.* **(1).**
$\langle v,\alpha w \rangle = \overline{\langle \alpha w,v \rangle} =
    \overline{\alpha \langle w,v \rangle} = \bar{\alpha}
    \overline{\langle w,v \rangle} = \bar{\alpha} \langle v,w \rangle.$

**(2).** $\langle u, v + w\rangle = \overline{\langle v + w, u\rangle}
                           = \overline{\langle v, u\rangle 
                             + \langle w, u \rangle}
                             = \overline{\langle v, u\rangle} 
                             + \overline{\langle w, u \rangle}
                             = \langle u, v \rangle + \langle u, w \rangle$. ◻
:::

## Norms

::: {.defn}
Let $V$ be an inner product space with inner
product $\langle \cdot, \cdot
  \rangle$. Then the ***norm*** (associated to the inner product) is the
function $\|\cdot\| : V \to \mathbb{R}$ defined by
$$\|v\| = \sqrt{\langle v,v \rangle}.$$
:::

Since $\langle v, v \rangle \geq 0$ for all $v\in V$, it follows that we
can always take the square root of this value, and obtain a real number.

If $u$ and $v$ are vectors in an inner product space $V$, then $\|u\|$
can be thought of, in some sense, the **length** of $u$ and $\|u - v\|$
can be thought of as the **distance** between $u$ and $v$. However, it
isn't really clear from the definition that $\|u - v\|$ satisfies the
usual properties that you'd expect of a notion of **distance**. In
particular, any reasonable notion of distance ought to satisfy:

1.  **identity of indiscernibles:** $\|u - v\| = 0$ if and only if
    $u = v$;

2.  **symmetry:** $\|u - v\| = \|v - u\|$;

3.  **triangle inequality:** $\|u - v\| \leq \|u - w\| + \|w - v\|$;

for all $u, v, w\in V$.

Symmetry $\|u - v\| = \|v - u\|$ follows immediately from additivity of
the inner product and the definition of the norm.

The triangle inequality essentially says that the distance from $u$ to
$v$ is not less than the distance from $u$ to some intermediate vector
$w$ plus the distance from $w$ to $v$. The triangle inequality is the
hardest of these three conditions to verify, and is the subject of the
remainder of this section.

::: {.lemma}
[]{#lemma-norm-elementary label="lemma-norm-elementary"} Let $V$ be an inner product space with
inner product $\langle \cdot,
    \cdot \rangle$, let $v\in V$, and $\alpha\in F$. Then

1.  $\|\alpha v\| = \|\alpha\| \cdot \|v\|$;

2.  $\|v\| > 0$ if and only if $v \neq \vec{0}$;

3.  $\|v\| = 0$ if and only if $v = \vec{0}$.
:::

::: {.proof}
*Proof.* **(1).**
$\|\alpha v\|^{2} = \langle \alpha v,\alpha v \rangle = \alpha
    \langle v,\alpha v \rangle = \alpha \bar{\alpha} \langle v,v \rangle
    = \|\alpha\|^{2} \|v\|^{2}$ and taking square roots gives the
result.

**(2).** If $\|v\| = \langle v,v \rangle  > 0$, then $v \neq
  \vec{0}$ by positivity (part (4) of the definition of inner products).
Conversely, if $v\neq \vec{0}$, then $\|v\| =  \langle
  v,v \rangle  > 0$, by definiteness (part (5) of the definition of
inner products).

**(3).** This follows immediately from part (2). ◻
:::

By
[Lemma 11.3.2]({{< ref "11-inner-products#lemma-norm-elementary" >}})(3), if $u, v\in V$ are arbitrary,
then $\|u - v\| = 0$ if and only if $u - v = \vec{0}$ if and only if
$u = v$. Hence we've established identity of indiscernibles for norms.

::: {.thm}
Let $V$ be an inner product space with inner product $\langle
    \cdot,\cdot \rangle$. Then $$\|\langle u,v \rangle\| \leq
    \|u\| \cdot \|v\|$$ for all $u,v \in V$.
:::

::: {.proof}
*Proof.* If $v = \vec{0}$, then
$$\langle u,v \rangle = \langle u,\vec{0} \rangle = \langle
    u,0\cdot\vec{0}\rangle = 0 \langle u,\vec{0} \rangle = 0.$$ Hence
$\|\langle u,v \rangle\| =
  \|0\| = 0$ and, since $\|v\|
  = 0$, it follows that
$$\|\langle u,v \rangle\| = 0 = \|u\| \cdot \|v\|.$$

In the remainder of the proof we assume $v \neq \vec{0}$. If $\alpha$ is
a scalar and $w = u + \alpha v$, then $$\begin{aligned}
    0 \leq \langle w,w \rangle & = \langle u+\alpha v, u+\alpha v \rangle \\
                               & = \langle u, u + \alpha v \rangle + \langle
                                   \alpha v, u + \alpha v\rangle \\
                               & = \langle u,u \rangle + \alpha \langle v,u \rangle + \bar{\alpha}
    \langle u,v \rangle + \alpha \bar{\alpha} \langle v,v \rangle                                  \\
                               & = \|u\|^{2} + \alpha \overline{\langle u,v \rangle} +
    \bar{\alpha} \langle u,v \rangle + \|\alpha\|^{2} \|v\|^{2}.
  \end{aligned}$$ Setting $\alpha = -\langle u,v \rangle / \|v\|^{2}$,
we deduce that $$\begin{aligned}
    0 & \leq & \|u\|^{2} - \frac{ \langle u,v \rangle
      \overline{\langle u,v \rangle} }{ \|v\|^{2} } - \frac{
      \overline{\langle u,v \rangle} \langle u,v \rangle
      }{\|v\|^{2}} + \frac{\| \langle u,v \rangle
  \|^{2}}{\|v\|^{4}} \|v\|^{2}                                \\
       & = &
      \|u\|^{2} - \frac{|\langle u, v\rangle| ^ 2}{ \|v\|^{2} } 
                   - \frac{|\langle u, v\rangle| ^ 2}{ \|v\|^{2} }
                   + \frac{|\langle u, v\rangle| ^ 2}{ \|v\|^{2} }\\
      & = & \|u\|^{2} - \frac{ \|\langle u,v \rangle\|^{2} }{
      \|v\|^{2} },
  \end{aligned}$$ so
$$\| \langle u,v \rangle \|^{2} \leq \|u\|^{2} \|v\|^{2}$$ and taking
square roots gives the result. ◻
:::

::: {.cor}
[]{#cor-triangle label="cor-triangle"} Let $V$ be an
inner product space. Then $$\|u+v\| \leq \|u\| + \|v\|$$ for all
$u,v \in V$.
:::

::: {.proof}
*Proof.* $$\begin{aligned}
    \|u+v\|^{2} & = \langle u+v, u+v \rangle                                                                         \\
                   & = \langle u,u \rangle + \langle u,v \rangle + \langle v,u \rangle
    + \langle v,v \rangle                                                                                               \\
                   & = \|u\|^{2} + \langle u,v \rangle + \overline{\langle u,v
    \rangle} + \|v\|^{2}                                                                                             \\
                   & = \|u\|^{2} + 2 \Re \langle u,v \rangle + \|v\|^{2}                                          \\
                   & \leq \|u\|^{2} + 2 \| \langle u,v \rangle \| + \|v\|^{2}
    \\
                   & \leq \|u\|^{2} + 2 \|u\| \cdot \|v\| + \|v\|^{2}
                   &                                                                      & \text{(by Cauchy-Schwarz)} \\
                   & = ( \|u\| + \|v\| )^{2}
  \end{aligned}$$ and taking square roots gives the result. ◻
:::

If $u, v, w\in V$, then
$$\|u - v\| = \|(u - w) + (w - v)\| \leq \|u - w\| + \|w - v\|$$ and so
[Corollary 11.3.4]({{< ref "11-inner-products#cor-triangle" >}}) implies that norms satisfy the triangle
inequality from the start of this section.

The triangle inequality is a fundamental observation that tells us we
can use the norm to measure distance on an inner product space in the
same way that modulus $\|x\|$ is used to measure distance on
$\mathbb{R}$ or $\mathbb{C}$. We can then perform analysis and speak of
continuity and convergence. This topic is addressed in greater detail in
the study of Functional Analysis.

## Orthogonality and orthonormal bases

::: {.defn}
Let $V$ be an inner product space and let $v, w \in V$. Then $v$ and $w$
are said to be ***orthogonal*** if $\langle v,w \rangle = 0$. A
set $\mathscr{A}$ of vectors is ***orthogonal*** if every pair of
vectors in $\mathscr{A}$ are orthogonal.
:::

Note that $\vec{0}$ is orthogonal to every vector, and it is the only
vector that's orthogonal to itself.

::: {.defn}
A set $\mathscr{A}$ of vectors is ***orthonormal*** if it is orthogonal
and $\|v\| = 1$ for every $v\in \mathscr{A}$. An ***orthonormal basis***
for an inner product space $V$ is a basis which is itself an orthonormal
set.
:::

A reformulation of the definition of orthonormal, is that the set
$\mathscr{A} = \{
v_{1},v_{2},\dots,v_{k} \}$ is orthonormal if
$$\langle v_{i},v_{j} \rangle = \delta_{ij} = \begin{cases}
    0 & \text{if $i \neq j$} \\
    1 & \text{if $i = j$}.
  \end{cases}$$

::: {.example}
The standard basis $\mathscr{E} = \{ \vec{e}_{1}, \vec{e}_{2}, \dots,
  \vec{e}_{n} \}$ is an orthonormal basis for $\mathbb{R}^{n}$ (with the
dot product):
$$\langle \vec{e}_{i},\vec{e}_{j} \rangle = \vec{e}_{i} \cdot \vec{e}_{j}
    = \begin{cases}
      0 & \text{if $i \neq j$} \\
      1 & \text{if $i = j$}.
    \end{cases}$$
:::

::: {.example}
Consider the inner product space $C[-\pi,\pi]$, consisting of all
continuous functions $f : [-\pi,\pi] \to \mathbb{R}$, with inner product
$$\langle f,g \rangle = \int_{-\pi}^{\pi} f(x) g(x) \, \mathrm{d} x.$$
Define $$\begin{aligned}
    e_{0}(x) & = \frac{1}{\sqrt{2\pi}}     \\
    e_{n}(x) & = \frac{1}{\surd\pi}\cos nx \\
    f_{n}(x) & = \frac{1}{\surd\pi}\sin nx
  \end{aligned}$$ for $n = 1$, $2$, .... These functions (without the
scaling) were studied in MT2501. We have the following facts
$$\begin{aligned}
    \langle e_{m}, e_{n} \rangle & = 0 &  & \text{if $m \neq n$,}   \\
    \langle f_{m}, f_{n} \rangle & = 0 &  & \text{if $m \neq n$,}   \\
    \langle e_{m}, f_{n} \rangle & = 0 &  & \text{for all $m$,~$n$}
  \end{aligned}$$ and $$\|e_{n}\| = \|f_{n}\| = 1 \qquad
    \text{for all $n$}.$$ (The reason for the scaling factors is to
achieve unit norm for each function.) The topic of Fourier series
relates to expressing functions as linear combinations of the
orthonormal set $$\{e_{0}, e_{n}, f_{n} : n = 1, 2, 3, \dots \}.$$
:::

::: {.thm}
[]{#thm:orthog-linindep label="thm:orthog-linindep"} An orthogonal set of non-zero vectors is
linearly independent.
:::

::: {.proof}
*Proof.* Let $\mathscr{A} = \{ v_{1},v_{2},\dots,v_{k} \}$ be an
orthogonal set of non-zero vectors. Suppose that
$$\sum_{i=1}^{k} \alpha_{i} v_{i} = \vec{0}.$$ If
$j \in \{1, 2, \ldots, k\}$ is arbitrary, then, by additivity of the
inner product, $$0 = \biggl\langle \sum_{i=1}^{k} \alpha_{i}v_{i}, v_{j}
    \biggr\rangle = \sum_{i=1}^{k} \alpha_{i} \langle v_{i},v_{j}
  \rangle = \alpha_{j} \|v_{j}\|^{2},$$ since by assumption
$\langle v_{i},v_{j} \rangle = 0$ for $i \neq j$. By assumption,
$v_{j} \neq \vec{0}$, and so $\|v_{j}\| \neq
  0$. Hence $\alpha_{j} = 0$ and, since $j$ was arbitrary,
$\mathscr{A}$ is linearly independent. ◻
:::

::: {.thm}
[]{#thm:Gram-Schmidt label="thm:Gram-Schmidt"}
Suppose that $V$ is a finite-dimensional inner product space with basis
$\{
    v_{1},v_{2},\dots,v_{n} \}$. The following procedure constructs an
orthonormal basis $\{ e_{1},e_{2},\dots,e_{n} \}$ for $V$:

##### Step 1:

Define $e_{1} = \frac{1}{\|v_{1}\|} v_{1}$.

##### Step $k$:

Suppose $e_{1},e_{2},\ldots,e_{k-1}$ have been constructed. Define
$$w_{k} = v_{k} - \sum_{i=1}^{k-1} \langle v_{k},e_{i} \rangle e_{i}\qquad
    \text{and} \qquad e_{k} = \frac{1}{\|w_{k}\|} w_{k}.$$
:::

::: {.proof}
*Proof.* We claim that for every $k\in \{1, \ldots, n\}$ the set $\{
  e_{1},e_{2},\dots,e_{k} \}$ is orthonormal and that
$$e_{1},e_{2},\dots,e_{k}\in 
  \operatorname{Span}(v_{1},v_{2},\dots,v_{k}).$$

##### Step 1:

Since $v_{1}$ is a non-zero vector, $\|v_{1}\|
    \neq 0$ and hence $e_{1} = \frac{1}{\|v_{1}\|}v_{1}$ is defined.

$$\|e_{1}\| = \left\|
  \frac{1}{\|v_{1}\|} v_{1} \right\| =
  |\frac{1}{\|v_{1}\|}| \cdot
  \|v_{1}\| = \frac{1}{\|v_{1}\|}
  \cdot \|v_{1}\| = 1.$$ There is no orthogonality to check in the set
$\{e_1\}$, since it contains a single vector. Hence $\{ e_{1} \}$ is an
orthonormal set and by definition
$e_{1} \in \operatorname{Span}(v_{1})$.

##### Step $k$:

Suppose that $\{
    e_{1},e_{2},\dots,e_{k-1} \}$ is an orthonormal set contained in
$\operatorname{Span}(v_{1},v_{2},\dots,v_{k-1})$ for some $k \geq 2$.
Set $$w_{k} = v_{k} - \sum_{i=1}^{k-1} \langle v_{k},e_{i} \rangle.$$ If
$w_{k} = \vec{0}$, then $$\begin{aligned}
    v_{k} = \sum_{i=1}^{k-1} \langle v_{k},e_{i} \rangle e_{i} \in
    \operatorname{Span}(e_{1},\dots,e_{k-1}) \subseteq
    \operatorname{Span}(v_{1},\dots,v_{k-1}),
  \end{aligned}$$ which contradicts the assumption that
$\{ v_{1},v_{2},\dots,v_{n} \}$ is linearly independent. Thus
$w_{k} \neq \vec{0}$ and $e_{k} =
\frac{1}{\|w_{k}\|}w_{k}$ is defined.

By construction, $\|e_{k\|} = 1$ and $$\begin{aligned}
    e_{k}  = \frac{1}{\|w_{k}\|} \biggl( v_{k} - \sum_{i=1}^{k-1}
    \langle v_{k},e_{i} \rangle e_{i} \biggr)                         
    \in \operatorname{Span}( e_{1}, \dots, e_{k-1}, v_{k})                 
    \subseteq \operatorname{Span}( v_{1}, \dots, v_{k-1}, v_{k}).
  \end{aligned}$$ It remains to check that $e_{k}$ is orthogonal
to $e_{j}$ for $j =
    1$, $2$, ..., $k-1$. We calculate $$\begin{array}{rcll}
      \langle w_{k},e_{j} \rangle & = & \biggl\langle v_{k} -
    \sum_{i=1}^{k-1} \langle v_{k},e_{i} \rangle e_{i} , e_{j} \biggr\rangle
    \\
                                  & = & \langle v_{k},e_{j} \rangle - \sum_{i=1}^{k-1} \langle
      v_{k},e_{i} \rangle \langle e_{i},e_{j} \rangle & \text{(by additivity
      and homogeneity)}
    \\
                                & = &\langle v_{k},e_{j} \rangle - \langle v_{k},e_{j} \rangle
                                                    \|e_{j}\|^{2}            
                                & \text{(by assumption that } \{e_1, e_2,
                                \ldots, e_{k - 1}\} \text{ is orthogonal)} \\
                                & = & \langle v_{k},e_{j} \rangle - \langle
      v_{k},e_{j} \rangle & (\|e_j\| = 1) \\
                                & = & 0.
  \end{array}$$ Hence $$\langle e_{k}, e_{j} \rangle = \left\langle
    \frac{1}{\|w_{k}\|}w_{k}, e_{j} \right\rangle =
    \frac{1}{\|w_{k}\|} \langle w_{k}, e_{j} \rangle = 0$$ for
$j = 1$, $2$, ..., $k-1$.

We conclude that $\{ e_{1},e_{2},\dots,e_{n} \}$ is an orthonormal set.
[Theorem 11.4.5]({{< ref "11-inner-products#thm:orthog-linindep" >}}) tells us that
$\{ e_{1},e_{2},\dots,e_{n} \}$ is linearly independent and hence a
basis for $V$ (since $\dim V = n$). ◻
:::

::: {.exampjupyter}
Consider $\mathbb{R}^{3}$ with the usual inner product. Find an
orthonormal basis for the subspace $U$ spanned by the vectors
$$\vec{v}_{1} = \begin{pmatrix}
      1 \\
      0 \\
      -1 \\
    \end{pmatrix} \qquad \text{and} \qquad
    \vec{v}_{2} = \begin{pmatrix}
      2 \\
      3 \\
      1 \\
    \end{pmatrix}.$$
:::

::: {.solution}
We apply the Gram--Schmidt Process to $\{\vec{v}_{1},\vec{v}_{2}\}$.
$$\|\vec{v}_{1}\|^{2} = \left\langle \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix},
    \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix} \right\rangle = 1^{2} + (-1)^{2} = 2.$$
Take $$\vec{e}_{1} = \frac{1}{\|\vec{v}_{1}\|} \vec{v}_{1} =
    \frac{1}{\surd2} \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix}.$$
Now $$\langle \vec{v}_{2}, \vec{e}_{1} \rangle = \left\langle
    \begin{pmatrix} 2 \\ 3 \\ 1 \\ \end{pmatrix}, 
    \frac{1}{\surd2}\begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix}
    \right\rangle 
    = \frac{1}{\surd2} (2-1) 
    = \frac{1}{\surd2}.$$ Put $$\begin{aligned}
    \vec{w}_{2} & = \vec{v}_{2} - \langle \vec{v}_{2}, \vec{e}_{1}
    \rangle \vec{e}_{1}                                                           \\
                & = \begin{pmatrix} 2 \\ 3 \\ 1 \\ \end{pmatrix} - \frac{1}{\surd2} \cdot \frac{1}{\surd2}
    \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix}                                                           \\
                 & = \begin{pmatrix} 2 \\ 3 \\ 1 \\ \end{pmatrix} - \begin{pmatrix} 1/2 \\ 0 \\ -1/2 \\ \end{pmatrix} =
    \begin{pmatrix} 3/2 \\ 3 \\ 3/2 \\ \end{pmatrix}.
  \end{aligned}$$ So
$$\|\vec{w}_2\|^{2} = (3/2)^{2} + 3^{2} + (3/2)^{2} = \frac{27}{2}$$ and
$$\|\vec{w}_2\| = \frac{3\surd3}{\surd2}.$$ Take
$$\vec{e}_{2} = \frac{1}{\|\vec{w}_2\|} \vec{w}_{2} =
    \sqrt{\frac{2}{3}} \begin{pmatrix} 1/2 \\ 1 \\ 1/2 \\ \end{pmatrix} =
    \frac{1}{\surd6}
    \begin{pmatrix} 1 \\ 2 \\ 1 \\ \end{pmatrix}.$$ Thus
$$\left\{ \frac{1}{\surd2}\begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix},
    \frac{1}{\surd6}\begin{pmatrix} 1 \\ 2 \\ 1 \\ \end{pmatrix} \right\}$$
is an orthonormal basis for $U$.
:::

::: {.exampjupyter}
We can define an inner product on the space $\mathcal{P}$ of real
polynomials $f(x)$ by
$$\langle f,g \rangle = \int_{0}^{\infty} f(x)g(x)\mathrm{e}^{-x} \,
    \mathrm{d} x.$$ The ***Laguerre polynomials*** form the orthonormal
basis for $\mathcal{P}$ that is produced when we apply the Gram--Schmidt
process to the standard basis $$\{ 1, x, x^{2}, x^{3}, \dots \}$$ of
monomials.

*Determine the first three Laguerre polynomials.*
:::

::: {.solution}
We apply the Gram--Schmidt process to the basis $\{ 1, x, x^{2} \}$ for
the inner product space $\mathcal{P}_{2}$, of polynomials of degree at
most $2$, with inner product as above. We shall make use of the fact
(determined by induction and integration by parts) that
$$\int_{0}^{\infty} x^{n}\mathrm{e}^{-x} \, \mathrm{d} x = n!$$

Define $f_{i}(x) = x^{i}$ for $i = 0$, $1$, $2$. Then
$$\|f_{0}\|^{2} = \int_{0}^{\infty} f_{0}(x)^{2}
    \mathrm{e}^{-x} \,
    \mathrm{d} x = \int_{0}^{\infty} \mathrm{e}^{-x} \, \mathrm{d} x = 1,$$
so $$L_{0}(x) = \frac{1}{\|f_{0}\|} f_{0}(x) = 1.$$

We now calculate $L_{1}$. First
$$\langle f_{1},L_{0} \rangle = \int_{0}^{\infty} f_{1}(x) L_{0}(x)
    \mathrm{e}^{-x} \, \mathrm{d} x = \int_{0}^{\infty} x \mathrm{e}^{-x} \,
    \mathrm{d} x = 1.$$ The Gram-Schmidt process says we first put
$$w_{1}(x) = f_{1}(x) - \langle f_{1},L_{0} \rangle L_{0}(x) = x - 1.$$
Now $$\begin{aligned}
  \|w_{1}\|^{2} & = \int_{0}^{\infty} w_{1}(x)^{2} \mathrm{e}^{-x}
    \, \mathrm{d} x                                                                         \\
                     & = \int_{0}^{\infty} (x^{2}\mathrm{e}^{-x} - 2x\mathrm{e}^{-x} +
    \mathrm{e}^{-x}) \, \mathrm{d} x                                                        \\
                     & = 2 - 2 + 1 = 1.
  \end{aligned}$$ Hence
$$L_{1}(x) = \frac{1}{\|w_{1}\|} w_{1}(x) = x-1.$$

In the next step of the Gram--Schmidt process, we calculate
$$\langle f_{2},L_{0} \rangle = \int_{0}^{\infty} x^{2}
    \mathrm{e}^{-x} \, \mathrm{d} x = 2$$ and $$\begin{aligned}
    \langle f_{2},L_{1} \rangle & = \int_{0}^{\infty} x^{2}(x-1)
    \mathrm{e}^{-x} \, \mathrm{d} x                                                       \\
                                & = \int_{0}^{\infty} (x^{3} \mathrm{e}^{-x} - x^{2}
    \mathrm{e}^{-x}) \, \mathrm{d} x                                                      \\
                                & = 3! - 2! = 6-2 = 4.
  \end{aligned}$$ So we put $$\begin{aligned}
    w_{2}(x) & = f_{2}(x) - \langle f_{2},L_{0} \rangle L_{0}(x) -
    \langle f_{2},L_{1} \rangle L_{1}(x)                           \\
             & = x^{2} - 4(x-1) - 2                                \\
             & = x^{2} - 4x + 2.
  \end{aligned}$$ Now $$\begin{aligned}
  \|w_{2}\|^{2} & = \int_{0}^{\infty} w_{2}(x)^{2} \mathrm{e}^{-x}
    \, \mathrm{d} x                                                                  \\
                     & = \int_{0}^{\infty} (x^{4} - 8x^{3} + 20x^{2} - 16x + 4)
    \mathrm{e}^{-x} \, \mathrm{d} x                                                  \\
                     & = 4! - 8\cdot 3! + 20\cdot2! - 16 + 4                    \\
                     & = 4.
  \end{aligned}$$ Hence we take
$$L_{2}(x) = \frac{1}{\|w_{2}\|} w_{2}(x) = \textstyle\frac{1}{2}(x^{2} - 4x + 2).$$

Similar calculations can be performed to determine $L_{3}$,
$L_{4}$, ..., but they become increasingly more complicated (and
consequently less suitable for presenting on a whiteboard!).
:::

::: {.examplejupyter}
Define an inner product on the space $\mathcal{P}$ of real polynomials
by $$\langle f,g \rangle = \int_{-1}^{1} f(x) g(x) \, \mathrm{d} x.$$
Applying the Gram--Schmidt process to the monomials $\{ 1, x, x^{2},
    x^{3}, \dots \}$ produces an orthonormal basis (with respect to this
inner product). The polynomials produced are scalar multiples of the
***Legendre polynomials***: $$\begin{aligned}
    P_{0}(x) & = 1               \\
    P_{1}(x) & = x               \\
    P_{2}(x) & = \textstyle\frac{1}{2}(3x^{2}-1) \\
             & \vdots
  \end{aligned}$$ The set $\{P_{n}(x) : n = 0,1,2,\dots\}$ of Legendre
polynomials is *orthogonal*, but *not* orthonormal. This is the reason
why the Gram--Schmidt process only produces a scalar multiple of them.
The scalars appearing are determined by the norms of the $P_{n}$ with
respect to this inner product.

For example, $$\|P_{0}\|^{2} 
    = \int_{-1}^{1} P_{0}(x)^{2} \, \mathrm{d} x 
    = \int_{-1}^{1} \mathrm{d} x 
    = 2,$$ so the polynomial of unit norm produced will
be $\frac{1}{\surd2}P_{0}(x)$. Similar calculations (of increasing
length) can be performed for the other polynomials.
:::

::: {.examplejupyter}
The ***Hermite polynomials*** form an orthogonal set in the
space $\mathcal{P}$ when we endow it with the following inner product
$$\langle f,g \rangle = \int_{-\infty}^{\infty} f(x)g(x)
    \mathrm{e}^{-x^{2}/2} \, \mathrm{d} x.$$ Again the orthonormal basis
produced by applying the Gram--Schmidt process to the monomials are
scalar multiples of the Hermite polynomials.
:::

## Orthogonal complements

::: {.defn}
Let $V$ be an inner product space. If $U$ is a subspace of $V$, the
***orthogonal complement*** to $U$ is
$$U^{\perp} = \{ v \in V  : \text{$\langle v,u \rangle = 0$ for
        all~$u \in U$}\}.$$
:::

Thus $U^{\perp}$ consists of those vectors which are orthogonal to every
single vector in $U$.

::: {.lemma}
Let $V$ be an inner product space and $U$ be a subspace of $V$. Then

1.  $U^{\perp}$ is a subspace of $V$, and

2.  $U \cap U^{\perp} = \{\vec{0}\}$.
:::

::: {.proof}
*Proof.* **(1).** It suffices to check the Subspace Criteria. Since
$\langle \vec{0},u \rangle
  = 0$ for all $u \in U$, it follows that $\vec{0} \in U^{\perp}$ and so
$U ^
  {\perp} \not= \varnothing$. If $v, w \in U^{\perp}$ and
$\alpha \in F$, then
$$\langle v+w, u \rangle = \langle v,u \rangle + \langle w,u \rangle =
    0 + 0 = 0$$ and
$$\langle \alpha v, u \rangle = \alpha \langle v,u \rangle = \alpha
    \cdot 0 = 0$$ for all $u \in U$. So we deduce $v+w \in U^{\perp}$
and $\alpha v
    \in U^{\perp}$. This shows that $U^{\perp}$ is a subspace.

**(2).** Let $u \in U \cap U^{\perp}$. Then
$\|u\|^{2} = \langle u,u \rangle = 0$ (since $u$ is, in particular,
orthogonal to itself). Hence $u = \vec{0}$ (by definiteness in the
definition of an inner product). ◻
:::

::: {.thm}
[]{#thm:orthogsum label="thm:orthogsum"} Let $V$ be a
finite-dimensional inner product space and $U$ be a subspace of $V$.
Then $V = U \oplus U^{\perp}$.
:::

::: {.proof}
*Proof.* We already know that $U \cap U^{\perp} = \{\vec{0}\}$, so it
remains to show $V = U + U^{\perp}$.

Let $\{ v_{1}, v_{2}, \dots, v_{k} \}$ be a basis for $U$. Extend
$\{ v_{1}, v_{2}, \dots, v_{k} \}$ to a basis
$$\mathscr{B} = \{ v_{1}, v_{2}, \dots, v_{k}, w_{k+1}, \dots, w_{n} \}$$
for $V$. Applying the Gram--Schmidt process to $\mathscr{B}$, we produce
an orthonormal basis $\mathscr{E} = \{ e_{1}, e_{2}, \dots,
    e_{n} \}$ for $V$. By construction,
$$\{ e_{1}, e_{2}, \dots, e_{k} \} \subseteq \operatorname{Span}(v_{1}, v_{2},
    \dots, v_{k}) = U$$ and, since
$\{ e_{1}, e_{2}, \dots, e_{k} \}  \subseteq \mathscr{E}$ is a basis for
$V$, $\{e_{1},e_{2},\dots,e_{k} \}$ is linearly independent. Therefore,
since $k = \dim U$, $\{ e_{1},e_{2},\dots,e_{k} \}$ is a basis for $U$.

If $u \in U$ is arbitrary, then $u$ can be written uniquely as $u =
    \sum_{i=1}^{k} \alpha_{i}e_{i}$ for some scalars $\alpha_1, \ldots,
    \alpha_k$. So, if $j = k+1$, $k+2$, ..., $n$, then
$$\langle u,e_{j} \rangle = \biggl\langle \sum_{i=1}^{k}
    \alpha_{i}e_{i}, e_{j} \biggr\rangle = \sum_{i=1}^{k} \alpha_{i}
    \langle e_{i},e_{j} \rangle = 0.$$ In other words,
$e_{k+1},e_{k+2},\dots,e_{n} \in U^{\perp}$.

Finally, if $v \in V$, then we can write
$$v = \beta_{1}e_{1} + \dots + \beta_{k}e_{k} + \beta_{k+1}e_{k+1} +
    \dots + \beta_{n}e_{n}$$ for some scalars $\beta_{1}$, $\beta_{2}$,
..., $\beta_{n}$ and
$$\beta_{1}e_{1} + \dots + \beta_{k}e_{k} \in U \qquad \text{and}
    \qquad \beta_{k+1}e_{k+1} + \dots + \beta_{n}e_{n} \in U^{\perp}.$$
This shows that every vector in $V$ is the sum of a vector in $U$ and
one in $U^{\perp}$, so $$V = U + U^{\perp},$$ as required to complete
the proof. ◻
:::

Recall from
[Section 6.2]({{< ref "11-inner-products#section-projection-maps" >}}) that associated to every direct sum
are (at least) two projection maps. In particular, if $V$ is any vector
space and $U$ is a subspace of $V$, then $V = U \oplus U ^ {\perp}$ and
so there is a projection $P_{U} : V \to V$ onto $U$. The projection
$P_U$ is defined by $$P_{U}(v) = u$$ where $v = u+w$ is the unique
decomposition of $v$ with $u \in U$ and $w \in U^{\perp}$.

::: {.thm}
Let $V$ be a finite-dimensional inner product space and $U$ be a
subspace of $V$. Let $P_{U}:V \to V$ be the projection map onto $U$
associated to the direct sum decomposition $V = U \oplus
U^{\perp}$. If $v \in V$, then $\|v - P_{U}(v)\| \leq
  \|v - u\|$ for all $u \in U$. (In other words, $P_{U}(v)$ is the
closest vector in $U$ to $v$.)
:::

::: {.proof}
*Proof.* Since $V = U \oplus U^{\perp}$, we can write
$v = u_{0} + w_{0}$ where $u_{0} \in U$ and $w_{0} \in U^{\perp}$, so
that $P_{U}(v) = u_{0}$. Then if $u$ is any vector in $U$,
$$\begin{aligned}
  \|v-u\|^{2} & = \|v-u_{0}\| + (u_{0} - u)^{2} 
                   & (v - u = v-u_{0} + (u_{0} - u)) \\
                   & = \|w_{0}\| + (u_{0} - u)^{2}  & (v - u_0 = w_0) \\
                   & = \langle w_{0} + (u_{0}-u), w_{0} + (u_{0}-u) \rangle 
                   & (\text{definition of the norm}) \\
                   & = \langle w_{0},w_{0} \rangle 
                       + \langle w_{0},u_{0}-u \rangle 
                       + \langle u_{0}-u, w_{0} \rangle 
                       + \langle u_{0}-u, u_{0}-u \rangle 
                   & (\text{additivity})\\
                   & = \|w_{0}\|^{2} + \|u_{0} - u \|^{2} 
                   & \text{(since $w_{0}$ is orthogonal to $u_{0}-u \in U$)} \\
                   & \geq \|w_{0}\|^{2} 
                   & \text{(since $\|u_{0} - u\| \geq 0$)} \\
                   & = \|v - u_{0}\|^{2} \\
                   & = \|v - P_{U}(v)\|^{2}.
  \end{aligned}$$ Hence $\|v-u\| \geq \|v -
  P_{U}(v)\|$ for all $u \in U$. ◻
:::

::: {.exampjupyter}
Find the distance from the vector $\vec{w}_{0} =
  \begin{pmatrix}
    -1 \\
    5 \\
    1 \\
  \end{pmatrix}$ in $\mathbb{R}^{3}$ to the subspace
$$U = \operatorname{Span} \left( \begin{pmatrix}
        1 \\
        1 \\
        1 \\
      \end{pmatrix},
      \begin{pmatrix}
        0 \\
        1 \\
        -2 \\
    \end{pmatrix} \right).$$
:::

::: {.solution}
We need to find $U^{\perp}$, which must be a $1$-dimensional subspace
since $\mathbb{R}^{3} = U \oplus U^{\perp}$. We solve the condition
$\langle \vec{v},\vec{u} \rangle = 0$ for all $\vec{u} \in U$:
$$\left\langle \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}, \begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix} \right\rangle
    = \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} \cdot \begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix} = x+y+z$$
and
$$\left\langle \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ -2 \\ \end{pmatrix} \right\rangle
    = \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} \cdot \begin{pmatrix} 0 \\ 1 \\ -2 \\ \end{pmatrix} = y-2z.$$
Hence $$x+y+z = y-2z = 0.$$ Given arbitrary $z$, we take $y = 2z$ and
$x = -y-z = -3z$. Therefore
$$U^{\perp} = \left\{ \begin{pmatrix} -3z \\ 2z \\ z \\ \end{pmatrix} \;\middle|\; z \in \mathbb{R} \right\}
    = \operatorname{Span} \left( \begin{pmatrix} -3 \\ 2 \\ 1 \\ \end{pmatrix} \right).$$

The closest vector in $U$ to $\vec{w}_{0}$ is $P_{U}(\vec{w}_{0})$ where
$P_{U} : \mathbb{R}^{3} \to \mathbb{R}^{3}$ is the projection onto $U$
associated to $\mathbb{R}^{3} = U \oplus U^{\perp}$. To determine this
we solve
$$\vec{w}_{0} = \begin{pmatrix} -1 \\ 5 \\ 1 \\ \end{pmatrix} = \alpha \begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix} +
    \beta \begin{pmatrix} 0 \\ 1 \\ -2 \\ \end{pmatrix} + \gamma \begin{pmatrix} -3 \\ 2 \\ 1 \\ \end{pmatrix},$$
so $$\begin{aligned}
    \alpha \qquad\;\, - 3\gamma   & = -1  \\
    \alpha \;\; + \beta + 2\gamma & = 5  \\
    \alpha - 2\beta \;\; + \gamma & = 1. 
  \end{aligned}$$ Multiplying the second equation by $2$ and adding to
the third equation gives $$3\alpha + 5\gamma = 11.$$ Then multiplying
the first equation by $3$ and subtracting gives $$14\gamma = 14.$$ Hence
$\gamma = 1$,  $\alpha = -1 + 3\gamma = 2$ and $\beta = 5 -
    \alpha - 2\gamma = 1$. We conclude $$\begin{aligned}
    \vec{w}_{0} & = 2\begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix} + \begin{pmatrix} 0 \\ 1 \\ -2 \\ \end{pmatrix} +
    \begin{pmatrix} -3 \\ 2 \\ 1 \\ \end{pmatrix}                                           \\
                 & = P_{U}(\vec{w}_{0}) + \begin{pmatrix} -3 \\ 2 \\ 1 \\ \end{pmatrix}.
  \end{aligned}$$ We know $P_{U}(\vec{w}_{0})$ is the nearest vector
in $U$ to $\vec{w}_{0}$, so the distance of $\vec{w}_{0}$ to $U$ is
$$\|\vec{w}_{0}\| - P_{U}(\vec{w}_{0}) = \left\|
    \begin{pmatrix} -3 \\ 2 \\ 1 \\ \end{pmatrix} \right\| = \sqrt{(-3)^{2} + 2^{2} + 1^{2}} =
    \sqrt{14}.$$
:::

::: {.omittedexampjupyter}
Let $\langle \cdot, \cdot \rangle$ denote the usual inner product
on $\mathbb{R}^{4}$, namely
$$\langle \vec{u}, \vec{v} \rangle = \sum_{i=1}^{4} x_{i} y_{i}$$ for
$\vec{u} = \begin{pmatrix} x_{1} \\ x_{2} \\ x_{3} \\ x_{4}\end{pmatrix}$
and
$\vec{v} = \begin{pmatrix} y_{1} \\ y_{2} \\ y_{3} \\ y_{4}\end{pmatrix}$.

1.  Apply the Gram--Schmidt Process to the set
    $$\mathscr{A} = \left\{ \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}, \begin{pmatrix} 3 \\ 1 \\ -2 \\ 2 \end{pmatrix},
                \begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} \right\}$$
    to produce an orthonormal basis for $\mathbb{R}^{4}$.

2.  Let $U$ be the subspace of $\mathbb{R}^{4}$ spanned by
    $$\mathscr{B} = \left\{ \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}, \begin{pmatrix} 3 \\ 1 \\ -2 \\ 2 \end{pmatrix} \right\}.$$
    Find a basis for the orthogonal complement to $U$
    in $\mathbb{R}^{4}$.

3.  Find the vector in $U$ that is nearest
    to $\begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix}$.
:::

::: {.solution}
(1) Define
$$\vec{v}_{1} = \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}, \quad \vec{v}_{2} =
    \begin{pmatrix} 3 \\ 1 \\ -2 \\ 2 \end{pmatrix}, \quad \vec{v}_{3} = \begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix},
    \quad \vec{v}_{4} = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}.$$
We perform the steps of the Gram--Schmidt Process:

##### Step 1:

$$\|\vec{v_{1}}\|^{2} = 1^{2} + 1^{2} + (-1)^{2} + 1^{2} = 4,$$ so
$$\|\vec{v_{1}}\| = 2.$$ Take
$$\vec{e}_{1} = \frac{1}{\|\vec{v_{1}}\|} \vec{v}_{1} = \frac{1}{2}
    \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}.$$

##### Step 2:

$$\langle \vec{v}_{2}, \vec{e}_{1} \rangle = \frac{1}{2} \left\langle
    \begin{pmatrix} 3 \\ 1 \\ -2 \\ 2 \end{pmatrix}, \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} \right\rangle = \textstyle\frac{1}{2}
    (3+1+2+2) = 4.$$ Take
$$\vec{w}_{2} = \vec{v}_{2} - \langle \vec{v}_{2},\vec{e}_{1}
    \rangle \vec{e}_{1} = \begin{pmatrix} 3 \\ 1 \\ -2 \\ 2 \end{pmatrix} - 2 \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}
    = \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}.$$ Then
$$\|\vec{w_{2}}\|^{2} = 1^{2} + (-1)^{2} = 2,$$ so take
$$\vec{e}_{2} = \frac{1}{\|\vec{w_{2}}\|} \vec{w}_{2} =
    \frac{1}{\surd2} \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}.$$

##### Step 3:

$$\begin{aligned}
    \langle \vec{v}_{3}, \vec{e}_{1} \rangle & = \frac{1}{2}
    \left\langle \begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}
    \right\rangle = \textstyle\frac{1}{2} ( 2 - 4 -3 + 1) = -2                      \\
    \langle \vec{v}_{3}, \vec{e}_{2} \rangle & = \frac{1}{\surd2}
    \left\langle \begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}
    \right\rangle = {\textstyle\frac{1}{\surd2}} ( 2 + 4 + 0 + 0 ) =
    \frac{6}{\surd2} = 3\surd2.
  \end{aligned}$$ Take $$\begin{aligned}
    \vec{w}_{3} & = \vec{v}_{3} - \langle \vec{v}_{3}, \vec{e}_{1}
    \rangle \vec{e}_{1} - \langle \vec{v}_{3}, \vec{e}_{2} \rangle
    \vec{e}_{2}                                                       \\
                 & = \begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix} + 2 \cdot \frac{1}{2}
    \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} - 3\surd2 \cdot \frac{1}{\surd2}
    \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}                                              \\
                 & = \begin{pmatrix} 2 \\ -4 \\ 3 \\ 1 \end{pmatrix} + \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} - 3
    \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}
    = \begin{pmatrix} 0 \\ 0 \\ 2 \\ 2 \end{pmatrix}.
  \end{aligned}$$ Then $$\|\vec{w_{3}}\|^{2} = 2^{2} + 2^{2} = 8,$$ so
take $$\vec{e}_{3} = \frac{1}{\|\vec{w_{3}}\|} \vec{w}_{3} =
    \frac{1}{2\surd2}\vec{w}_{3} = \frac{1}{\surd2}\begin{pmatrix} 0 \\ 0 \\ 1 \\ 1 \end{pmatrix}.$$

##### Step 4:

$$\begin{aligned}
    \langle \vec{v}_{4}, \vec{e}_{1} \rangle & = \frac{1}{0}
    \left\langle \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix}
    \right\rangle = \textstyle\frac{1}{2}                                           \\
    \langle \vec{v}_{4}, \vec{e}_{2} \rangle & = \frac{1}{\surd2}
    \left\langle \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}
    \right\rangle = \frac{1}{\surd2}                                \\
    \langle \vec{v}_{4}, \vec{e}_{3} \rangle & = \frac{1}{\surd2}
    \left\langle \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 0 \\ 1 \\ 1 \end{pmatrix}
    \right\rangle = 0.
  \end{aligned}$$ Take $$\begin{aligned}
    \vec{w}_{4} & = \vec{v}_{4} - \langle \vec{v}_{4}, \vec{e}_{1}
    \rangle \vec{e}_{1} - \langle \vec{v}_{4}, \vec{e}_{2} \rangle
    \vec{e}_{2} - \langle \vec{v}_{4}, \vec{e}_{3} \rangle
    \vec{e}_{3}                                                                \\
                 & = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} - \frac{1}{2} \cdot \frac{1}{2}
    \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} - \frac{1}{\surd2} \cdot \frac{1}{\surd2}
    \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}                                                       \\
                 & = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} - \frac{1}{4} \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} -
    \frac{1}{2} \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}                                           \\
                 & = \begin{pmatrix} 1/4 \\ 1/4 \\ 1/4 \\ -1/4 \end{pmatrix}.
  \end{aligned}$$ Then
$$\|\vec{w_{4}}\|^{2} = {\textstyle \left(\frac{1}{4}\right)^{2} +
    \left(\frac{1}{4}\right)^{2} + \left(\frac{1}{4}\right)^{2} +
    \left(-\frac{1}{4}\right)^{2} } = \frac{1}{4},$$ so take
$$\vec{e}_{4} = \frac{1}{\|\vec{w_{4}}\|} \vec{w}_{4} =
    \frac{1}{2} \begin{pmatrix} 1 \\ 1 \\ 1 \\ -1 \end{pmatrix}.$$

Hence
$$\left\{ \frac{1}{2}\begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix},
    \frac{1}{\surd2}\begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix},
    \frac{1}{\surd2}\begin{pmatrix} 0 \\ 0 \\ 1 \\ 1 \end{pmatrix},
    \frac{1}{2}\begin{pmatrix} 1 \\ 1 \\ 1 \\ -1 \end{pmatrix} \right\}$$
is the orthonormal basis for $\mathbb{R}^{4}$ obtained by applying the
Gram--Schmidt Process to $\mathscr{A}$.

(2) In terms of the notation of (1),  $U =
    \operatorname{Span}(\vec{v}_{1},\vec{v}_{2})$. However, the method
of the Gram--Schmidt Process (see the proof of
[Theorem 11.4.6]({{< ref "11-inner-products#thm:Gram-Schmidt" >}})) shows that
$$\operatorname{Span}(\vec{e}_{1}, \vec{e}_{2}) 
    = \operatorname{Span}(\vec{v}_{1}, \vec{v}_{2}) = U.$$

If $\vec{v} = \alpha\vec{e}_{1} + \beta\vec{e}_{2} + \gamma\vec{e}_{3} +
  \delta\vec{e}_{4}$ is an arbitrary vector of $\mathbb{R}^{4}$
(expressed in terms of our orthonormal basis), then
$$\langle \vec{v}, \vec{e}_{1} \rangle = \alpha \qquad \text{and}
    \qquad \langle \vec{v}, \vec{e}_{2} \rangle = \beta.$$ Hence if
$\vec{v} \in U^{\perp}$, then in particular $\alpha = \beta = 0$, so
$U^{\perp} \subseteq \operatorname{Span}(\vec{e}_{3}, \vec{e}_{4})$.
Conversely, if $\vec{v} = \gamma\vec{e}_{3} + \delta\vec{e}_{4} \in
  \operatorname{Span}(\vec{e}_{3}, \vec{e}_{4})$, then
$$\langle \zeta\vec{e}_{1} + \eta \vec{e}_{2}, \gamma\vec{e}_{3} +
    \delta \vec{e}_{4} \rangle = 0$$ since
$\langle \vec{e}_{i}, \vec{e}_{j} \rangle = 0$ for $i \neq j$. Hence
every vector in $\operatorname{Span}(\vec{e}_{3},\vec{e}_{4})$ is
orthogonal to every vector in $U$ and we conclude
$$U^{\perp} = \operatorname{Span}(\vec{e}_{3},\vec{e}_{4}).$$ Thus
$\{ \vec{e}_{3}, \vec{e}_{4} \}$ is a basis for $U^{\perp}$.

(3) Let $P : V \to V$ be the projection onto $U$ associated to the
direct sum decomposition $V = U \oplus U^{\perp}$. Then $P(\vec{v})$ is
the vector in $U$ closest to $v$. Now in our application of the
Gram--Schmidt Process,
$$\vec{w}_{3} = \vec{v}_{3} - \langle \vec{v}_{3}, \vec{e}_{1}
    \rangle \vec{e}_{1} - \langle \vec{v}_{3}, \vec{e}_{2} \rangle \vec{e}_{2},$$
so $$P(\vec{w}_{3}) = P(\vec{v}_{3}) - \langle \vec{v}_{3},
    \vec{e}_{1} \rangle P(\vec{e}_{1}) - \langle \vec{v}_{3},
    \vec{e}_{1} \rangle P(\vec{e}_{2}).$$ Therefore
$$\vec{0} = P(\vec{v}_{3}) - \langle \vec{v}_{3}, \vec{e}_{1} \rangle
    \vec{e}_{1} - \langle \vec{v}_{3}, \vec{e}_{2} \rangle \vec{e}_{2},$$
since $\vec{w}_{3} = \|\vec{w_{3}}\|\vec{e}_{3} \in U^{\perp}$ and
$\vec{e}_{1},\vec{e}_{2} \in U$. Hence the closest vector in $U$
to $\vec{v}_{3}$ is $$\begin{aligned}
    P(\vec{v}_{3}) & = \langle \vec{v}_{3}, \vec{e}_{1} \rangle
    \vec{e}_{1} + \langle \vec{v}_{3}, \vec{e}_{2} \rangle
    \vec{e}_{2}                                                                     \\
                    & = (-2) \cdot \frac{1}{2} \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} + 3\surd2 \cdot
    \frac{1}{\surd2} \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}                                           \\
                    & = - \begin{pmatrix} 1 \\ 1 \\ -1 \\ 1 \end{pmatrix} + 3 \begin{pmatrix} 1 \\ -1 \\ 0 \\ 0 \end{pmatrix}            \\
                    & = \begin{pmatrix} 2 \\ -4 \\ 1 \\ -1 \end{pmatrix}.
  \end{aligned}$$
:::

## Problems {#problems-11-inner-products}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  ::: {.question}
    []{#problem-11-01 label="problem-11-01"} Let
    $C[0,1]$ be the vector space of all real-valued continuous functions
    $f \colon [0,1] \to \mathbb{R}$. Verify that the following formula
    defines an inner product on $C[0,1]$:
    $$\langle f,g \rangle = \int_{0}^{1} f(x)g(x) \, \mathrm{d}x.$$
    \[Hint: It may help to use the fact that if $f(x)$ is a continuous
    function such that $f(x) \geq 0$ for all $x$ and $f(a) > 0$ for
    some $a \in [0,1]$, then $\int_{0}^{1} f(x) \, \mathrm{d}x > 0$. \]
    :::

2.  []{#problem-11-02 label="problem-11-02"}

    ::: {.question}
    Let $\mathcal{P}_{n}$ be the inner product space of polynomials in
    $\mathbb{R}[x]$ of degree at most $n$ on $[0,1]$. The inner product
    on $\mathcal{P}_n$ is given by
    $$\left\langle f, g\right\rangle = \int_{0}^1 f(x)g(x) \mathrm{d} x.$$
    Show that the polynomials
    $$B_{n,k}(x) = \binom{n}{k}x^k(1-x)^{n-k}$$ for $0\le k\le n$ are a
    basis for $\mathcal{P}_n$ but not an orthogonal one. \[This problem
    is hard.\]
    :::

3.  []{#problem-11-03 label="problem-11-03"}

    ::: {.question}
    Consider the vector space $M_{n}(\mathbb{R})$ of all
    $n \times n$ matrices with real entries. Verify that the following
    formula defines an inner product on $M_{n}(\mathbb{R})$:
    $$\langle A,B \rangle = \operatorname{tr}(AB^{\mathrm{t}}),$$ the
    trace of the product of $A$ and the transpose of $B$.
    :::

4.  []{#problem-11-04 label="problem-11-04"}

    ::: {.question}
    Let $V$ be an inner product space having norm $\|\cdot\|$. Show that
    $$\|v+w\|^{2} + \|v-w\|^{2} = 2( \|v\|^{2} + \|w\|^{2})$$ for all
    $v,w \in V$.
    :::

5.  []{#problem-11-05 label="problem-11-05"}

    ::: {.question}
    Let $x_{i}$ and $y_{i}$ be real numbers for $i = 1$, $2$, ..., $n$.
    Prove the following inequalities:

    1.  $\displaystyle\biggl( \sum_{i=1}^{n} x_{i}y_{i} \biggr)^{2} \leq
          \biggl( \sum_{i=1}^{n} x_{i}^{2} \biggr) \biggl( \sum_{i=1}^{n}
          y_{i}^{2} \biggr)$;

    2.  $\displaystyle\biggl( \sum_{i=1}^{n} x_{i} \biggr)^{2} \leq n
          \sum_{i=1}^{n} x_{i}^{2}$.

    \[Hint: Use the Cauchy--Schwarz Inequality in an appropriate inner
    product space.\]
    :::

6.  []{#problem-11-06 label="problem-11-06"}

    ::: {.questionjupyter}
    Consider the vector space $\mathbb{R}^{3}$ with its usual inner
    product (given by the dot product). Apply the Gram--Schmidt process
    to the following bases to produce orthonormal bases
    for $\mathbb{R}^{3}$:

    1.  $\left\{ \begin{pmatrix}
         -1 \\
         1 \\
         0 \\
         \end{pmatrix}, \begin{pmatrix}
         -1 \\
         1 \\
         1 \\
         \end{pmatrix},
             \begin{pmatrix}
         1 \\
         1 \\
         0 \\
         \end{pmatrix} \right\}$;

    2.  $\left\{ \begin{pmatrix}
         1 \\
         2 \\
         1 \\
         \end{pmatrix}, \begin{pmatrix}
         -1 \\
         2 \\
         3 \\
         \end{pmatrix},
             \begin{pmatrix}
         1 \\
         1 \\
         3 \\
         \end{pmatrix} \right\}$.
    :::

7.  []{#problem-11-07 label="problem-11-07"}

    ::: {.questionjupyter}
    Let $\mathcal{P}_{2}$ denote the inner product space of all
    polynomials over $\mathbb{C}$ of degree at most $2$ with inner
    product given by
    $$\langle f,g \rangle = \int_{-1}^{1} f(x) \overline{g(x)} \, \mathrm{d}x.$$
    Apply the Gram--Schmidt process to the set $\{ 1,x,x^{2} \}$ to
    produce an orthonormal basis for $\mathcal{P}_{2}$.
    :::

8.  []{#problem-11-08 label="problem-11-08"}

    ::: {.questionjupyter}
    Consider the space $\mathcal{P}_{3}$ of complex polynomials of
    degree at most $3$ with inner product given by
    $$\langle f,g \rangle = \int_{0}^{1} f(x)\overline{g(x)} \, \mathrm{d}x.$$
    Find an orthonormal basis for $\mathcal{P}_{3}$ by applying the
    Gram--Schmidt process to the standard basis of monomials $\{ 1, x,
     x^{2}, x^{3} \}$.
    :::

9.  []{#problem-11-09 label="problem-11-09"}

    ::: {.questionjupyter}
    Consider the vector space $\mathbb{R}^{3}$. Let
    $$\vec{v} = \begin{pmatrix}
     0 \\
     3 \\
     1 \\
     \end{pmatrix} \qquad \text{and} \qquad U =
     \operatorname{Span} \left( \begin{pmatrix}
     1 \\
     0 \\
     1 \\
     \end{pmatrix}, \begin{pmatrix}
     -1 \\
     2 \\
     -1 \\
     \end{pmatrix}
     \right).$$

    1.  Determine the orthogonal complement $U^{\perp}$.

    2.  Find the vector in $U$ that is closest to $\vec{v}$ and hence
        determine the distance from $\vec{v}$ to $U$.
    :::

10. []{#problem-11-10 label="problem-11-10"}

    ::: {.questionjupyter}
    Let $\mathcal{P}_{3}$ be the space of complex polynomials of degree
    at most $3$ and $U = \mathcal{P}_{1}$ be the subspace of polynomials
    of degree at most $1$. Consider the following inner produce
    $$\langle f,g \rangle = \int_{0}^{1} f(x)\overline{g(x)} \, \mathrm{d}x.$$

    1.  Determine the orthogonal complement $U^{\perp}$ with respect to
        this inner product.

    2.  Find the polynomial in $U$ that is closest to $x^{3}$ with
        respect to the norm determined by this inner product and hence
        determine the distance from $x^{3}$ to $U$.
    :::
