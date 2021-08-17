+++
title = "Section 2 - Vector spaces"
alias = "02-vector-spaces"
+++

### 2.1 Definition and examples of vector spaces

The first step in the definition of a vector space is to define what we
mean by "scalars".

{{< div def >}}
#### Definition 2.1.1 (**Field.**). 
A ***field*** is a set $F$ together with two binary operations 
$$\begin{align\*}
    F \times F      & \longrightarrow F                  & F \times F     & \longrightarrow F   \\\\
    (\alpha, \beta) & \mapsto \alpha + \beta & (\alpha,\beta) & \mapsto
    \alpha\beta
  \end{align\*}$$ 
called ***addition*** and ***multiplication***, respectively,
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
{{< / div >}}

#### Remark:

For those of you who took MT2505, you will notice that $F$ under $+$ is an
(additive) abelian group, whose identity is $0$, and that $F\setminus\\{0\\}$
under multiplication is an abelian group, whose identity is $1$, and that the
two operation are linked by item, which states that multiplication distributes
over addition.

We are not going to examine these axioms any further nor investigate the
theory of fields. Instead, we note that in a field it is possible to
add, subtract, multiply and divide (by *non-zero* scalars) and that all
normal rules of arithmetic hold. This is illustrated by the following
examples.

{{< div ex >}}
#### Example 2.1.2 (Examples of fields.). 
The following are examples of fields:

1.  $\mathbb{Q}= \\{ m/n \mid m,n \in \mathbb{Z}, n \neq 0 \\}$

2.  $\mathbb{R}$

3.  $\mathbb{C}= \\{ x+iy \mid x,y \in \mathbb{R}\\}$
    with all three possessing the usual addition and multiplication.

4.  $\mathbb{Z}/p\mathbb{Z}= \\{ 0,1,\dots,p-1 \\}$, where $p$ is a prime
    number, with addition and multiplication being performed
    modulo $p$.
{{< / div >}}

The latter example is important in the context of pure mathematics. For
the purposes many applications of linear algebra in applied mathematics
and the physical sciences, the examples $\mathbb{R}$ and $\mathbb{C}$
are the most important. For those of a pure mathematical bent, however,
it is worth noting that much of what is done in this course will work
over an arbitrary field.

{{< div def >}}
#### Definition 2.1.3 (Vector space.). 
Let $F$ be a field. A ***vector space*** over $F$ is a set $V$ together with
the following operations
$$\begin{align\*}
    V \times V & \longrightarrow V       & F \times V & \longrightarrow V             \\\\
    (u,v)      & \mapsto u+v & (\alpha,v) & \mapsto \alpha v,
  \end{align\*}$$ 
  called ***addition*** and ***scalar multiplication***,
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
{{< / div >}}

#### Comments about the definition of a vector space:

1.  For those of you who took MT2505, note that $V$ under addition of
    vectors is an abelian group with identity $\vec{0}$.

2.  A vector space consists of a collection of ***vectors*** which we can
    add together and multiply by ***scalars***. Vectors are just the names
    for elements of a vector space, and do not have to be columns or
    rows of numbers.

3.  Note that the zero element of the field $F$ is denoted $0$, the zero
    vector is denoted $\vec{0}$, and the vector space containing
    $\vec{0}$ is denoted $\operatorname{Span}(\vec{0}) = \{\vec{0}\}$.

4.  We shall use the term ***real vector space*** to refer to a vector space
    over the field $\mathbb{R}$ and ***complex vector space*** to refer to
    one over the field $\mathbb{C}$.

5.  We shall sometimes refer simply to a vector space $V$ without
    specifying the base field $F$. Nevertheless, there is always such a
    field $F$ and we will use the term ***scalar*** to refer to the elements
    of this field when we fail to actually name it.

To illustrate, we shall give a number of examples, many of which should
be familiar (not least from MT2501).

{{< div ex >}}
#### Example 2.1.4 (Examples of vector spaces.).

1.  Let $n$ be a positive integer and let $F^{n}$ denote the set of
    column vectors of length $n$ with entries from the field $F$:
    $$F^{n} = 
    \left\\{
      \begin{pmatrix}
      x_{1}\\\\
      x_{2}\\\\
      \vdots\\\\
      x_{n}
      \end{pmatrix}
      \ :\ 
      x_{1},x_{2},\dots,x_{n} \in F
      \right
      \\}.$$

    This is an example of a vector space over $F$. Addition in $F^{n}$ is given by 
    $$%
      \begin{pmatrix}
      x_{1}\\\\
      x_{2}\\\\
      \vdots\\\\
      x_{n}
      \end{pmatrix} + 
      \begin{pmatrix}
      y_{1}\\\\
      y_{2}\\\\
      \vdots\\\\
      y_{n}
      \end{pmatrix} 
      = \begin{pmatrix}
                  x_{1}+y_{1} \\\\ x_{2}+y_{2} \\\\ \vdots \\\\ x_{n}+y_{n} \end{pmatrix},$$
    while scalar multiplication is similarly given by $$\alpha %
      \begin{pmatrix}x_{1}\\\\x_{2}\\\\\vdots\\\\x_{n}\end{pmatrix} = %
      \begin{pmatrix}\alpha x_{1}\\\\\alpha x_{2}\\\\\vdots\\\\\alpha x_{n}\end{pmatrix}.$$
    The zero vector is $$\vec{0} = %
      \begin{pmatrix}0\\\\0\\\\\vdots\\\\0\end{pmatrix}$$ and $$-%
      \begin{pmatrix}x_{1}\\\\x_{2}\\\\\vdots\\\\x_{n}\end{pmatrix} = %
      \begin{pmatrix}-x_{1}\\\\-x_{2}\\\\\vdots\\\\-x_{n}\end{pmatrix}$$
    specifies the negative of a vector.

