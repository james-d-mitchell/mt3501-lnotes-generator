# Vector spaces {#ch:vspaces}
{{< chapter 1 >}}

## Definition and examples of vector spaces

The first step in the definition of a vector space is to define what we
mean by "scalars".

::: {.defn}
[]{#def-field label="def-field"} A ***field*** is a set $F$
together with two binary operations $$\begin{aligned}
    F \times F      & \to F                  & F \times F     & \to F   \\
    (\alpha, \beta) & \mapsto \alpha + \beta & (\alpha,\beta) & \mapsto
    \alpha\beta
  \end{aligned}$$ called *addition* and *multiplication*, respectively,
such that the following hold:

1.  $\alpha + \beta = \beta + \alpha$ for all $\alpha,\beta \in
                F$;

2.  $(\alpha + \beta) + \gamma = \alpha + (\beta + \gamma)$ for all
    $\alpha,\beta,\gamma \in F$;

3.  there exists an element $0$ in $F$ such that $\alpha + 0 =
                \alpha$ for all $\alpha \in F$;

4.  for each $\alpha \in F$, there exists an element $-\alpha$ in $F$
    such that $\alpha + (-\alpha) = 0$;

5.  $\alpha \beta = \beta \alpha$ for all $\alpha,\beta \in F$;

6.  $(\alpha \beta) \gamma = \alpha (\beta \gamma)$ for all
    $\alpha,\beta,\gamma \in F$;

7.  $\alpha(\beta + \gamma) = \alpha \beta + \alpha \gamma$ for all
    $\alpha,\beta,\gamma \in F$;

8.  there exists an element $1$ in $F$ such that $1 \neq 0$ and $1
                \alpha = \alpha$ for all $\alpha \in F$;

9.  for each $\alpha \in F$ with $\alpha \neq 0$, there exists an
    element $\alpha^{-1}$ (or $1/\alpha$) in $F$ such that $\alpha
                \alpha^{-1} = 1$.

In the context of vector spaces, elements of a field $F$ are called
***scalars***.
:::

##### Remark:

For those of you who took MT2505, you will notice that $F$ under $+$ is
an (additive) abelian group, whose identity is $0$, and that
$F\setminus\{0\}$ under multiplication is an abelian group, whose
identity is $1$, and that the two operation are linked by item (7),
which states that multiplication distributes over addition.

We are not going to examine these axioms any further nor investigate the
theory of fields. Instead, we note that in a field it is possible to
add, subtract, multiply and divide (by *non-zero* scalars) and that all
normal rules of arithmetic hold. This is illustrated by the following
examples.

::: {.example}
The following are examples of fields:

1.  $\mathbb{Q} = \{ m/n : m,n \in \mathbb{Z}, \; n \neq 0 \}$

2.  $\mathbb{R}$

3.  $\mathbb{C} = \{ x+iy : x,y \in \mathbb{R}\}$ with all three
    possessing the usual addition and multiplication.

4.  $\mathbb{Z}/p\mathbb{Z} = \{ 0,1,\dots,p-1 \}$, where $p$ is a prime
    number, with addition and multiplication being performed modulo $p$.
:::

The latter example is important in the context of pure mathematics. For
the purposes many applications of linear algebra in applied mathematics
and the physical sciences, the examples $\mathbb{R}$ and $\mathbb{C}$
are the most important. For those of a pure mathematical bent, however,
it is worth noting that much of what is done in this course will work
over an arbitrary field.

::: {.defn}
[]{#def-vspace label="def-vspace"} Let $F$ be a field. A
***vector space*** over $F$ is a set $V$ together with the following
operations $$\begin{aligned}
    V \times V & \to V       & F \times V & \to V             \\
    (u,v)      & \mapsto u+v & (\alpha,v) & \mapsto \alpha v,
  \end{aligned}$$ called *addition* and *scalar multiplication*,
respectively, such that

1.  $u + v = v + u$ for all $u,v \in V$;

2.  $(u + v) + w = u + (v + w)$ for all $u,v,w \in V$;

3.  there exists a vector $\vec{0}$ in $V$ such that $v + \vec{0} = v$
    for all $v \in V$;

4.  for each $v \in V$, there exists a vector $-v$ in $V$ such that
    $v + (-v) = \vec{0}$;

5.  $\alpha (u + v) = \alpha u + \alpha v$ for all $u,v \in V$ and
    $\alpha \in F$;

6.  $(\alpha + \beta) v = \alpha v + \beta v$ for all $v \in V$ and
    $\alpha,\beta \in F$;

7.  $(\alpha \beta)v = \alpha (\beta v)$ for all $v \in V$ and
    $\alpha,\beta \in F$;

8.  $1 v = v$ for all $v \in V$.
:::

##### Comments:

1.  For those of you who took MT2505, note that $V$ under addition of
    vectors is an abelian group with identity $\vec{0}$.

2.  A vector space consists of a collection of *vectors* which we can
    add together and multiply by *scalars*. Vectors are just the names
    for elements of a vector space, and do not have to be columns or
    rows of numbers.

3.  Note that the zero element of the field $F$ is denoted $0$, the zero
    vector is denoted $\vec{0}$, and the vector space containing
    $\vec{0}$ is denoted $\operatorname{Span}(\vec{0}) = \{\vec{0}\}$.

4.  We shall use the term *real vector space* to refer to a vector space
    over the field $\mathbb{R}$ and *complex vector space* to refer to
    one over the field $\mathbb{C}$.

5.  We shall sometimes refer simply to a vector space $V$ without
    specifying the base field $F$. Nevertheless, there is always such a
    field $F$ and we will use the term *scalar* to refer to the elements
    of this field when we fail to actually name it.

To illustrate, we shall give a number of examples, many of which should
be familiar (not least from MT2501).

::: {.example}
[]{#ex-f-to-the-n label="ex-f-to-the-n"}

1.  Let $n$ be a positive integer and let $F^{n}$ denote the set of
    column vectors of length $n$ with entries from the field $F$:
    $$F^{n} = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} \,\middle|\, x_{1},x_{2},\dots,x_{n} \in
                F \right\}.$$ This is an example of a vector space
    over $F$. Addition in $F^{n}$ is given by
    $$\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \\ \vdots \\ y_n \end{pmatrix} = \begin{pmatrix}
                  x_{1}+y_{1} \\ x_{2}+y_{2} \\ \vdots \\ x_{n}+y_{n} \end{pmatrix},$$
    while scalar multiplication is similarly given by
    $$\alpha \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} = \begin{pmatrix} \alpha x_1 \\ \alpha x_2 \\ \vdots \\ \alpha x_n \end{pmatrix}.$$
    The zero vector is
    $$\vec{0} = \begin{pmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix}$$
    and
    $$-\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} = \begin{pmatrix} -x_1 \\ -x_2 \\ \vdots \\ -x_n \end{pmatrix}$$
    specifies the negative of a vector.