2.  The complex numbers $\mathbb{C}$ can be viewed as a vector space
    over $\mathbb{R}$. Addition is the usual addition of complex
    numbers:
    $$(x_{1}+iy_{1}) + (x_{2}+iy_{2}) = (x_{1}+x_{2}) + i(y_{1}+y_{2});$$
    while scalar multiplication is given by
    $$\alpha(x+iy) = (\alpha x) + i(\alpha y) \qquad \text{(for
                  $\alpha \in \mathbb{R}$).}$$ The zero vector is the
    element $0 = 0 + i0 \in \mathbb{C}$.

    Every field can be viewed as a vector space over any subfield, but
    that is not particularly important for this course.

3.  A *polynomial* over the field $F$ is an expression of the form
    $$f(x) = a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m},$$ for
    some $m \geqslant 0$, where $a_{0},a_{1},\dots,a_{m} \in F$. The set
    of all polynomials over $F$ is usually denoted by $F\[x\]$. If
    necessary we can "pad" such an expression for a polynomial using $0$
    as the coefficient for the extra terms to increase its length. Thus
    to add $f(x)$ to another polynomial $g(x)$, we may assume they are
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

4.  Let $\mathcal{F}\_{\mathbb{R}}$ denote the set of all functions from
    $\mathbb{R}$ to $\mathbb{R}$. Define the addition of two such
    functions $f$ and $g$ by
    $$(f+g)(x) = f(x) + g(x) \qquad \text{(for $x \in \mathbb{R}$)}$$
    and scalar multiplication of $f$ by $\alpha \in \mathbb{R}$ by
    $$(\alpha f)(x) = \alpha \cdot f(x) \qquad \text{(for $x \in \mathbb{R}$)}.$$
    Then $\mathcal{F}_{\mathbb{R}}$ is a real vector space with
    $$(-f)(x) = -f(x)$$ and the zero is the function given by
    $x \mapsto 0$ for all $x \in
                \mathbb{R}$.
{{< / div >}}

We end this section by stating some basic properties of vector spaces
that you probably remember from MT2501.

{{< div theorem >}}
#### Proposition 2.1.5 (cf. MT2501).
*Let $V$ be a vector space over a field $F$, let $v \in V$, and let $\alpha \in
F$. Then the following hold:*

1.  *$\alpha \vec{0} = \vec{0}$;*

2.  *$0 v = \vec{0}$;*

3.  *if $\alpha v = \vec{0}$, then either $\alpha = 0$ or
    $v = \vec{0}$;*

4.  *$(-\alpha)v = -\alpha v = \alpha(-v)$.*
{{< / div >}}

### 2.2 Subspaces

Although linear algebra is a branch of mathematics that is used
throughout the whole spectrum of pure and applied mathematics, it is
nonetheless a branch of algebra. As a consequence, we should expect to
do the sort of thing that is done throughout algebra, namely examine
substructures and structure preserving maps. For the former, we make the
following definition.

{{< div def >}}
#### Definition 1.6 (Subspace.). 
*Let $V$ be a vector space over a field $F$. A *subspace* $W$ of $V$ is a
non-empty subset of $V$ which itself forms a vector space over $F$ under the
same operations as $V$.*
{{< / div >}}

{{< div theorem >}}
#### Lemma 2.2.1.
*Let $V$ be a vector space and let $W$ be a subspace of $V$. Then:*

1.  *$\vec{0} \in W$ (where $\vec{0}$ is the zero vector of $V$);*

2.  *if $v \in W$, then $-v \in W$ (where $-v$ is the additive inverse
    of the vector $v$ in $V$).*
{{< / div >}}