2.  The complex numbers $\mathbb{C}$ can be viewed as a vector space
    over $\mathbb{R}$. Addition is the usual addition of complex
    numbers:
    $$(x_{1}+iy_{1}) + (x_{2}+iy_{2}) = (x_{1}+x_{2}) + i(y_{1}+y_{2});$$
    while scalar multiplication is given by
    $$\alpha(x+iy) = (\alpha x) + i(\alpha y) \quad \text{(for
                  $\alpha \in \mathbb{R}$).}$$ The zero vector is the
    element $0 = 0 + i0 \in \mathbb{C}$.

    Every field can be viewed as a vector space over any subfield, but
    that is not particularly important for this course.

3.  A ***polynomial*** over the field $F$ is an expression of the form
    $$f(x) = a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m},$$ for
    some $m \geq 0$, where $a_{0},a_{1},\dots,a_{m} \in F$. The set of
    all polynomials over $F$ is usually denoted by $F[x]$. If necessary
    we can "pad" such an expression for a polynomial using $0$ as the
    coefficient for the extra terms to increase its length. Thus to
    add $f(x)$ to another polynomial $g(x)$, we may assume they are
    represented by expressions of the same length, say
    $$g(x) = b_{0} + b_{1}x + b_{2}x^{2} + \dots + b_{m}x^{m}.$$ Then
    $$f(x) + g(x) = (a_{0}+b_{0}) + (a_{1}+b_{1})x + (a_{2}+b_{2})x^{2}
                + \dots + (a_{m}+b_{m})x^{m}.$$ Scalar multiplication is
    straightforward:
    $$\alpha f(x) = (\alpha a_{0}) + (\alpha a_{1})x + (\alpha
                a_{2})x^{2} + \dots + (\alpha a_{m})x^{m}$$ for
    $f(x)$ as above and $\alpha \in F$. The vector space axioms are
    pretty much straightforward to verify. The zero vector is the
    polynomial with all coefficients $0$:
    $$0 = 0 + 0x + 0x^{2} + \dots + 0x^{m}$$ (for any choice of $m$) and
    $$-f(x) = (-a_{0}) + (-a_{1})x + (-a_{2})x^{2} + \dots +
                (-a_{m})x^{m}.$$

4.  Let $\mathcal{F}_{\mathbb{R}}$ denote the set of all functions from
    $\mathbb{R}$ to $\mathbb{R}$. Define the addition of two such
    functions $f$ and $g$ by
    $$(f+g)(x) = f(x) + g(x) \quad \text{(for $x \in \mathbb{R}$)}$$ and
    scalar multiplication of $f$ by $\alpha \in \mathbb{R}$ by
    $$(\alpha f)(x) = \alpha \cdot f(x) \quad \text{(for $x \in \mathbb{R}$)}.$$
    Then $\mathcal{F}_{\mathbb{R}}$ is a real vector space with
    $$(-f)(x) = -f(x)$$ and the zero is the function given by
    $x \mapsto 0$ for all $x \in
                \mathbb{R}$.
:::

We end this section by stating some basic properties of vector spaces
that you probably remember from MT2501.

::: {.prop}
[]{#prop-vectorbasic label="prop-vectorbasic"} Let
$V$ be a vector space over a field $F$, let $v \in V$, and let $\alpha
    \in F$. Then

1.  $\alpha \vec{0} = \vec{0}$;

2.  $0 v = \vec{0}$;

3.  if $\alpha v = \vec{0}$, then either $\alpha = 0$ or $v = \vec{0}$;

4.  $(-\alpha)v = -\alpha v = \alpha(-v)$.
:::

## Subspaces

Although linear algebra is a branch of mathematics that is used
throughout the whole spectrum of pure and applied mathematics, it is
nonetheless a branch of algebra. As a consequence, we should expect to
do the sort of thing that is done throughout algebra, namely examine
substructures and structure preserving maps. For the former, we make the
following definition.

::: {.defn}
Let $V$ be a vector space over a field $F$. A ***subspace*** $W$ of $V$
is a non-empty subset of $V$ which itself forms a vector space over $F$
under the same operations as $V$.
:::

::: {.lemma}
[]{#lem-subspace label="lem-subspace"} Let $V$ be a
vector space and let $W$ be a subspace of $V$. Then:

1.  $\vec{0} \in W$ (where $\vec{0}$ is the zero vector of $V$);

2.  if $v \in W$, then $-v \in W$ (where $-v$ is the additive inverse of
    the vector $v$ in $V$).
:::

::: {.proof}
*Proof.* **(1)** Since $W$ is non-empty, there exists at least one
vector $u \in W$. Since $W$ is closed under scalar multiplication (it is
a vector space), it follows that $\vec{0}=0u \in W$ (by
[Proposition 2.1.5]({{< ref "02-vector-spaces#prop-vectorbasic" >}})(1)).

**(2)** If $v\in W$, then $W$ contains $(-1)v = -1v = -v$ (by
[Proposition 2.1.5]({{< ref "02-vector-spaces#prop-vectorbasic" >}})(4)). ◻
:::

::: {.thm}
[]{#thm-subspace-criteria label="thm-subspace-criteria"} Let $V$ be a vector space over a
field $F$ and let $W$ be a subset of $V$. Then $W$ is a subspace of $V$
if and only if

1.  $W$ is non-empty;

2.  if $u,v \in W$, then $u+v \in W$; and

3.  if $v \in W$ and $\alpha \in F$, then $\alpha v \in W$.
:::

::: {.omittedexamp}
Many examples of subspaces were presented in MT2501. We list a few here
with full details, but these details will probably be omitted during the
lectures.

1.  Let $V = \mathbb{R}^{3}$, the real vector space of column vectors of
    length $3$. Consider
    $$W = \left\{ \begin{pmatrix} x \\ y \\ 0 \end{pmatrix} \;\middle|\; x,y \in \mathbb{R} \right\}
                \subseteq \mathbb{R}^{3};$$ so $W$ consists of all
    vectors with zero in the last entry. We check
    $$\begin{pmatrix} x_{1} \\ y_{1} \\ 0 \end{pmatrix} + \begin{pmatrix} x_{2} \\ y_{2} \\ 0 \end{pmatrix} =
                \begin{pmatrix} x_{1}+x_{2} \\ y_{1}+y_{2} \\ 0 \end{pmatrix} \in W$$
    and
    $$\alpha \begin{pmatrix} x \\ y \\ 0 \end{pmatrix} = \begin{pmatrix} \alpha x \\ \alpha y \\ 0 \end{pmatrix}
                \in W \quad \text{(for $\alpha \in \mathbb{R}$)}.$$ Thus
    $W$ is closed under sums and scalar multiplication; that is, $W$ is
    a subspace of $\mathbb{R}^{3}$.

2.  Let $\mathcal{F}_{\mathbb{R}}$ be the set of all functions $f
                : \mathbb{R} \to \mathbb{R}$, which forms a real vector
    space under
    $$(f + g)(x) = f(x) + g(x); \quad (\alpha f)(x) = \alpha \cdot f(x).$$
    Let $\mathcal{P}$ denote the set of polynomial functions; i.e., each
    $f \in \mathcal{P}$ has the form
    $$f(x) = a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m}$$ for some
    $m \geq 0$ and $a_{0},a_{1},\dots,a_{m} \in \mathbb{R}$. Then
    $\mathcal{P} \subseteq \mathcal{F}_{\mathbb{R}}$ and, since the sum
    of two polynomials is a polynomial and a scalar multiple of a
    polynomial is a polynomial, $\mathcal{P}$ is a subspace
    of $\mathcal{F}_{\mathbb{R}}$.
:::

::: {.defn}
Let $V$ be a vector space and let $U$ and $W$ be subspaces of $V$.

1.  The ***intersection*** of $U$ and $W$ is
    $U \cap W = \{v:\text{$v \in U$ and $v \in W$}\}$.

2.  The ***sum*** of $U$ and $W$ is
    $U + W = \{u+w : u \in U, w \in W\}$.
:::

Since $V$ is a vector space, addition of a vector $u \in U \subseteq
  V$ and $w \in W \subseteq V$ makes sense. Thus the sum $U + W$ is a
sensible collection of vectors in $V$.

::: {.prop}
[]{#prop-sum-is-subspace label="prop-sum-is-subspace"} Let $V$ be a vector space and let
$U$ and $W$ be subspaces of $V$. Then

1.  $U \cap W$ is a subspace of $V$;

2.  $U + W$ is a subspace of $V$.
:::

::: {.proof}
*Proof.* **1.** This is in MT2501.

**2.** Using the fact that $\vec{0}$ lies in $U$ and $W$, we see
$\vec{0} = \vec{0} + \vec{0} \in U+W$. Hence $U+W$ is non-empty. Now let
$v_{1},v_{2} \in
    U+W$, say $v_{1} = u_{1}+w_{1}$ and $v_{2} = u_{2}+w_{2}$ where
$u_{1},u_{2}
    \in U$ and $w_{1},w_{2} \in W$. Then
$$v_{1}+v_{2} = (u_{1}+w_{1}) + (u_{2}+w_{2}) = (u_{1}+u_{2}) +
    (w_{1}+w_{2}) \in U+W$$ and if $\alpha$ is a scalar then
$$\alpha v_{1} = \alpha(u_{1}+w_{1}) = (\alpha u_{1}) + (\alpha w_{1})
    \in U + W.$$ Hence $U+W$ is a subspace of $V$. ◻
:::

A straightforward induction argument establishes the following result.

::: {.cor}
Let $V$ be a vector space and let $U_{1}$, $U_{2}$, ..., $U_{k}$ be
subspaces of $V$. Then
$$U_{1}+U_{2}+\dots+U_{k} = \{ u_{1}+u_{2}+\dots+u_{k} :
    \text{$u_{i} \in U_{i}$ for each $i$} \}$$ is a subspace of $V$.
:::

## Spanning sets

In this section we recall the notion of a spanning set, which is the
standard means of defining a subspace of a vector space.

::: {.defn}
[]{#def-span label="def-span"} Let $V$ be a vector space
over a field $F$ and suppose that $\mathscr{A} = \{
    v_{1}, v_{2}, \dots\}$ is a set of vectors in $V$. A ***linear
combination*** of these vectors is a vector of the form
$$\sum_{i=1}^{k} \alpha_{i}v_{i} = \alpha_{1}v_{1} + \alpha_{2}v_{2} + \dots +
    \alpha_{k}v_{k}$$ for some
$\alpha_{1},\alpha_{2},\dots,\alpha_{k} \in F$. The set
$$\operatorname{Span}(\mathscr{A}) = \operatorname{Span}(v_{1},~v_{2}, \dots) =
    \biggl\{ \sum_{i=1}^{k} \alpha_{i}v_{i} \biggm|
    v_{1},v_{2},\dots,v_{k} \in \mathscr{A}, \;
    \alpha_{1},\alpha_{2},\dots,\alpha_{k} \in F \biggr\}$$ of all
linear combinations is called the ***span*** of the vectors
$v_{1}$, $v_{2}$, $\dots$.
:::

::: {.prop}
[]{#prop-span-is-subspace label="prop-span-is-subspace"} Let $\mathscr{A}$ be a set of vectors in
the vector space $V$. Then $\operatorname{Span}(\mathscr{A})$ is a
subspace of $V$.
:::

::: {.defn}
A ***spanning set*** for a subspace $W$ is a set $\mathscr{A}$ of
vectors such that $\operatorname{Span}(\mathscr{A}) = W$. If
$\operatorname{Span}(\mathscr{A}) = W$, then for all $v\in W$, we may
write
$$v = \sum_{i=1}^{k} \alpha_{i}v_{i} = \alpha_1v_1 + \alpha_2 v_2 + \cdots +
    \alpha_k v_k$$ for some $v_{1},v_{2},\dots,v_{k} \in \mathscr{A}$
and some scalars $\alpha_{1}$, $\alpha_{2}$, ..., $\alpha_{k}$.
:::

Every subspace $W$ of a vector space $V$ has a spanning set, namely $W$
itself, $W = \operatorname{Span}(W)$. However, what we typically want is
a spanning set $\mathscr{A}$ where $\mathscr{A}$ is reasonably small.

::: {.example}
[]{#ex-spanning label="ex-spanning"}

1.  Suppose that
    $$\vec{e}_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix},\quad
              \vec{e}_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix},\quad \vec{e}_3
              = \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}.$$ Then
    $\operatorname{Span}(\vec{e}_1, \vec{e}_2, \vec{e}_3) = \mathbb{R} ^ 3$.

2.  Suppose that
    $$\mathscr{A} = \left\{ \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix},
              \begin{pmatrix} 1 \\ -1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 0 \\
              1 \end{pmatrix} \right\}.$$ Then
    $$\begin{pmatrix} x \\ y \\ z \end{pmatrix} = \frac{x+y}{2} \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} +
                \frac{x-y}{2} \begin{pmatrix} 1 \\ -1 \\ 0 \end{pmatrix} + z \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix},$$
    for any $x, y, z\in \mathbb{R}$ and so
    $\operatorname{Span}(\mathscr{A}) = \mathbb{R} ^ 3$.