**Proof:** **1.** Since $W$ is non-empty, there exists at
least one vector $u \in W$. Since $W$ is closed under scalar
multiplication (it is a vector space), it follows that
$\vec{0}=0u \in W$ (by [Proposition 2.1.5](#proposition-215-cf-mt2501)(2)).

**2.** If $v\in W$, then $W$ contains $(-1)v = -1v = -v$ (by 
[Proposition 2.1.5](#proposition-215-cf-mt2501)(4)).  $\square$

{{< div theorem >}}
#### Theorem 2.2.2 (Subspace criteria (cf. MT2501).). 
*Let $V$ be a vector space over a field $F$ and let $W$ be a subset of $V$.
Then $W$ is a subspace of $V$ if and only if*

1.  *$W$ is non-empty;*

2.  *if $u,v \in W$, then $u+v \in W$; and*

3.  *if $v \in W$ and $\alpha \in F$, then $\alpha v \in W$.*
{{< / div >}}

{{< div omex >}}
#### Example 2.2A (Examples of subspaces.). 
Many examples of subspaces were presented in MT2501. We list a few here with
full details, but these details will probably be omitted during the lectures.

1.  Let $V = \mathbb{R}^{3}$, the real vector space of column vectors
    of length $3$. Consider
    $$W = \left\\{ \\begin{pmatrix}x\\\\y\\\\ 0\end{pmatrix} | x,y \in \mathbb{R}\right\\}
                \subseteq \mathbb{R}^{3};$$ 
                so $W$ consists of all
    vectors with zero in the last entry. We check
    $$\begin{pmatrix}x_{1}\\\\\\\\y_{1}\\\\\\\\0\end{pmatrix} + \begin{pmatrix}x_{2}\\\\\\\\y_{2}\\\\\\\\0\end{pmatrix} =
                \begin{pmatrix}x_{1}+x_{2}\\\\\\\\y_{1}+y_{2}\\\\\\\\0\end{pmatrix} \in W$$
    and
    $$\alpha \begin{pmatrix}x\\\\\\\\y\\\\\\\\0\end{pmatrix} = \begin{pmatrix}\alpha x\\\\\\\\\alpha y\\\\\\\\0\end{pmatrix}
                \in W \qquad \text{(for $\alpha \in \mathbb{R}$)}.$$
    Thus $W$ is closed under sums and scalar multiplication; that is,
    $W$ is a subspace of $\mathbb{R}^{3}$.

2.  Let $\mathcal{F}\_{\mathbb{R}}$ be the set of all functions $f
                : \mathbb{R}\longrightarrow\mathbb{R}$, which forms a
    real vector space under
    $$(f + g)(x) = f(x) + g(x); \qquad (\alpha f)(x) = \alpha \cdot f(x).$$
    Let $\mathcal{P}$ denote the set of polynomial functions; i.e., each
    $f \in \mathcal{P}$ has the form
    $$f(x) = a_{0} + a_{1}x + a_{2}x^{2} + \dots + a_{m}x^{m}$$ for some
    $m \geqslant 0$ and $a_{0},a_{1},\dots,a_{m} \in \mathbb{R}$. Then
    $\mathcal{P} \subseteq \mathcal{F}_{\mathbb{R}}$ and, since the sum
    of two polynomials is a polynomial and a scalar multiple of a
    polynomial is a polynomial, $\mathcal{P}$ is a subspace
    of $\mathcal{F}_{\mathbb{R}}$.
{{< / div >}}

{{< div def >}}
#### Definition 1.9 (**Intersection, sum of subspaces.**). 
Let $V$ be a vector space and let $U$ and $W$ be subspaces of $V$.

1.  The ***intersection*** of $U$ and $W$ is
    $U \cap W = \\{v\mid\text{$v \in U$ and $v \in W$}\\}$.

2.  The ***sum*** of $U$ and $W$ is
    $U + W = \\{u+w\mid u \in U, w \in W\\}$.
{{< / div >}}

Since $V$ is a vector space, addition of a vector $u \in U \subseteq
  V$ and $w \in W \subseteq V$ makes sense. Thus the sum $U + W$ is a
sensible collection of vectors in $V$.

{{< div theorem >}}
#### Proposition 1.10 (cf. MT2501). 
Let $V$ be a vector space and let $U$ and $W$ be subspaces of $V$. Then

1.  $U \cap W$ is a subspace of $V$;

2.  $U + W$ is a subspace of $V$.
{{< / div >}}

**Proof:** **1.** This is in MT2501.

**2.** Using the fact that $\vec{0}$ lies in $U$ and $W$, we see
$\vec{0} = \vec{0} + \vec{0} \in U+W$. Hence $U+W$ is non-empty. Now let
$v_{1},v_{2} \in
    U+W$, say $v_{1} = u_{1}+w_{1}$ and $v_{2} = u_{2}+w_{2}$ where
$u_{1},u_{2}
    \in U$ and $w_{1},w_{2} \in W$. Then
$$v_{1}+v_{2} = (u_{1}+w_{1}) + (u_{2}+w_{2}) = (u_{1}+u_{2}) +
    (w_{1}+w_{2}) \in U+W$$ and if $\alpha$ is a scalar then
$$\alpha v_{1} = \alpha(u_{1}+w_{1}) = (\alpha u_{1}) + (\alpha w_{1})
    \in U + W.$$ Hence $U+W$ is a subspace of $V$. $\square$

A straightforward induction argument establishes the following result.

{{< div theorem >}}
#### Corollary 1.11. 
*Let $V$ be a vector space and let* $U_{1}$, $U_{2}$, ..., $U_{k}$ 
be subspaces of $V$. Then
$$U_{1}+U_{2}+\dots+U_{k} = \\{ u_{1}+u_{2}+\dots+u_{k} \mid
    \text{$u_{i} \in U_{i}$ for each $i$}\\}$$ 

*is a subspace of* $V$.
{{< / div >}}