3.  If $\mathscr{A}$ is a spanning set for a vector space $W$, and
    $w\in W$ is any vector, then
    $\operatorname{Span}(\mathscr{A} \cup \{w\}) = \operatorname{Span}(\mathscr{A})$.
    In other words, if you have a spanning set for a vector space $W$,
    you can always add additional redundant vectors from $W$ and the set
    will continue to span $W$.

4.  In the vector space $F[x]$ (of polynomials over the field $F$) every
    polynomial can be written
    $$f(x) = a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m} \in
                \operatorname{Span}(1, x, x ^ 2,\ldots).$$ Hence the set
    $$\mathscr{M} = \{ 1, x, x^{2}, x^{3}, \dots \}$$ of all *monomials*
    is a spanning set for $F[x]$.
:::

See MT2501 for further examples.

## Linearly independent vectors and bases

::: {.defn}
Let $V$ be a vector space over a field $F$. A set $\mathscr{A} = \{
  v_{1},v_{2},\dots\}$ is called ***linearly independent*** if the only
solution to the equation $$\sum_{i=1}^{k} \alpha_{i} v_{i} = \vec{0}$$
(with $\alpha_{i} \in F$ and $k\geq 0$) is
$\alpha_{1} = \alpha_{2} = \dots =
    \alpha_{k} = 0$.

If $\mathscr{A}$ is not linearly independent, we shall call it
***linearly dependent***.
:::

::: {.lemma}
[]{#cor-dep-lincomb label="cor-dep-lincomb"} Let
$\mathscr{A}$ be a set of vectors in a vector space $V$. Then
$\mathscr{A}$ is linearly dependent if and only if there exists
$v\in \mathscr{A}$ such that $v$ is a linear combination of vectors in
$\mathscr{A}\setminus \{v\}$.
:::

::: {.lemma}
[]{#lemma-dim-dim label="lemma-dim-dim"} Let $V$ be a
finite-dimensional vector space. If $\{ v_{1},v_{2},\dots,v_{m}
  \}$ is a linearly independent set of vectors in $V$ and $\{
  w_{1},w_{2},\dots,w_{n} \}$ is a spanning set for $V$, then
$m \leq n$.
:::

::: {.defn}
Let $V$ be a vector space over the field $F$. A *basis* for $V$ is a
linearly independent spanning set. We say that $V$ is
***finite-dimensional*** if it has a finite basis. The ***dimension***
of $V$ is the size of any basis for $V$ and is denoted by $\dim V$.
:::

::: {.example}
[]{#ex-standard-basis label="ex-standard-basis"}
The set
$$\mathscr{B} = \left\{ \vec{e}_1 =\begin{pmatrix}1\\0\\0\\\vdots\\0\end{pmatrix},
      \vec{e}_2 =\begin{pmatrix}0\\1\\0\\\vdots\\0\end{pmatrix},
    \dots, \vec{e}_n=\begin{pmatrix}0\\0\\\vdots\\0\\1\end{pmatrix} \right\}$$
is a basis for $V = F^{n}$. We shall call it the ***standard basis***
for $F^{n}$. Hence $\dim F^{n} = n$ (as you might expect).

\[Verification (omitted in lectures): If $\vec{v}$ is an arbitrary
vector in $V$, say
$$\vec{v} = \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} = \sum_{i=1}^{n} x_{i}\vec{e}_{i}$$
(where $x_{i} \in F$). Thus
$\mathscr{B} = \{ \vec{e}_{1},\vec{e}_{2},\dots,\vec{e}_{n}
  \}$ spans $V$. Suppose there exist scalars $\alpha_{1}$, $\alpha_{2}$,
..., $\alpha_{n}$ such that
$$\sum_{i=1}^{n} \alpha_{i}\vec{e}_{i} = \vec{0} ;$$ that is,
$$\begin{pmatrix} \alpha_1 \\ \alpha_2 \\ \vdots \\ \alpha_n \end{pmatrix} = 
    \begin{pmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix} .$$ Hence
$\alpha_{1} = \alpha_{2} = \dots = \alpha_{n} = 0$. Thus
$\mathscr{B}$ is linearly independent.\]
:::

::: {.example}
Let $\mathcal{P}_{n}$ be the set of polynomials over the field $F$ of
degree at most $n$:
$$\mathcal{P}_{n} = \{ \, f(x) \mid \text{$f(x) = a_{0} + a_{1}x +
      a_{2}x^{2} + \dots + a_{n}x^{n}$}
    \ \text{for some $a_{i} \in F$} \, \}.$$ It is easy to check
$\mathcal{P}_{n}$ is closed under sums and scalar multiples, so
$\mathcal{P}_{n}$ forms a vector subspace of the space $F[x]$ of all
polynomials. The set of monomials $\{ 1,
  x, x^{2}, \dots, x^{n} \}$ is a basis for $\mathcal{P}_{n}$. Hence
$\dim\mathcal{P}_{n} = n+1$.
:::

In these examples we have referred to dimension as though it is uniquely
determined. We will show that it is at the end of this section.
Beforehand, however, we shall observe how bases are efficient as
spanning sets, since they produce a uniqueness to the linear
combinations required.

::: {.lemma}
[]{#lem-basis-uniqueexpr label="lem-basis-uniqueexpr"} Let $V$ be a vector space and let
$\mathscr{B}$ be a basis for $V$. Then every vector in $V$ can be
expressed as a *unique* linear combination of the vectors
in $\mathscr{B}$.
:::

Note that although the collection $\mathscr{B}$ in
[Lemma 2.4.7]({{< ref "02-vector-spaces#lem-basis-uniqueexpr" >}}) might be **infinite**, linear
combinations are always **finite**.

::: {.thm}
[]{#thm-3-conditions label="thm-3-conditions"} Let
$V$ be a finite dimensional vector space and let $\mathscr{A}$ be a
finite collection of vectors in $V$. If $\mathscr{A}$ satisfies any
*two* of the following three conditions, then $\mathscr{A}$ is a basis
of $V$ (and hence satisfies all three conditions):

1.  $\mathscr{A}$ is a spanning set for $V$;

2.  $\mathscr{A}$ is linearly independent;

3.  $\mathscr{A}$ contains precisely $\dim V$ vectors.
:::

::: {.thm}
[]{#thm-new-linear-indep label="thm-new-linear-indep"} If $\mathscr{A}$ is any collection of
vectors in a vector space $V$, and $\mathscr{C}$ is a linearly
independent subset of $\mathscr{A}$, then there exists a basis
$\mathscr{B}$ for $\operatorname{Span}(\mathscr{A})$ such that
$\mathscr{C}\subseteq
  \mathscr{B}$.
:::

::: {.cor}
[]{#thm-basis-subset label="thm-basis-subset"} If
$\mathscr{A}$ is a subset of a vector space $V$, then $\mathscr{A}$
contains a basis for $\operatorname{Span}(\mathscr{A})$.
:::

[Corollary 2.4.10]({{< ref "02-vector-spaces#thm-basis-subset" >}}) implies that you can go from a spanning
set to a linearly independent spanning set by omitting the correct
choice of vectors.

::: {.cor}
[]{#prop-extension label="prop-extension"} If
$\mathscr{A}$ is a linearly independent subset of a vector space $V$,
then there exists a basis $\mathscr{B}$ for $V$ such that
$\mathscr{A} \subseteq \mathscr{B}$.
:::

::: {.omittedexampjupyter}
Let $V = \mathbb{R}^{4}$. Show that the set
$$\mathscr{A} = \left\{ \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix},
    \begin{pmatrix} 1 \\ 0 \\ 3 \\ 4 \end{pmatrix} \right\}$$ is a
linearly independent set of vectors. Find a basis for $\mathbb{R}^{4}$
containing $\mathscr{A}$.
:::

::: {.solution}
To show $\mathscr{A}$ is linearly independent, we suppose
$$\alpha_{1} \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix} 
    + \alpha_{2} \begin{pmatrix} 1 \\ 0 \\ 3 \\ 4 \end{pmatrix}
    = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}.$$ This yields four
equations: $$3\alpha_{1} + \alpha_{2} = 0, \quad \alpha_{1} = 0, \quad
    3\alpha_{2} = 0, \quad 4\alpha_{2} = 0.$$ Hence
$\alpha_{1} = \alpha_{2} = 0$. Thus $\mathscr{A}$ is linearly
independent.

We now seek to extend $\mathscr{A}$ to a basis of $\mathbb{R}^{4}$. We
do so by first attempting to add the first vector of the standard basis
for $\mathbb{R}^{4}$ to $\mathscr{A}$: Set
$$\mathscr{B} = \left\{ \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix},
    \begin{pmatrix} 1 \\ 0 \\ 3 \\ 4 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 0
\\ 0 \end{pmatrix} \right\}.$$ Suppose
$$\alpha_{1} \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix} + \alpha_{2}
    \begin{pmatrix} 1 \\ 0 \\ 3 \\ 4 \end{pmatrix} + \alpha_{3} \begin{pmatrix}
    1 \\ 0 \\ 0 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0
  \end{pmatrix}.$$ Therefore
$$3\alpha_{1} + \alpha_{2} + \alpha_{3} = 0, \quad \alpha_{1} = 0,
    \quad 3\alpha_{2} = 0, \quad 4\alpha_{2} = 0.$$ So
$\alpha_{1} = \alpha_{2} = 0$ (from the second and third equations) and
we deduce $\alpha_{3} = -3\alpha_{1} - \alpha_{2}
    = 0$. Hence our new set $\mathscr{B}$ is linearly independent.

If we now attempt to adjoin
$\begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix}$ to $\mathscr{B}$ and
repeat the above, we would find that we were unable to prove the
corresponding $\alpha_{i}$ are non-zero. Indeed,
$$\begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix} 
    = \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix} 
      - 3\begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}
      \in \operatorname{Span}(\mathscr{B}).$$ Thus there is no need to
adjoin the second standard basis vector to $\mathscr{B}$.

Now let us attempt to
adjoin $\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix}$
to $\mathscr{B}$: $$\mathscr{C} 
    = 
    \left\{ 
      \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix}, 
      \begin{pmatrix} 1 \\ 0 \\ 3 \\ 4 \end{pmatrix},
      \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}, 
      \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} 
    \right\}.$$ Suppose
$$\alpha_{1}\begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix} 
    + \alpha_{2}\begin{pmatrix} 1 \\ 0 \\ 3 \\ 4 \end{pmatrix} 
    + \alpha_{3}\begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} 
    + \alpha_{4}\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} 
    =
    \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}.$$ Hence

::: {.center}
  --------------- ------------------- ------------------- ------------------ --------- --
    $3\alpha_{1}$   ${} + \alpha_{2}$  ${} + \alpha_{3}$                      ${}=0$   
     $\alpha_{1}$                                                             ${}=0$   
                        $3\alpha_{2}$                      ${} +\alpha_{4}$   ${}= 0$  
                        $4\alpha_{2}$                                         ${}=0$   
  --------------- ------------------- ------------------- ------------------ --------- --
:::

Therefore $\alpha_{1} = \alpha_{2} = 0$, from which we deduce
$\alpha_{3} = \alpha_{4} = 0$. Thus we have produced a linearly
independent set $\mathscr{C}$ of size $4$. But
$\operatorname{dim} \mathbb{R}^{4} = 4$ and hence $\mathscr{C}$ must now
be a basis for $\mathbb{R}^{4}$.
:::

::: {.lemma}
[]{#cor-dom-unique label="cor-dom-unique"} Let $V$ be
a vector space. Then any two bases for $V$ have the same size and
consequently $\dim V$ is uniquely determined.
:::

## Examples of infinite-dimensional vector spaces

Although not the focus of this course, we give some examples of
infinite-dimensional vector spaces, in particular for those of you
studying physics who have encountered these previously.

::: {.omittedexamp}
In [Example 2.1.4]({{< ref "02-vector-spaces#ex-f-to-the-n" >}})(3), we encountered the vector space $F[x]$
consisting of all of the polynomials over the field $F$. Every
polynomial in $F[x]$ can be given in the form:
$$f(x) = a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m},$$ for some
$m\geq 0$ (this is the very definition of a polynomial). The expression
$$a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m}$$ is also the very
definition of a linear combination of the monomials:
$$\mathscr{B} = \{1, x, x ^ 2, x ^ 3, \ldots\}.$$ Hence the infinite set
$\mathscr{B}$ spans $F[x]$. On the other hand, it is not possible to
write any $x ^ i$ as a linear combination of polynomials belonging to
$\mathscr{B}\setminus \{x ^ i\} = \{1, x, \ldots, x ^
      {i - 1}, x ^ {i + 1}, \ldots\}$, and so $\mathscr{B}$ is linearly
independent. Thus $\mathscr{B}$ is a basis for $F[x]$ and so
$\dim F[x] = |\mathscr{B}| = \infty$. (Even more precisely, the
dimension of $F[x]$ equals the cardinality of the natural numbers
$\mathbb{N}$. This is usually denoted $\aleph_0$, to distinguish it
from, say, $|\mathbb{R}| > |\mathbb{N}|$.)
:::

::: {.omittedexamp}
We denote by $\mathbb{R} ^ {\infty}$ the vector space of all infinite
vectors $$\begin{pmatrix}
      x_1 \\
      x_2 \\
      \vdots
    \end{pmatrix} \in \mathbb{R} ^ {\infty}$$ of real numbers
$x_1, x_2, \ldots \in \mathbb{R}$. It is again straightforward to verify
that the vector space axioms hold with respect to the operations of
vector addition: $$\begin{pmatrix}
      x_1 \\
      x_2 \\
      \vdots
    \end{pmatrix}
    +
    \begin{pmatrix}
      y_1 \\
      y_2 \\
      \vdots
    \end{pmatrix}
    =
    \begin{pmatrix}
      x_ 1 + y_1 \\
      x_ 2 + y_2 \\
      \vdots
    \end{pmatrix}$$ and scalar multiplication $$\alpha
    \begin{pmatrix}
      x_1 \\
      x_2 \\
      \vdots
    \end{pmatrix}
    =
    \begin{pmatrix}
      \alpha x_ 1 \\
      \alpha x_ 2 \\
      \vdots
    \end{pmatrix}$$ where $\alpha \in \mathbb{R}$. It can be shown that
no countable set
$$\vec{v}_1, \vec{v}_2, \ldots \in \mathbb{R} ^ {\infty}$$ forms a basis
for $\mathbb{R} ^ \infty$ and so $\mathbb{R} ^ \infty$ is not
finite-dimensional. It follows that
$\dim \mathbb{R} ^ \infty > \dim F[x]$ where $F[x]$ is the vector space
of polynomials over the field $F$.
:::

::: {.omittedexamp}
Suppose that $V$ is the subset of $\mathbb{R} ^ \infty$ consisting of
those vectors $$\begin{pmatrix}
      x_1 \\
      x_2 \\
      \vdots
    \end{pmatrix}\in \mathbb{R} ^ \infty$$ such that the sequence
$(x_n)_{n\in \mathbb{N}}$ converges. Then, using some elementary facts
about the convergence of sequences in $\mathbb{R}$ that you might
encounter in analysis, it is possible to verify that $V$ is a subspace
of $\mathbb{R}
    ^ \infty$. It is also possible to show that $V$ is not finite
dimensional, and that $\dim V = \dim \mathbb{R} ^ \infty > \dim F[x]$.
:::

::: {.omittedexamp}
Suppose that $\ell ^ 2$ is the subset of $\mathbb{R} ^ \infty$
consisting of those vectors $$\begin{pmatrix}
      x_1 \\
      x_2 \\
      \vdots
    \end{pmatrix}\in \mathbb{R} ^ \infty$$ such that
$$\sum_{i = 1} ^ {\infty}
    x_i ^ 2$$ exists. A vector in $\ell ^ 2$ is sometimes referred to as
being *square summable*. This vector space is also infinite dimensional,
and $\dim \ell ^ 2 = \dim \mathbb{R} ^ \infty > \dim F[x]$.
:::

::: {.omittedexamp}
We can generalise the standard basis for $\mathbb{R} ^ n$,
$n\in \mathbb{N}$, as follows: $$\mathscr{B} =
    \left\{
    \vec{e}_1 = \begin{pmatrix} 1 \\ 0 \\ \vdots \end{pmatrix},
    \vec{e}_2 = \begin{pmatrix} 0 \\ 1 \\ \vdots \end{pmatrix},
    \ldots
    \in
    \mathbb{R} ^ {\infty}
    \right\}$$ A further example of an infinite-dimensional vector space
is $\operatorname{Span}(\mathscr{B})$. Every linear combination of
vectors in $\mathscr{B}$ only involves finitely many of the vectors in
$\mathscr{B}$. This is explicit in the definition of a linear
combination of vectors in any vector space. In particular, in the
definition of a vector space, we can only sum two vectors at a time, and
hence by applying this repeatedly any finite number of vectors can be
summed. It is possible to think of some ways that "infinite sums" of
vectors could be defined, in some cases, but, in general they are not
defined. Therefore we can characterise the vectors in
$\operatorname{Span}(\mathscr{B})$ as those $$\begin{pmatrix}
      x_1 \\
      x_2 \\
      \vdots
    \end{pmatrix}\in \mathbb{R} ^ \infty$$ such that only finitely many
of the $x_i$ are not $0$. It is straightforward to show that
$\mathscr{B}$ is a basis for $\operatorname{Span}(\mathscr{B})$ and so
$\dim\operatorname{Span}(\mathscr{B}) = \dim F[x] = \infty$ (or more
precisely, $\dim \operatorname{Span}(\mathscr{B}) = \aleph_0$).
:::

::: {.omittedexamp}
Every field is a vector space over any subfield. In particular,
$\mathbb{R}$ is a vector space over $\mathbb{Q}$. It can be shown that
any subspace of $\mathbb{R}$ spanned by a countable collection is itself
countable, and so the dimension of $\mathbb{R}$ over the field
$\mathbb{Q}$ is uncountable. It is possible to show that
$$\sqrt{2}, \sqrt{3}, \sqrt{5}, \sqrt{6}, \ldots \not\in \mathbb{Q}$$ is
linearly independent, and so too is: $$\pi, \pi ^ 2, \pi ^ 3, \ldots.$$
Both of these collections are countable, and so neither is a basis for
$\mathbb{R}$ over $\mathbb{Q}$. It turns out it is much easier to show
that a basis for $\mathbb{R}$ over $\mathbb{Q}$ exists (assuming
something called the *Axiom of Choice*), than it is to describe it
explicitly.
:::

## Problems {#problems-02-vector-spaces}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-02-01 label="problem-02-01"}

    ::: {.question}
    Let $F$ be a field and let $M_{n}(F)$ denote the set of all
    $n \times
    n$ matrices over $F$.

    1.  Show that $M_{n}(F)$ is a vector space over $F$ with respect to
        the usual addition of matrices and where scalar multiplication
        is given by $$\alpha 
          \begin{pmatrix}
            x_{11} & x_{12} & \cdots & x_{1n} \\
            x_{21} & x_{22} & \cdots & x_{2n} \\
            \vdots & \vdots & & \vdots \\
            x_{{n}1} & x_{{n}2} & \cdots & x_{nn}
          \end{pmatrix}
          =
          \begin{pmatrix}
            \alpha x_{11} & \alpha x_{12} & \cdots & \alpha x_{1n} \\
            \alpha x_{21} & \alpha x_{22} & \cdots & \alpha x_{2n} \\
            \alpha \vdots & \vdots & & \vdots \\
            \alpha x_{{n}1} & \alpha x_{{n}2} & \cdots & \alpha x_{nn}
          \end{pmatrix}$$ for $\alpha \in F$ and
        $[x_{ij}] \in M_{n}(F)$. What is the zero vector in this vector
        space?

    2.  Let $W$ consist of the set of ***symmetric*** matrices
        in $M_{n}(F)$. (A matrix $[x_{ij}]$ is symmetric if $x_{ij} =
          x_{ji}$ for all $i$ and $j$.) Show that $W$ is a subspace
        of $M_{n}(F)$.

    3.  Fix a matrix $A$ in $M_{n}(F)$ and let
        $$V = \{X \in M_{n}(F) : AX = XA\}.$$ Show that $V$ is a
        subspace of $M_{n}(F)$.

    4.  Let $Z$ be the set of matrices in $M_{n}(F)$ of zero
        determinant. If $n > 1$, show that $Z$ is not a subspace
        of $M_{n}(F)$.

    5.  Take $F = \mathbb{R}$ and let $I$ be the set of matrices $B$
        in $M_{n}(\mathbb{R})$ satisfying $B^{2} = B$. Show that $I$ is
        not a subspace of $M_{n}(\mathbb{R})$.
    :::

2.  []{#problem-02-02 label="problem-02-02"}

    ::: {.question}
    Consider the vector space $\mathbb{R}[x]$ of polynomials over the
    real numbers. Determine whether the following subsets are subspaces
    of $\mathbb{R}[x]$:

    1.  $\{f(x) : f(1) = 0\}$,

    2.  $\{f(x):\text{the constant term of~$f(x)$ is~$0$}\}$,

    3.  $\{f(x) : \text{$f(x)$~is a polynomial of degree
              precisely~$3$}\}$,

    4.  $\{f(x) :\text{$f(x)$~is a polynomial of degree at
              most~$3$}\}$,

    5.  $\{f(x): \text{$f(x)$~is a polynomial of even degree}\}$.
    :::

3.  []{#problem-02-03 label="problem-02-03"}

    ::: {.question}
    Let $W_{1}$ and $W_{2}$ be the following subspaces of the
    space $\mathbb{R}[x]$ of polynomials over the real numbers:
    $$W_{1} = \{f(x) : f(1) = 0\} \qquad \text{and} \qquad W_{2} =
    \{f(x) : f(2) = 0\}.$$

    1.  Give a simple description of $W_{1} \cap W_{2}$.

    2.  Show that every element of $\mathbb{R}[x]$ can be written in the
        form $$f(x) =
          g_{1}(x) + g_{2}(x)$$ where $g_{1}(x) \in W_{1}$ and
        $g_{2}(x) \in
          W_{2}$. Is this decomposition unique?
    :::

4.  []{#problem-02-04 label="problem-02-04"}

    ::: {.questionjupyter}
    Suppose that $$W = 
      \left\{ 
      \begin{pmatrix} 
        x+y-z \\
        y-x+z \\
        2x    \\
      \end{pmatrix} 
      \biggm | 
      x,y,z \in \mathbb{R} 
      \right\}.$$

    1.  Show that $W$ is a subspace of $\mathbb{R}^{3}$.

    2.  Show that $$\mathcal{A} =   
                \left\{ \begin{pmatrix} 1 \\
                  -1 \\
                  2 \\
                \end{pmatrix}, \begin{pmatrix} 1 \\
                  1 \\
                  0 \\
                \end{pmatrix},
                \begin{pmatrix} -1 \\
                  1 \\
                  0 \\
                \end{pmatrix} \right\}$$ is a spanning set for $W$. Is
        $\mathcal{A}$ linearly independent?

    3.  Determine the dimension of $W$ and hence whether or not $W =
                \mathbb{R}^{3}$.
    :::

5.  []{#problem-02-05 label="problem-02-05"}

    ::: {.question}
    Let $V$ be a vector space and let $W_{1}$ and $W_{2}$ be
    finite-dimensional subspaces of $V$.

    1.  If $\mathscr{A}_{1}$ and $\mathscr{A}_{2}$ span
        $W_{1}$ and $W_{2}$, respectively, show that
        $\mathscr{A}_{1} \cup \mathscr{A}_{2}$ is a spanning set
        for $W_{1} + W_{2}$.

    2.  If $\mathscr{A}_{1}$ and $\mathscr{A}_2$ are bases for $W_1$ and
        $W_2$, respectively, is
        $\mathscr{A}_{1} \cup \mathscr{A}_{2}$ necesssarily a basis
        for $W_{1}+W_{2}$? Provide a counterexample if not.
    :::

6.  []{#problem-02-06 label="problem-02-06"}

    ::: {.questionjupyter}
    Let $$\vec{v}_{1} = \begin{pmatrix} 2 \\
     1 \\
     0 \\
     -1 \\
     \end{pmatrix}, \vec{v}_{2} = \begin{pmatrix} 4 \\
     8 \\
     -4 \\
     -3 \\
     \end{pmatrix},
    \vec{v}_{3} = \begin{pmatrix} 1 \\
     -3 \\
     2 \\
     0 \\
     \end{pmatrix}, \\
    \vec{v}_{4} = \begin{pmatrix} 1 \\
     10 \\
     -6 \\
     -2 \\
     \end{pmatrix}, \vec{v}_{5} = \begin{pmatrix} -2 \\
     0 \\
     6 \\
     1 \\
     \end{pmatrix},
    \vec{v}_{6} = \begin{pmatrix} 3 \\
     -1 \\
     2 \\
     4 \\
     \end{pmatrix}$$ be six vectors in the vector
    space $\mathbb{R}^{4}$. Let $U =
    \operatorname{Span}(\vec{v}_{1},\vec{v}_{2},\vec{v}_{3},\vec{v}_{4})$
    and $W =
    \operatorname{Span}(\vec{v}_{4},\vec{v}_{5},\vec{v}_{6})$. Determine
    the following:

    1.  $\dim U$

    2.  $\dim W$

    3.  $\dim U + W$

    \[Hint: Determine whether $\{
    \vec{v}_{1},\vec{v}_{2},\vec{v}_{3},\vec{v}_{4} \}$ is linearly
    independent. If not, pass to a subset which also spans $U$.
    Similarly, for $W$ and $U+W$, making use of the previous question to
    provide spanning set for the sum.\]
    :::

7.  []{#problem-02-07 label="problem-02-07"}

    ::: {.questionjupyter}
    Consider the following set $\mathscr{A}$ of vectors in
    $\mathbb{R}^{3}$ or $\mathbb{R}^{4}$ (respectively). Find a
    subset $\mathscr{B}$ of $\mathscr{A}$ that is a basis for the
    subspace $U = \operatorname{Span}(\mathscr{A})$.

    1.  $\displaystyle \mathscr{A} = \left\{ \begin{pmatrix} 2 \\
         -1 \\
         2 \\
         \end{pmatrix},
            \begin{pmatrix} 1 \\
         1 \\
         3 \\
         \end{pmatrix}, \begin{pmatrix} 0 \\
         1 \\
         1 \\
         \end{pmatrix}, \begin{pmatrix} 4 \\
         -1 \\
         3 \\
         \end{pmatrix}
          \right\}$

    2.  $\displaystyle \mathscr{A} = \left\{ \begin{pmatrix} 0 \\
         2 \\
         -3 \\
         -3 \\
         \end{pmatrix},
            \begin{pmatrix} 1 \\
         1 \\
         -2 \\
         0 \\
         \end{pmatrix}, \begin{pmatrix} 2 \\
         0 \\
         -1 \\
         3 \\
         \end{pmatrix},
            \begin{pmatrix} -7 \\
         3 \\
         -1 \\
         -15 \\
         \end{pmatrix} \right\}$
    :::

8.  []{#problem-02-08 label="problem-02-08"}

    ::: {.question}
    Let $V$ be the subspace of the space $\mathbb{R}[x]$ of real
    polynomials spanned by the following polynomials:
    $$f_{1}(x) = x^{3} + 2x^{2} + 1, \qquad f_{2}(x) = x^{2} + 3x + 4,
    \qquad f_{3}(x) = 2x^{3} - 12x - 2.$$

    1.  Find a subset $\mathscr{A}$
        of $\{ f_{1}(x), f_{2}(x), f_{3}(x) \}$ which is a basis for $V$
        and hence determine the dimension of $V$.

    2.  Find a basis $\mathscr{B}$ for the subspace $\mathbb{R}[x]$
        consisting of polynomials of degree at most $4$ such that
        $\mathscr{A} \subseteq \mathscr{B}$. \[That is,
        extend $\mathscr{A}$ to a basis $\mathscr{B}$ for the space of
        polynomials of degree at most $4$.\]
    :::

9.  []{#problem-02-09 label="problem-02-09"}

    ::: {.question}
    Let $V$ be a finite-dimensional vector space and $W$ be a subspace
    of $V$.

    1.  Show that $W$ is finite-dimensional and that
        $\dim W \leq \dim V$.

    2.  Show that $V = W$ if and only if $\dim V = \dim W$.
    :::

10. []{#problem-02-10 label="problem-02-10"}

    ::: {.question}
    Let $V$ be a finite-dimensional vector space with subspaces
    $U$ and $W$. Let $\mathscr{A} = \{ v_{1},v_{2},\dots,v_{k} \}$ be a
    basis for $U \cap W$. Extend $\mathscr{A}$ to a basis
    $\mathscr{B}_{1} = \{ v_{1},v_{2},\dots,v_{k},u_{k+1},\dots,u_{m} \}$
    for $U$ and extend $\mathscr{A}$ to a basis
    $\mathscr{B}_{2} = \{ v_{1},v_{2},\dots,v_{k},w_{k+1},\dots,w_{n} \}$
    for $W$.

    Show that the set $$\mathscr{B}_{1} \cup \mathscr{B}_{2} = \{
          v_{1},v_{2},\dots,v_{k},u_{k+1},\dots,u_{m},w_{k+1},\dots,w_{n} \}$$
    is a basis for $U + W$.

    Deduce that $\dim(U+W) = \dim U + \dim W - \dim(U \cap W)$.
    :::
