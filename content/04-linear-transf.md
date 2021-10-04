# Linear transformations
{{< chapter 3 >}}

## Definition and basic properties

Linear transformations are functions between vector spaces that interact
well with the vector space structure and probably the most important
thing we study in linear algebra.

::: {.defn}
[]{#def:lintransf label="def:lintransf"} Let
$V$ and $W$ be vector spaces over the same field $F$. A ***linear
transformation*** from $V$ to $W$ is a function $T : V \to W$ such that

1.  $T(u+v) = T(u) + T(v)$ for all $u,v \in V$, and

2.  $T(\alpha v) = \alpha T(v)$ for all $v \in V$ and $\alpha \in
                F$.
:::

Linear transformations were discussed in great detail during the MT2501
module. We recall below some of these facts but omit the proofs in the
lectures.

::: {.lemma}
[]{#lem:lintrans label="lem:lintrans"} Let $T : V \to W$
be a linear transformation between two vector spaces over the field $F$.
Then

1.  if $v_{1},v_{2},\dots,v_{k} \in V$ and
    $\alpha_{1},\alpha_{2},\dots,\alpha_{k} \in F$, then
    $$T\biggl( \sum_{i=1}^{k} \alpha_{i}v_{i} \biggr) = \sum_{i=1}^{k}
                \alpha_{i} T(v_{i}) .$$

2.  $T(\vec{0}) = \vec{0}$;

3.  $T(-v) = -T(v)$ for all $v \in V$;
:::

::: {.prop}
[]{#prop:mapconstruct label="prop:mapconstruct"}
Let $V$ be a finite-dimensional vector space over the field $F$ with
basis $\mathscr{B} = \{ v_{1},v_{2},\dots,v_{n} \}$ and let $W$ be any
vector space over $F$. If $y_{1}$, $y_{2}$, ..., $y_{n}\in W$ are
arbitrary, then the *unique* linear transformation $T : V \to W$ such
that $T(v_{i}) = y_{i}$ for all $i = 1$, $2$, ..., $n$ is defined by
$$T\left(\sum_{i = 1} ^ {n} \alpha_i v_i\right) =\sum_{i = 1} ^ {n} \alpha_i
    T(v_i).$$
:::

::: {.defn}
Let $T : V \to W$ be a linear transformation between vector spaces over
a field $F$.

1.  The ***image*** of $T$ is
    $$T(V) = \operatorname{im} T = \{T(v) : v \in V\}.$$

2.  The ***kernel*** or ***null space*** of $T$ is
    $$\ker T = \{v \in V : T(v) = \vec{0}_{W}\},$$ where $\vec{0}_W$ is
    the zero vector in $W$.
:::

::: {.prop}
[]{#prop-image-kernel-subspaces label="prop-image-kernel-subspaces"} Let $T : V \to W$ be a linear
transformation between vector spaces $V$ and $W$ over the field $F$. The
image and kernel of $T$ are subspaces of $W$ and $V$, respectively.
:::

::: {.defn}
Let $T : V \to W$ be a linear transformation between vector spaces over
the field $F$.

1.  The ***rank*** of $T$, which we shall denote
    $\operatorname{rank}{T}$, is the dimension of the image of $T$.

2.  The ***nullity*** of $T$, which we shall denote
    $\operatorname{null}{T}$, is the dimension of the null space of $T$.
:::

::: {.thm}
[]{#thm-rank-nullity label="thm-rank-nullity"} Let
$V$ and $W$ be vector spaces over the field $F$ with
$V$ finite-dimensional and let $T : V \to W$ be a linear transformation.
Then $$\operatorname{rank}{T} + \operatorname{null}{T} = \dim V.$$
:::

For those who have taken MT2505, the Rank-Nullity Theorem can be viewed
as an analogue of the First Isomorphism Theorem for groups within the
world of vector spaces. Rearranging gives
$$\dim V - \dim \ker T = \dim \operatorname{im} T$$ and since (as we
shall see later) dimension essentially determines vector spaces we
conclude $$V / \ker T \cong \operatorname{im} T.$$ Of course, we have
not yet specified what is meant by a quotient or an isomorphism, but
this does give some context for the theorem.

::: {.omittedexampjupyter}
[]{#ex:linmap1 label="ex:linmap1"} Define a linear
transformation $T : \mathbb{R}^{4} \to \mathbb{R}^{3}$ in terms of the
standard basis
$\mathscr{B} = \{ \vec{e}_{1},\vec{e}_{2},\vec{e}_{3},\vec{e}_{4} \}$ by
$$\begin{aligned}
    T(\vec{e}_{1}) & = \vec{y}_{1} = \begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix},
              & T(\vec{e}_{2})                             & = \vec{y}_{2} = \begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix},   \\
    T(\vec{e}_{3}) & = \vec{y}_{3} = \begin{pmatrix} 0 \\ 1 \\ 5 \\ \end{pmatrix},
              & T(\vec{e}_{4})                             & = \vec{y}_{4} = \begin{pmatrix} -5 \\ -2 \\ -5 \\ \end{pmatrix}.
  \end{aligned}$$ Calculate the linear transformation $T$ and its rank
and nullity.
:::

::: {.solution}
The effect of $T$ on an arbitrary vector of $\mathbb{R}^{4}$ can be
calculated by the linearity property: $$\begin{aligned}
    T \begin{pmatrix} \alpha \\ \beta \\ \gamma \\ \delta \end{pmatrix}
     & = T( \alpha\vec{e}_{1} + \beta\vec{e}_{2} + \gamma\vec{e}_{3} + \delta\vec{e}_{4} )    \\
     & = \alpha T(\vec{e}_{1}) + \beta T(\vec{e}_{2}) + \gamma T(\vec{e}_{3}) + \delta
    T(\vec{e}_{4})                                                             \\
     & = \alpha\begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix} + \beta\begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix} +
    \gamma\begin{pmatrix} 0 \\ 1 \\ 5 \\ \end{pmatrix} + \delta\begin{pmatrix} -5 \\ -2 \\ -5 \\ \end{pmatrix}              \\
     & = \begin{pmatrix} 2\alpha-\beta-5\delta \\ \alpha+\gamma-2\delta \\ 3\alpha
     +\beta+5\gamma-5\delta \end{pmatrix}.
  \end{aligned}$$

\[[Exercise:]{.smallcaps} Check by hand that this formula does really
define a linear transformation
$T : \mathbb{R}^{4} \to \mathbb{R}^{3}$.\]

Now let us determine the kernel of this transformation $T$. Suppose
$\vec{v} \in \ker T$. Here $\vec{v}$ is some vector in $\mathbb{R}^{4}$,
say
$$\vec{v} = \begin{pmatrix} \alpha \\ \beta \\ \gamma \\ \delta \end{pmatrix} =
    \alpha\vec{e}_{1} + \beta\vec{e}_{2} + \gamma\vec{e}_{3} + \delta\vec{e}_{4}$$
where $$T(\vec{v}) =
    \begin{pmatrix} 2\alpha-\beta-5\delta \\ 
      \alpha+\gamma-2\delta \\ 
      3\alpha +\beta+5\gamma-5\delta
    \end{pmatrix} =
    \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix}.$$ We have here three
simultaneous equations in four variables which we convert to the matrix
equation $$\begin{pmatrix}
      2 & -1 & 0 & -5 \\
      1 & 0  & 1 & -2 \\
      3 & 1  & 5 & -5
    \end{pmatrix}
    \begin{pmatrix} \alpha \\ \beta \\ \gamma \\ \delta \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix}.$$
We solve this by performing the usual row operations used in Gaussian
elimination \[see MT2501\]: $$\begin{aligned}
    \left( \begin{array}{c|c}
        \begin{matrix}
          2 & -1 & 0 & -5 \\
          1 & 0  & 1 & -2 \\
          3 & 1  & 5 & -5
        \end{matrix} &
        \begin{matrix} 0 \\ 0 \\ 0 \end{matrix}
      \end{array} \right) & \longrightarrow
    %
    \left( \begin{array}{c|c}
        \begin{matrix}
          1 & 0  & 1 & -2 \\
          2 & -1 & 0 & -5 \\
          3 & 1  & 5 & -5
        \end{matrix} &
        \begin{matrix} 0 \\ 0 \\ 0 \end{matrix}
      \end{array} \right)
                                               &                 & (r_{1} \leftrightarrow r_{2})     \\
    %
                                               & \longrightarrow
    \left( \begin{array}{c|c}
        \begin{matrix}
          1 & 0  & 1  & -2 \\
          0 & -1 & -2 & -1 \\
          0 & 1  & 2  & 1
        \end{matrix} &
        \begin{matrix} 0 \\ 0 \\ 0 \end{matrix}
      \end{array} \right)
                                               &                 & \!\!\!\begin{array}{r@{}l}
      ( r_{2} & {} \mapsto r_{2}-2r_{1}, \\
      r_{3}   & {} \mapsto r_{3}-3r_{1})
    \end{array} \\
    %
                                               & \longrightarrow
    \left( \begin{array}{c|c}
        \begin{matrix}
          1 & 0 & 1 & -2 \\
          0 & 1 & 2 & 1  \\
          0 & 0 & 0 & 0
        \end{matrix} &
        \begin{matrix} 0 \\ 0 \\ 0 \end{matrix}
      \end{array} \right)
                                               &                 & \!\!\!\begin{array}{r@{}l}
      ( r_{3} & {} \mapsto r_{3} + r_{2}, \\
      r_{2}   & {} \mapsto -r_{2} )
    \end{array}
  \end{aligned}$$ So given arbitrary $\gamma$ and $\delta$, we require
$$\alpha + \gamma -2\delta = 0
    \qquad \text{and} \qquad
    \beta + 2\gamma + \delta = 0.$$ We remain with two degrees of
freedom (the free choice of $\gamma$ and $\delta$) and so $\ker T$ is
$2$-dimensional: $$\begin{aligned}
    \ker T & = \left\{
    \begin{pmatrix} -\gamma+2\delta \\ -2\gamma-\delta \\ \gamma \\ \delta \end{pmatrix}
    \;\middle|\; \gamma,\delta \in \mathbb{R} \right\}                                    \\
           & = \left\{ \gamma\begin{pmatrix} -1 \\ -2 \\ 1 \\ 0 \end{pmatrix} + \delta\begin{pmatrix} 2 \\ -1 \\ 0 \\ 1 \end{pmatrix}
    \;\middle|\; \gamma,\delta \in \mathbb{R} \right\}                                    \\
           & = \operatorname{Span} \left( \begin{pmatrix} -1 \\ -2 \\ 1 \\ 0 \end{pmatrix},
    \begin{pmatrix} 2 \\ -1 \\ 0 \\ 1 \end{pmatrix} \right).
  \end{aligned}$$ It is easy to check these two spanning vectors are
linearly independent, so $\operatorname{null}{T} = \dim \ker T = 2$. The
Rank-Nullity Theorem then says
$$\operatorname{rank}{T} = \dim \mathbb{R}^{4} - \operatorname{null}{T} = 4 - 2 = 2.$$
Essentially this boils down to the four image vectors
$\vec{y}_{1}$, $\vec{y}_{2}$, $\vec{y}_{3}$, $\vec{y}_{4}$ spanning a
$2$-dimensional space. Indeed, note that they are not linearly
independent because $$\begin{gathered}
    \vec{y}_{3} = \begin{pmatrix} 0 \\ 1 \\ 5 \\ \end{pmatrix} = \begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix} + 2
    \begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix} = \vec{y}_{1} + 2\vec{y}_{2} \\
    \vec{y}_{4} = \begin{pmatrix} -5 \\ -2 \\ -5 \\ \end{pmatrix} = -2\begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix} +
    \begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix} = -2\vec{y}_{1} + \vec{y}_{2}.
  \end{gathered}$$ The full explanation behind this lies in the
following result.
:::

We have described the basic facts about linear transformations. It is
possible to describe various examples of linear transformations, some of
which can seem natural, some more esoteric.

::: {.prop}
[]{#prop-surj-inj label="prop-surj-inj"} Let $V$ be a
finite-dimensional vector space over the field $F$ with basis
$\{ v_{1},v_{2},\dots,v_{n} \}$ and let $W$ be a vector space over $F$.
Fix vectors $y_{1}$, $y_{2}$, ..., $y_{n}$ in $W$ and let $T : V \to W$
be the unique linear transformation given by $T(v_{i}) = y_{i}$ for
$i = 1$, $2$, ..., $n$. Then

1.  $\operatorname{im} T = \operatorname{Span}(y_{1},y_{2},\dots,y_{n})$.

2.  $\ker T = \{\vec{0}\}$ if and only if
    $\{y_{1},y_{2},\dots,y_{n}\}$ is a linearly independent set.
:::

::: {.proof}
*Proof.* **(1)** If $x \in \operatorname{im} T$, then $x = T(v)$ for
some $v \in V$. We can write $v = \sum_{i=1}^{n} \alpha_{i}v_{i}$ for
some $\alpha_{i} \in
    F$. Then
$$x = T(v) = T\biggl( \sum_{i=1}^{n} \alpha_{i}v_{i} \biggr) =
    \sum_{i=1}^{n} \alpha_{i} T(v_{i}) = \sum_{i=1}^{n} \alpha_{i}y_{i} \in
    \operatorname{Span}(y_1, y_2, \ldots, y_n).$$ Hence
$\operatorname{im} T \subseteq \operatorname{Span}(y_1, y_2, \ldots,
  y_n)$. On the other hand, since $y_i = T(v_i)\in \operatorname{im} T$
for all $i$, and $\operatorname{im} T$ is a subspace of $W$
([Proposition 4.1.5]({{< ref "04-linear-transf#prop-image-kernel-subspaces" >}})), it follows that
$\operatorname{Span}(y_1, y_2, \ldots, y_n) \subseteq \operatorname{im} T$.
Thus $\operatorname{im} T = \operatorname{Span}(y_1, y_2, \ldots, y_n)$.

**(2)** ($\Rightarrow$) Suppose that $\ker T = \{\vec{0}\}$. By part
(1),
$\operatorname{im} T = \operatorname{Span}(y_{1},y_{2},\dots,y_{n})$ and
so by [Corollary 2.4.10]({{< ref "02-vector-spaces#thm-basis-subset" >}}), $\{y_1, y_2, \ldots, y_n\}$ contains a
linearly independent subset $\mathscr{B}$ such that
$\operatorname{Span}(\mathscr{B})
  = \operatorname{Span}(y_1, y_2, \ldots, y_n) = \operatorname{im} T$.
It follows that
$|\mathscr{B}| = \dim \operatorname{im} T = \operatorname{rank}
  T$. By the Rank-Nullity Theorem, $\dim V = n = \operatorname{rank} T +
  \operatorname{null} T = \operatorname{rank} T = \dim \operatorname{im} T$,
since $\operatorname{null} T = \dim \ker T = 0$. Therefore
$\mathscr{B} =
  \{y_1, y_2, \ldots, y_n\}$ and so $\{y_1, y_2, \ldots, y_n\}$ is a
basis for $\operatorname{im} T$ and, in particular, it is linearly
independent.

($\Leftarrow$) If $\{y_{1},y_{2},\dots,y_{n}\}$ is linearly independent,
then since
$\operatorname{Span}(y_{1},y_{2},\dots,y_{n}) = \operatorname{im} T$, it
follows that $\{y_{1},y_{2},\dots,y_{n}\}$ is a basis for
$\operatorname{im} T$
([Theorem 2.4.8]({{< ref "02-vector-spaces#thm-3-conditions" >}})) and so $\operatorname{rank} T = n$.
Hence, by the Rank-Nullity Theorem,
$\dim \ker T = \operatorname{null} T = \dim V - \operatorname{rank} V = n - n = 0$,
and so $\ker T = \{\vec{0}\}$.

**Alternative direct proof of (2).** ($\Leftarrow$) Suppose that
$\{y_1, y_2, \ldots, y_n\}$ is linearly independent. If $v\in
    \ker T$ is arbitrary, then $v = \sum_{i=1}^{n} \alpha_{i}v_{i}$ for
some $\alpha_i\in F$ and
$$\vec{0} = T(v) = \sum_{i=1}^{n} \alpha_{i}T(v_{i}) =
    \sum_{i=1}^{n} \alpha_{i}y_{i}.$$ Since $\{y_1, y_2, \ldots, y_n\}$
is linearly independent, it follows that $\alpha_i = 0$ for all $i$ and
so $v = \vec{0}$.

($\Rightarrow$) Suppose that $\ker T = \{\vec{0}\}$. If
$\sum_{i=1}^{n} \alpha_{i}y_{i} = \vec{0}\in W$ for some
$\alpha_i\in F$, then
$$T\left(\sum_{i=1}^{n} \alpha_{i}v_{i}\right) = \sum_{i=1}^{n}
    \alpha_{i}T(v_{i}) = \sum_{i=1}^{n} \alpha_{i}y_{i} = \vec{0},$$ and
so $\sum_{i=1}^{n} \alpha_{i}v_{i}\in \ker T = \{\vec{0}\}$. It follows
that $\sum_{i=1}^{n} \alpha_{i}v_{i} = \vec{0}$ and so $\alpha_i = 0$
for all $i$, and so $\{y_1, y_2, \ldots, y_n\}$ is linearly
independent. ◻
:::

::: {.omittedexamp}
Define a linear transformation $T : \mathbb{R}^{3} \to \mathbb{R}^{3}$
in terms of the standard basis
$\mathscr{B} = \{ \vec{e}_{1},\vec{e}_{2},\vec{e}_{3} \}$ by
$$T(\vec{e}_{1}) = \vec{y}_{1} = \begin{pmatrix} 2 \\ 1 \\ -1 \\ \end{pmatrix}, \quad
    T(\vec{e}_{2}) = \vec{y}_{2} = \begin{pmatrix} -1 \\ 0 \\ 2 \\ \end{pmatrix}, \quad
    T(\vec{e}_{3}) = \vec{y}_{3} = \begin{pmatrix} 0 \\ -1 \\ 4 \\ \end{pmatrix}.$$
Show that $\ker T = \{\vec{0}\}$ and
$\operatorname{im} T = \mathbb{R}^{3}$.
:::

::: {.solution}
We check whether $\{ \vec{y}_{1}, \vec{y}_{2}, \vec{y}_{3} \}$ is
linearly independent. Solve
$$\alpha \vec{y}_{1} + \beta \vec{y}_{2} + \gamma \vec{y}_{3} = \vec{0};$$
that is, $$\begin{aligned}
    2\alpha \;\, - \beta \,\qquad & = 0  \\
    \alpha \;\;\,\qquad -\gamma   & = 0  \\
    -\alpha + 2\beta + 4\gamma    & = 0.
  \end{aligned}$$ The second equation tells us that $\gamma = \alpha$
while the first says $\beta = 2\alpha$. Substituting for
$\beta$ and $\gamma$ in the third equation gives
$$-\alpha + 4\alpha + 4\alpha = 7\alpha = 0.$$ Hence $\alpha = 0$ and
consequently $\beta = \gamma = 0$.

This shows $\{ \vec{y}_{1}, \vec{y}_{2}, \vec{y}_{3} \}$ is linearly
independent. Consequently, $\ker T = \{\vec{0}\}$ by
[Proposition 4.1.8]({{< ref "04-linear-transf#prop-surj-inj" >}}). The Rank-Nullity Theorem now says
$$\dim \operatorname{im} T = \dim \mathbb{R}^{3} - \dim \ker T = 3 - 0 = 3.$$
Therefore $\operatorname{im} T = \mathbb{R}^{3}$ as it has the same
dimension.

\[Alternatively, since $\dim \mathbb{R}^{3} = 3$ and $\{ \vec{y}_{1},
        \vec{y}_{2}, \vec{y}_{3} \}$ is linearly independent, this set
must be a basis for $\mathbb{R}^{3}$ (see
[Theorem 2.4.8]({{< ref "02-vector-spaces#thm-3-conditions" >}})). Therefore, by
[Proposition 4.1.8]({{< ref "04-linear-transf#prop-surj-inj" >}})(1), $$\operatorname{im} T =
        \operatorname{Span}(\vec{y}_{1},\vec{y}_{2},\vec{y}_{3}) =
      \mathbb{R}^{3},$$ once again.\]
:::

::: {.omittedexamp}
Let $T : \mathbb{R}^{4} \to \mathbb{R}^{3}$ be the linear transformation
defined in terms of the standard basis
$\mathscr{B} = \{ \vec{e}_{1}, \vec{e}_{2},
    \vec{e}_{3}, \vec{e}_{4} \}$ by $$\begin{aligned}
    T(\vec{e}_{1}) & = \vec{y}_{1} = \begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix}, & T(\vec{e}_{2}) & =
    \vec{y}_{2} = \begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix}                               \\
    T(\vec{e}_{3}) & = \vec{y}_{3} = \begin{pmatrix} 0 \\ 1 \\ 5 \\ \end{pmatrix}, & T(\vec{e}_{4}) & =
    \vec{y}_{4} = \begin{pmatrix} -5 \\ -2 \\ -5 \\ \end{pmatrix}.
  \end{aligned}$$ Find a basis for the image of $T$.
:::

::: {.solution}
This is the linear transformation considered in
[Example 4.1A]({{< ref "04-linear-transf#ex:linmap1" >}}). We observed there that
$\dim \operatorname{im} T =
    \operatorname{rank} T = 2$. We also know from
[Proposition 4.1.8]({{< ref "04-linear-transf#prop-surj-inj" >}}) that
$$\operatorname{im} T = \operatorname{Span}( \vec{y}_{1}, \vec{y}_{2}, \vec{y}_{3},
    \vec{y}_{4} ),$$ so we conclude that $\operatorname{im} T$ has a
basis $\mathscr{C}$ containing $2$ vectors and satisfying
$\mathscr{C} \subseteq \{ \vec{y}_{1},
    \vec{y}_{2}, \vec{y}_{3}, \vec{y}_{4} \}$. Note that
$$\{ \vec{y}_{1}, \vec{y}_{2} \} = \left\{ \begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix},
    \begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix} \right\}$$ is linearly
independent. Indeed if
$$\alpha \begin{pmatrix} 2 \\ 1 \\ 3 \\ \end{pmatrix} + \beta \begin{pmatrix} -1 \\ 0 \\ 1 \\ \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix}$$
then we deduce straight away $\alpha = 0$ and then $\beta = 0$. We now
have a linearly independent subset of $\operatorname{im} T$ of the right
size to be a basis. Hence $\mathscr{C} = \{ \vec{y}_{1}, \vec{y}_{2}
    \}$ is a basis for $\operatorname{im} T$.
:::

## The matrix of a linear transformation

We have attempted to describe an arbitrary linear transformation
$T: V \to W$. Given a basis $\{ v_{1},v_{2},\dots,v_{n} \}$ for $V$, we
have observed that $T$ is uniquely determined by specifying the images
$T(v_{1})$, $T(v_{2})$, ..., $T(v_{n})$ of the basis vectors. If we are
also given a basis for $W$, we can then express these image vectors as a
linear combination of the basis vectors of $W$ and hence completely
specify them.

::: {.defn}
Let $V$ and $W$ be finite-dimensional vector spaces over the field $F$
and let $\mathscr{B} = \{ v_{1},v_{2},\dots,v_{n} \}$ and
$\mathscr{C} = \{ w_{1},w_{2},\dots,w_{m} \}$ be bases for $V$ and $W$,
respectively. If $T : V \to W$ is a linear transformation and
$v_j \in \mathscr{B}$, then $T(v_j)\in W$ and so $T(v_j)$ is a linear
combination of vectors in $\mathscr{C}$:
$$T(v_{j}) = \sum_{i=1}^{m} \alpha_{ij} w_{i}$$ for $j = 1$, $2$,
..., $n$. The $m \times n$ matrix $$=
    \begin{pmatrix}
      \alpha_{11} & \alpha_{12} & \cdots & \alpha_{1n} \\
      \alpha_{21} & \alpha_{22} & \cdots & \alpha_{2n} \\
      \vdots      & \vdots      & \ddots & \vdots      \\
      \alpha_{m1} & \alpha_{m2} & \cdots & \alpha_{mn}
    \end{pmatrix}$$ is called the ***matrix of $T$ with respect to the
bases $\mathscr{B}$ and $\mathscr{C}$***. We shall denote this
by $\operatorname{Mat}(T)$ or, to be more explicit
$\operatorname{Mat}_{\mathscr{B},\mathscr{C}}(T)$.

In other words, the entries of the $j$th column of the matrix
$\operatorname{Mat}_{\mathscr{B},\mathscr{C}}(T)$ are: $$\begin{matrix}
      \alpha_{1j} \\ \alpha_{2j} \\ \vdots \\ \alpha_{mj}
    \end{matrix}$$ i.e., the $j$th column specifies the image
of $T(v_{j})$ by listing the coefficients when it is expressed as a
linear combination of the vectors in $\mathscr{C}$.
:::

##### What does the matrix of a linear transformation actually represent?

This question could be answered at great length and can get as
complicated and subtle as one wants. The short answer is that if
$V$ and $W$ are $m$ and $n$-dimensional vector spaces over a field $F$,
then they "look like" $F^{m}$ and $F^{n}$ (formally, are *isomorphic* to
these spaces, see below for details). Then $T$ maps vectors from $V$
into $W$ in the same way that the matrix $\operatorname{Mat}(T)$ maps
vectors from $F^{m}$ into $F^{n}$. (There is a technical formulation of
what "in the same way" means here, but that goes way beyond the
requirements of this course. It will result in the kernels of the two
linear maps being of the same dimension, similarly for the images, etc.)

::: {.exampjupyter}
[]{#ex:lintrans-matrix label="ex:lintrans-matrix"}
Define a linear transformation $T : \mathbb{R}^{4} \to \mathbb{R}^{4}$
by the following formula: $$T \begin{pmatrix} x \\
 y \\
 z \\
 t \\
 \end{pmatrix} = \begin{pmatrix} x+4y \\
 y \\
 2z+t \\
 z+2t \\
 \end{pmatrix}.$$ Let
$\mathscr{B} = \{ \vec{e}_{1},\vec{e}_{2},\vec{e}_{3},\vec{e}_{4} \}$
denote the standard basis for $\mathbb{R}^{4}$ and let $\mathscr{C}$ be
the basis
$$\mathscr{C} = \{ \vec{v}_{1},\vec{v}_{2},\vec{v}_{3},\vec{v}_{4}
    \} = \left\{ \begin{pmatrix} 2 \\
 0 \\
 2 \\
 0 \\
 \end{pmatrix}, \begin{pmatrix} 0 \\
 1 \\
 -1 \\
 0 \\
 \end{pmatrix},
    \begin{pmatrix} 0 \\
 0 \\
 1 \\
 0 \\
 \end{pmatrix}, \begin{pmatrix} 3 \\
 0 \\
 0 \\
 1 \\
 \end{pmatrix} \right\}.$$ Determine the matrices
$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$,
 $\operatorname{Mat}_{\mathscr{C},\mathscr{B}}(T)$
and $\operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T)$.
:::

::: {.solution}
We calculate $$\begin{aligned}
    T(\vec{e}_{1}) & = T\begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} = \vec{e}_{1}
    \\
    T(\vec{e}_{2}) & = T\begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix} = \begin{pmatrix} 4 \\ 1 \\ 0 \\ 0 \end{pmatrix} =
    4\vec{e}_{1} + \vec{e}_{2}                                                    \\
    T(\vec{e}_{3}) & = T\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 2 \\ 1 \end{pmatrix} =
    2\vec{e}_{3} + \vec{e}_{4}                                                    \\
    T(\vec{e}_{4}) & = T\begin{pmatrix} 0 \\ 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 2 \end{pmatrix} = \vec{e}_{3}
    + 2\vec{e}_{4}.
  \end{aligned}$$ So the matrix of $T$ with respect to the
basis $\mathscr{B}$ is
$$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = \begin{pmatrix}
      1 & 4 & 0 & 0 \\
      0 & 1 & 0 & 0 \\
      0 & 0 & 2 & 1 \\
      0 & 0 & 1 & 2
    \end{pmatrix}.$$

\[We leave it as an exercise for the reader to check that
$\mathscr{C}$ is indeed a basis for $\mathbb{R}^{4}$. Do this by showing
it is linearly independent, i.e., the only solution to $$\begin{pmatrix}
      2 & 0  & 0 & 3 \\
      0 & 1  & 0 & 0 \\
      2 & -1 & 1 & 0 \\
      0 & 0  & 0 & 1
    \end{pmatrix}
    \begin{pmatrix} \alpha \\ \beta \\ \gamma \\ \delta \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}$$
is $\alpha = \beta = \gamma = \delta = 0$.\]

We shall calculate the matrices
$\operatorname{Mat}_{\mathscr{C},\mathscr{B}}(T)$ and
$\operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T)$. $$\begin{aligned}
    T(\vec{v}_{1}) & = T\begin{pmatrix} 2 \\ 0 \\ 2 \\ 0 \end{pmatrix} = \begin{pmatrix} 2 \\ 0 \\ 4 \\ 2 \end{pmatrix} =
    2\vec{e}_{1} + 4\vec{e}_{3} + 2\vec{e}_{4}                                         \\
    T(\vec{v}_{2}) & = T\begin{pmatrix} 0 \\ 1 \\ -1 \\ 0 \end{pmatrix} = \begin{pmatrix} 4 \\ 1 \\ -2 \\ -1 \end{pmatrix}
    = 4\vec{e}_{1} + \vec{e}_{2} - 2\vec{e}_{3} - \vec{e}_{4}                               \\
    T(\vec{v}_{3}) & = T\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 2 \\ 1 \end{pmatrix} =
    2\vec{e}_{3} + \vec{e}_{4}                                                    \\
    T(\vec{v}_{4}) & = T\begin{pmatrix} 3 \\ 0 \\ 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 3 \\ 0 \\ 1 \\ 2 \end{pmatrix} =
    3\vec{e}_{1} + \vec{e}_{3} + 2\vec{e}_{4}.
  \end{aligned}$$ Hence
$$\operatorname{Mat}_{\mathscr{C},\mathscr{B}}(T) = \begin{pmatrix}
      2 & 4  & 0 & 3 \\
      0 & 1  & 0 & 0 \\
      4 & -2 & 2 & 1 \\
      2 & -1 & 1 & 2
    \end{pmatrix}.$$

To find $\operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T)$, we need to
express each $T(\vec{v}_{j})$ in terms of the basis $\mathscr{C}$.
$$\begin{aligned}
    T(\vec{v}_{1}) = \begin{pmatrix} 2 \\ 0 \\ 4 \\ 2 \end{pmatrix}   & = -2\begin{pmatrix} 2 \\ 0 \\ 2 \\ 0 \end{pmatrix} +
    8\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} + 2\begin{pmatrix} 3 \\ 0 \\ 0 \\ 1 \end{pmatrix}                                                       \\
                                             & = -2\vec{v}_{1} + 8\vec{v}_{3} + 2\vec{v}_{4}         \\
    T(\vec{v}_{2}) = \begin{pmatrix} 4 \\ 1 \\ -2 \\ -1 \end{pmatrix} & =
    \frac{7}{2}\begin{pmatrix} 2 \\ 0 \\ 2 \\ 0 \end{pmatrix} + \begin{pmatrix} 0 \\ 1 \\ -1 \\ 0 \end{pmatrix} -
    8\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} - \begin{pmatrix} 3 \\ 0 \\ 0 \\ 1 \end{pmatrix}                                                        \\
                                             & = {\textstyle\frac{7}{2}}\vec{v}_{1} + \vec{v}_{2} -
    8\vec{v}_{3} - \vec{v}_{4}                                                                        \\
    T(\vec{v}_{3}) = \begin{pmatrix} 0 \\ 0 \\ 2 \\ 1 \end{pmatrix}   & =
    -\frac{3}{2}\begin{pmatrix} 2 \\ 0 \\ 2 \\ 0 \end{pmatrix} + 5 \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} +
    \begin{pmatrix} 3 \\ 0 \\ 0 \\ 1 \end{pmatrix}                                                                                \\
                                             & = {\textstyle-\frac{3}{2}}\vec{v}_{1} + 5\vec{v}_{3} +
    \vec{v}_{4}                                                                                        \\
    T(\vec{v}_{4}) = \begin{pmatrix} 3 \\ 0 \\ 1 \\ 2 \end{pmatrix}   
                 & = -\frac{3}{2}\begin{pmatrix} 2 \\ 0 \\ 2 \\ 0 \end{pmatrix}
                     + 4\begin{pmatrix} 0 \\ 0 \\ 1 \\ 0 \end{pmatrix} +
                       2\begin{pmatrix} 3 \\ 0 \\ 0 \\ 1 \end{pmatrix} \\
                 & = {\textstyle-\frac{3}{2}}\vec{v}_{1} + 4\vec{v}_{3} +
                 2\vec{v}_{4}.
  \end{aligned}$$ Hence
$$\operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T) = 
    \frac{1}{2}
    \begin{pmatrix}
      -4 & 7   & -3 & -3 \\
      0  & 2   & 0  & 0  \\
      16 & -16 & 10 & 8  \\
      4  & -2  & 2  & 4
    \end{pmatrix}.$$
:::

We show in
Problem [6]({{< ref "04-linear-transf#problem-04-06" >}}) in
[Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}) that if $A$ is an $m\times n$
matrix with entries in a field $F$ and $T: F ^ n \to
F ^ m$ is the function defined by $T(\vec{v}) = A\vec{v}$, then $T$ is a
linear transformation.

::: {.thm}
[]{#thm-column-space-is-image label="thm-column-space-is-image"} Let $A$ be an $m\times n$ matrix with
entries in a field $F$. If $T: F ^ n
    \to F ^ m$ is the linear transformation defined by
$T(\vec{v}) = A\vec{v}$, then the following hold:

1.  the image of $T$ equals the column-space of $A$,
    i.e. $\operatorname{im}(T) =
                \operatorname{Col}(A)$;

2.  the rank of $T$ equals the column-rank of $A$,
    i.e. $\operatorname{rank}(T) = \dim
                \operatorname{Col}(A)$.
:::

It is not the case that the row-space of $A$ in
[Theorem 4.2.3]({{< ref "04-linear-transf#thm-column-space-is-image" >}}) is $\ker(T)$, although
$\operatorname{Row}(A)$ and $\ker(T)$ are related.

## Change of basis

Suppose we are given two bases $\mathscr{B}$ and $\mathscr{C}$ for the
same vector space $V$. We shall now describe how
$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$ and
$\operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T)$ are related for some
linear transformation $T : V \to V$. (A similar description can be given
for a linear transformation $V \to W$ with two bases
$\mathscr{B},\mathscr{B}'$ for $V$ and two bases
$\mathscr{C},\mathscr{C}'$ for $W$. This would be more complicated, but
essentially the same ideas apply.)

::: {.thm}
[]{#thm-change-basis label="thm-change-basis"} Let
$V$ be a vector space of dimension $n$ over a field $F$ and let
$T : V \to V$ be a linear transformation, let $\mathscr{B} = \{
    v_{1},v_{2},\dots,v_{n} \}$ and $\mathscr{C} = \{
    w_{1},w_{2},\dots,w_{n} \}$ be bases for $V$, and let
$A = \operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$ and
$B = \operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T)$. Then there is an
invertible matrix $P$ such that
$$B = P^{-1} A P = \operatorname{Mat}_{\mathscr{B},
    \mathscr{C}}(\operatorname{id})\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)
  \operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(\operatorname{id})$$
where $\operatorname{id}: V \to V$ is the linear transformation defined
by $\operatorname{id}(v) = v$ for all $v\in V$. Specifically, if $w_j\in
  \mathscr{C}$, then $w_j\in V = \operatorname{Span}(\mathscr{B})$ and
so $w_j$ is a linear combination of vectors in $\mathscr{B}$:
$$w_{j} = \operatorname{id}(w_j) = \sum_{i=1}^{n} \alpha_{ij}v_{i}$$ for
some $\alpha_{ij} \in F$, and $$P = [\alpha_{kj}] =
    \begin{pmatrix}
      \alpha_{11} & \alpha_{12} & \cdots & \alpha_{1n} \\
      \alpha_{21} & \alpha_{22} & \cdots & \alpha_{2n} \\
      \vdots      & \vdots      & \ddots & \vdots      \\
      \alpha_{n1} & \alpha_{n2} & \cdots & \alpha_{nn}
    \end{pmatrix}
    =
    \operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(\operatorname{id}).$$
:::

The more general version of
[Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}}) is the next result which is included just
for interest.

::: {.thm}
[]{#thm-general-base-change label="thm-general-base-change"} Let $V$ and $W$ be finite-dimensional
vector spaces over a field $F$ and let $T: V \to W$ be a linear
transformation. If $\mathscr{B}$ and $\mathscr{B}'$ are bases for $V$
and $\mathscr{C}$ and $\mathscr{C}'$ are basis for $W$, then
$$\operatorname{Mat}_{\mathscr{B}', \mathscr{C}'}(T) =
  \operatorname{Mat}_{\mathscr{C}, \mathscr{C}'}(\operatorname{id}_W)
  \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)
  \operatorname{Mat}_{\mathscr{B}', \mathscr{B}}(\operatorname{id}_V),$$
where $\operatorname{id}_V : V \to V$ and $\operatorname{id}_W: W \to W$
are the identity linear transformations.
:::

If $\dim V = n$ and $\dim W = m$ in
[Theorem 4.3.2]({{< ref "04-linear-transf#thm-general-base-change" >}}), then
$\operatorname{Mat}_{\mathscr{C}, \mathscr{C}'}(\operatorname{id}_W)$ is
an $m\times m$ matrix,
$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$ is an $m\times n$
matrix, and $\operatorname{Mat}_{\mathscr{B},
\mathscr{B}'}(\operatorname{id}_V)$ is an $n \times n$ matrix, and so
$\operatorname{Mat}_{\mathscr{B}', \mathscr{C}'}(T)$ is an $m \times n$
matrix.

Let us illustrate
[Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}}) with an example.

::: {.exampjupyter}
Let $V$ be a $2$-dimensional vector space over $\mathbb{R}$ with basis
$\mathscr{B} = \{ v_{1},v_{2} \}$. Let
$$w_{1} = 3v_{1} - 5v_{2}, \qquad w_{2} = -v_{1}+2v_{2}$$ and
$\mathscr{C} = \{ w_{1},w_{2} \}$. Define the linear transformation
$T : V \to V$ by $$\begin{aligned}
    T(v_{1}) & = 16v_{1} - 30v_{2} \\
    T(v_{2}) & = 9v_{1} - 17v_{2}.
  \end{aligned}$$ Find the
matrix $\operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T)$.
:::

::: {.solution}
The formula for $T$ tells us that the matrix of $T$ in terms of the
basis $\mathscr{B}$ is
$$A = \operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = 
    \begin{pmatrix} 
      16 & 9 \\ 
      -30 & -17
    \end{pmatrix}.$$ The formula in the example expresses the $w_{j}$ in
terms of the $v_{i}$. Hence, the change of basis matrix is
$$P = \operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(\operatorname{id}) = \begin{pmatrix} 3 & -1 \\ -5 & 2 \end{pmatrix} .$$
Then $$\det P = 3 \times 2 - (-1 \times -5) = 6 - 5 = 1,$$ so
$$P^{-1} = \frac{1}{\det P} \begin{pmatrix} 2 & 1 \\ 5 &
      3\end{pmatrix} = \begin{pmatrix} 2 & 1 \\ 5 & 3 \end{pmatrix} .$$
So $$\begin{aligned}
    \operatorname{Mat}_{\mathscr{C},\mathscr{C}}(T) & = P^{-1} A P                                                                          \\
                                     & = \begin{pmatrix} 2 & 1 \\ 5 & 3 \end{pmatrix} \begin{pmatrix} 16
       & 9 \\ -30 & -17\end{pmatrix} \begin{pmatrix} 3 & -1 \\ -5 &
      2\end{pmatrix} \\
                                     & = \begin{pmatrix} 2 & 1 \\ -10 & -6 \end{pmatrix} \begin{pmatrix}
      3 & -1 \\ -5 & 2 \end{pmatrix}                             \\
                                     & = \begin{pmatrix} 1 & 0 \\ 0 & -2 \end{pmatrix} .
  \end{aligned}$$ We have diagonalised our linear transformation $T$. We
shall discuss this topic in more detail later in these notes.

As a check, observe $$\begin{aligned}
    T(w_{2}) & = T( -v_{1}+2v_{2})                      \\
             & = -T(v_{1}) + 2T(v_{2})                  \\
             & = -(16v_{1}-30v_{2}) + 2(9v_{1}-17v_{2}) \\
             & = 2v_{1} - 4v_{2}                        \\
             & = -2 (-v_{1}+2v_{2}) = -2w_{2},
  \end{aligned}$$ and similarly for $T(w_{1})$.
:::

::: {.omittedexampjupyter}
Let $$\mathscr{B} = 
    \left\{ 
      \begin{pmatrix} 0 \\ 1 \\ -1 \\ \end{pmatrix}, 
      \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix},
      \begin{pmatrix} 2 \\ -1 \\ 0 \\ \end{pmatrix} 
    \right\}.$$

1.  Show that $\mathscr{B}$ is a basis for $\mathbb{R}^{3}$.

2.  Write down the change of basis matrix from the standard basis
    $\mathscr{E} = \{ \vec{e}_{1},\vec{e}_{2},\vec{e}_{3} \}$
    to $\mathscr{B}$.

3.  Let $$A = \begin{pmatrix}
                  -2 & -2 & -3 \\
                  1  & 1  & 2  \\
                  -1 & -2 & -2
                \end{pmatrix}$$ and view $A$ as a linear transformation
    $\mathbb{R}^{3} \to
              \mathbb{R}^{3}$. Find the matrix of $A$ with respect to
    the basis $\mathscr{B}$.
:::

::: {.solution}
(1) We first establish that $\mathscr{B}$ is linearly independent. Solve
$$\alpha \begin{pmatrix} 0 \\ 1 \\ -1 \\ \end{pmatrix} + \beta \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix} + \gamma
    \begin{pmatrix} 2 \\ -1 \\ 0 \\ \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix};$$
that is, $$\begin{aligned}
    \beta + 2\gamma         & = 0 \\
    \alpha \:\qquad -\gamma & = 0 \\
    -\alpha -\beta \qquad\; & =0.
  \end{aligned}$$ Thus $\gamma = \alpha$ and the first equation yields
$2\alpha+\beta
    = 0$. Adding the third equation now gives $\alpha = 0$ and hence
$\beta = \gamma = 0$. This show $\mathscr{B}$ is linearly independent
and it is therefore a basis for $\mathbb{R}^{3}$ since
$\dim \mathbb{R}^{3} = 3 =
    |\mathscr{B}|$.

(2) We write each vector in $\mathscr{B}$ in terms of the standard basis
$$\begin{aligned}
    \begin{pmatrix} 0 \\ 1 \\ -1 \\ \end{pmatrix} & = \qquad \vec{e}_{2} - \vec{e}_{3}   \\
    \begin{pmatrix} 1 \\ 0 \\ -1 \\ \end{pmatrix} & = \; \vec{e}_{1} \qquad -\vec{e}_{3} \\
    \begin{pmatrix} 2 \\ -1 \\ 0 \\ \end{pmatrix} & = 2\vec{e}_{1} - \vec{e}_{2}
  \end{aligned}$$ and write the coefficients appearing down the columns
of the change of basis matrix: $$P = \begin{pmatrix}
      0  & 1  & 2  \\
      1  & 0  & -1 \\
      -1 & -1 & 0
    \end{pmatrix}.$$

(3) [Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}}) says
$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) =
    P^{-1}AP$ (as the matrix of $A$ with respect to the standard basis
is $A$ itself). We first calculate the inverse of $P$ via the usual row
operation method: $$\begin{aligned}
    \left( \begin{matrix}
        0  & 1  & 2  \\
        1  & 0  & -1 \\
        -1 & -1 & 0\end{matrix} \;
    \middle| \; \begin{matrix}
        1 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1\end{matrix}
    \right) & \longrightarrow
    \left( \begin{matrix}
        0 & 1  & 2  \\
        1 & 0  & -1 \\
        0 & -1 & -1\end{matrix}
    \; \middle| \; \begin{matrix}
        1 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 1 & 1\end{matrix} \right)
            &                 & r_{3} \mapsto r_{3}+r_{1}   \\
            & \longrightarrow
    \left( \begin{matrix}
        1 & 0  & -1 \\
        0 & 1  & 2  \\
        0 & -1 & -1\end{matrix}
    \; \middle| \; \begin{matrix}
        0 & 1 & 0 \\
        1 & 0 & 0 \\
        0 & 1 & 1\end{matrix} \right)
            &                 & r_{1} \leftrightarrow r_{2} \\
            & \longrightarrow
    \left( \begin{matrix}
        1 & 0 & -1 \\
        0 & 1 & 2  \\
        0 & 0 & 1\end{matrix}
    \; \middle| \; \begin{matrix}
        0 & 1 & 0 \\
        1 & 0 & 0 \\
        1 & 1 & 1\end{matrix} \right)
            &                 & r_{3} \mapsto r_{3} + r_{2} \\
            & \longrightarrow
    \left( \begin{matrix}
        1 & 0 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1\end{matrix}
    \; \middle| \; \begin{matrix}
        1  & 2  & 1  \\
        -1 & -2 & -2 \\
        1  & 1  & 1\end{matrix} \right)
            &                 & \begin{array}{@{}l}
      r_{1} \mapsto r_{1} + r_{3} \\
      r_{2} \mapsto r_{2} - 2r_{3}
    \end{array}
  \end{aligned}$$ Hence $$P^{-1} = \begin{pmatrix}
      1  & 2  & 1  \\
      -1 & -2 & -2 \\
      1  & 1  & 1
    \end{pmatrix}$$ and so $$\begin{aligned}
    \operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) & = P^{-1} A P \\
                   & =
    \begin{pmatrix}
      1  & 2  & 1  \\
      -1 & -2 & -2 \\
      1  & 1  & 1
    \end{pmatrix}
    \begin{pmatrix}
      -2 & -2 & -3 \\
      1  & 1  & 2  \\
      -1 & -2 & -2
    \end{pmatrix}
    \begin{pmatrix}
      0  & 1  & 2  \\
      1  & 0  & -1 \\
      -1 & -1 & 0
    \end{pmatrix}   \\
                   & =
    \begin{pmatrix}
      -1 & -2 & -1 \\
      2  & 4  & 3  \\
      -2 & -3 & -3
    \end{pmatrix}
    \begin{pmatrix}
      0  & 1  & 2  \\
      1  & 0  & -1 \\
      -1 & -1 & 0
    \end{pmatrix}   \\
                   & =
    \begin{pmatrix}
      -1 & 0  & 0  \\
      1  & -1 & 0  \\
      0  & 1  & -1
    \end{pmatrix}.
  \end{aligned}$$
:::

## Isomorphism of vector spaces

This section is not really revision of material covered in MT2501, but
its most natural place in the course is in this chapter, so this is
where it will appear.

If $V$ and $W$ are vector spaces, then recall that a linear
transformation $T:
  V \to W$ is *invertible* if there exists a linear transformation $T ^
    {-1} : W \to V$ such that $T ^ {-1} \circ T(v) = v$ and
$T \circ T ^ {-1}(w) =
  w$ for all $v\in V$ and for all $w\in W$. The linear transformation
$T ^
    {-1} : W \to V$ is called the *inverse* of $T$.

::: {.defn}
[]{#defn-isomorphism label="defn-isomorphism"} Let
$V$ and $W$ be vector spaces over a field $F$. An ***isomorphism***
between $V$ and $W$ is a linear transformation $T : V \to W$ which is
invertible. We say that $V$ and $W$ are ***isomorphic***, written
$V \cong W$, if there exists an isomorphism $V \to W$.
:::

::: {.thm}
[]{#thm-bijection-basis label="thm-bijection-basis"} Let $V$ and $W$ be finite-dimensional
vector spaces over a field $F$ and let
$\mathscr{B} = \{v_1, \ldots, v_n\}$ be any basis for $V$. If
$T: V \to W$ is an isomorphism, then $T(\mathscr{B}) = \{T(v_1), \ldots,
  T(v_n)\}$ is a basis for $W$. Conversely, if
$\mathscr{C} = \{w_1, \ldots, w_n\}$ is any basis for $W$, then the
unique linear transformation $T: V \to W$ such that $T(v_i) = w_i$ for
every $i$ is an isomorphism.
:::

::: {.proof}
*Proof.* Let $T: V \to W$ be any isomorphism from $V$ to $W$. Since $T$
is a bijection, it follows that $\operatorname{ker}(T) = \{\vec{0}\}$.
Hence, by [Proposition 4.1.8]({{< ref "04-linear-transf#prop-surj-inj" >}})(2), $T(\mathscr{B}) = \{T(v_1), \ldots,
  T(v_n)\}$ is a linearly independent set. Also, by
[Proposition 4.1.8]({{< ref "04-linear-transf#prop-surj-inj" >}})(1) and since $T$ is a bijection,
$W = \operatorname{im} T =
  \operatorname{Span}(T(v_1), \ldots, T(v_n))$. Therefore
$T(\mathscr{B})$ is a linearly independent spanning set for $W$, and so
$T(\mathscr{B})$ is a basis for $W$.

The converse is shown in
Problem [3]({{< ref "04-linear-transf#problem-04-03" >}})(c). ◻
:::

::: {.cor}
[]{#thm-isomorphism label="thm-isomorphism"} Let $V$
and $W$ be finite-dimensional vector spaces over a field $F$. Then $V$
and $W$ are isomorphic if and only if $\dim V = \dim W$.
:::

::: {.proof}
*Proof.* ($\Rightarrow$) If $V$ and $W$ are isomorphic, then there is an
isomorphism $T: V \to W$. If $\mathscr{B}$ is any basis for $V$, then
$T(\mathscr{B})$ is a basis for $W$ by
[Theorem 4.4.2]({{< ref "04-linear-transf#thm-bijection-basis" >}}). Since $T$ is a bijection, $\dim W =
  |T(\mathscr{B})| = |\mathscr{B}| = \dim V$.

($\Leftarrow$) If $\mathscr{B} = \{v_1, \ldots, v_m\}$ is any basis for
$V$ and $\mathscr{C}
  = \{w_1, \ldots, w_n\}$ is any basis for $W$, then
$m = \dim V = \dim W = n$. So, by
[Theorem 4.4.2]({{< ref "04-linear-transf#thm-bijection-basis" >}}), the unique linear transformation
$T : V\to
  W$ such that $T(v_i) = w_i$ for every $i$ is an isomorphism. ◻
:::

::: {.cor}
[]{#cor-f-to-the-n label="cor-f-to-the-n"} Let $V$ be
a vector space over a field $F$. If $\dim V = n\in \mathbb{N}$, then $V$
is isomorphic to $F ^ n$.
:::

::: {.proof}
*Proof.* By [Corollary 4.4.3]({{< ref "04-linear-transf#thm-isomorphism" >}}), $V$ is isomorphic to any vector space over
$F$ of dimension $\dim V = n$. We showed in
[Example 2.1.4]({{< ref "02-vector-spaces#ex-f-to-the-n" >}}) that $F ^ n$ is a vector space over $F$ and,
in [Example 2.4.5]({{< ref "02-vector-spaces#ex-standard-basis" >}}), that $\dim F ^ n = n$. ◻
:::

::: {.example}
We showed in [Example 2.1.4]({{< ref "02-vector-spaces#ex-f-to-the-n" >}})(1) that the set $\mathcal{P}_n$, of
polynomials with real coefficients and degree at most $n\in \mathbb{N}$,
$n \geq 0$, is a vector space over $\mathbb{R}$ and, in
[Example 2.4.5]({{< ref "02-vector-spaces#ex-standard-basis" >}})(2), that $\dim \mathcal{P}_n = n + 1$. It
follows by [Corollary 4.4.4]({{< ref "04-linear-transf#cor-f-to-the-n" >}}) that
$\mathcal{P}_n \cong \mathbb{R} ^ {n + 1}$.
:::

::: {.example}
We showed in [Example 2.1.4]({{< ref "02-vector-spaces#ex-f-to-the-n" >}})(2) that the set $\mathbb{C}$ is a vector
space over $\mathbb{R}$ and $\dim \mathbb{C} = 2$. It follows by
[Corollary 4.4.4]({{< ref "04-linear-transf#cor-f-to-the-n" >}}) that $\mathbb{C}\cong \mathbb{R} ^ {2}$.
:::

## Problems {#problems-04-linear-transf}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-04-01 label="problem-04-01"}

    ::: {.questionjupyter}
    Define a function $T \colon \mathbb{R}^{3} \to \mathbb{R}^{3}$ by
    $$T \begin{pmatrix} x \\
     y \\
     z \\
     \end{pmatrix} = \begin{pmatrix} x+3y-z \\
     x+2y-2z \\
     -x+4z \\
     \end{pmatrix}.$$

    1.  Show that $T$ is a linear transformation.

    2.  Determine the kernel of $T$ and find a basis for $\ker T$.
        (Hint: Solving $T(\vec{v}) = \vec{0}$ will correspond to solving
        a set of simultaneous linear equations.)

    3.  Show that
        $$\operatorname{im} T = \operatorname{Span} \left( \begin{pmatrix} 1 \\
            1 \\
            -1 \\
          \end{pmatrix},
          \begin{pmatrix} 3 \\
            2 \\
            0 \\
          \end{pmatrix}, \begin{pmatrix} -1 \\
            -2 \\
            4 \\
          \end{pmatrix} \right).$$ Hence find a basis for
        $\operatorname{im} T$.

    4.  Verify the Rank-Nullity Theorem holds for this specific example.
    :::

2.  []{#problem-04-02 label="problem-04-02"}

    ::: {.questionjupyter}
    Define a linear transformation
    $T \colon \mathbb{R}^{4} \to \mathbb{R}^{3}$ by $$\begin{aligned}
        T(\vec{e}_{1}) &= \vec{y}_{1} = \begin{pmatrix}
          1 \\
          -2 \\ 
          3 \\
        \end{pmatrix},
        &T(\vec{e}_{2}) &= \vec{y}_{2} = \begin{pmatrix}
          -3 \\
          0 \\  
          9 \\
        \end{pmatrix}, \\
        T(\vec{e}_{3}) &= \vec{y}_{3} = \begin{pmatrix}
          -2 \\
          1 \\  
          3 \\
        \end{pmatrix},
        &T(\vec{e}_{4}) &= \vec{y}_{4} = \begin{pmatrix}
          1 \\
          -1 \\ 
          0 \\
        \end{pmatrix},
      \end{aligned}$$ where
    $\{ \vec{e}_{1},\vec{e}_{2},\vec{e}_{3},\vec{e}_{4} \}$ is the
    standard basis for $\mathbb{R}^{4}$.

    1.  Find a subset of $\{ \vec{y}_{1}, \vec{y}_{2}, \vec{y}_{3},
              \vec{y}_{4} \}$ that is a basis for the image of $T$.

    2.  Find a basis for the kernel of $T$.

    3.  Hence determine the rank and nullity of $T$.
    :::

3.  []{#problem-04-03 label="problem-04-03"}

    ::: {.question}
    Let $V$ and $W$ be finite-dimensional vector spaces over a
    field $F$. An *isomorphism* between $V$ and $W$ is a linear
    transformation $T \colon V \to W$ which is invertible (that is,
    there is an inverse, a linear transformation $S \colon W \to V$ such
    that $ST = I$ and $TS
    = I$ are the identity maps). We say that $V$ and $W$ are
    *isomorphic*, written $V \cong W$, if there exists an isomorphism
    $V \to W$.

    1.  Show that a linear transformation $T \colon V \to W$ is
        injective (that is, $T(u) = T(v)$ implies $u = v$) if and only
        if $\ker T = \{\vec{0}\}$.

    2.  Show that a linear transformation $T \colon V \to W$ is an
        isomorphism if and only if it is bijective (that is, both
        injective and surjective (which means
        $\operatorname{im} T = W$)).

    3.  If $\mathscr{B} = \{ v_{1}, v_{2}, \dots, v_{n} \}$ is a basis
        for $V$ and $\mathscr{C} = \{ w_{1},w_{2},\dots,w_{n} \}$ is a
        basis for $W$, show that the unique linear transformation
        $T \colon V \to W$ given by $T(v_{i}) = w_{i}$, for $i = 1$,
        $2$, ..., $n$, is an isomorphism.

        Deduce that $V \cong W$ if and only if $\dim V = \dim W$.
    :::

4.  []{#problem-04-04 label="problem-04-04"}

    ::: {.question}
    Let $V$ and $W$ be vector spaces over the field $F$. If $S$ and $T$
    are linear transformations $V \to W$, show that

    1.  the sum $S+T$, defined by $(S+T)(v) = S(v) + T(v)$, is a linear
        transformation, and

    2.  the scalar multiple $\alpha T$, defined by $(\alpha T)(v)
        = \alpha \cdot T(v)$, is a linear transformation (for any scalar
        $\alpha \in F$).

    Write $\mathcal{L}(V,W)$ for the set of all linear transformations
    $V \to W$. Show that $\mathcal{L}(V,W)$ is itself a vector space
    over $F$ with the above addition and scalar multiplication.
    :::

5.  []{#problem-04-05 label="problem-04-05"}

    ::: {.question}
    Let $U$, $V$ and $W$ be vector spaces over the field $F$. If
    $T \colon U \to V$ and $S \colon V \to W$ are linear
    transformations, show that the composition $$\begin{aligned}
    ST \colon U &\to W \\
    u &\mapsto S(Tu)\end{aligned}$$ is also a linear transformation.

    If we fix bases $\mathscr{A}$, $\mathscr{B}$ and $\mathscr{C}$ for
    $U$, $V$ and $W$, respectively, show that
    $$\operatorname{Mat}_{\mathscr{A},\mathscr{C}}(ST) = \operatorname{Mat}_{\mathscr{B},\mathscr{C}}(S) \cdot \operatorname{Mat}_{\mathscr{A},\mathscr{B}}(T).$$
    :::

6.  []{#problem-04-06 label="problem-04-06"}

    ::: {.question}
    1.  Let $F$ be a field and $A$ be an $m \times n$ matrix. Show that
        $A$ defines a linear transformation $F^{n} \to F^{m}$ by
        $$\vec{v} \mapsto A\vec{v} \qquad \text{for $\vec{v} \in F^{n}$.}$$

        Show that the matrix of this linear transformation with respect
        to the standard bases of $F^{n}$ and $F^{m}$ is given by
        $\operatorname{Mat}{A} = A$.

    2.  Now consider any linear transformation $T \colon F^{n} \to
        F^{m}$. Show that
        $$T(\vec{v}) = A\vec{v} \qquad \text{for all $\vec{v} \in F^{n}$,}$$
        where $A$ is the matrix of $T$ with respect to the standard
        bases for $F^{n}$ and $F^{m}$. \[Thus, every linear
        transformation from $F^{n}$ to $F^{m}$ is given by matrix
        multiplication.\]
    :::

7.  []{#problem-04-07 label="problem-04-07"}

    ::: {.question}
    Let $V$ and $W$ be finite-dimensional vector spaces over the
    field $F$ with bases $\mathscr{B} = \{ v_{1},v_{2},\dots,v_{n} \}$
    and $\mathscr{C}
        = \{ w_{1},w_{2},\dots,w_{m} \}$, respectively. Define linear
    transformations $T_{k\ell} \colon V \to W$ by the following formula:
    $$T_{k\ell}(v_{j}) = 
          \begin{cases}
            w_{k}   & \text{if }j = l, \\
            \vec{0} & \text{if }j \neq l.
          \end{cases}$$

    1.  Show that every linear transformation $T \colon V \to W$ can be
        expressed as
        $$T = \sum_{\substack{1 \leq k \leq m,\\1 \leq \ell \leq
                  n}} \alpha_{k\ell} T_{k\ell}$$ for some
        scalars $\alpha_{k\ell} \in F$. \[See
        Problem [4]({{< ref "04-linear-transf#problem-04-04" >}}) for the definition of sums and scalar
        multiples of linear transformation.\]

    2.  Let
        $\mathscr{A} = \{T_{k\ell} : 1 \leq k \leq m, \; 1 \leq \ell \leq
                n\}$. Prove that $\mathscr{A}$ is a linearly independent
        subset of $\mathcal{L}(V,W)$ and deduce that
        $$\dim \mathcal{L}(V,W) = \dim V \cdot \dim W.$$
    :::

8.  []{#problem-04-08 label="problem-04-08"}

    ::: {.questionjupyter}
    Let $T \colon \mathbb{R}^{2} \to \mathbb{R}^{2}$ be the linear
    mapping whose matrix with respect to the standard basis for
    $\mathbb{R}^{2}$ is $$A = \begin{pmatrix}
    4 & 3 \\
    1 & 2
    \end{pmatrix};$$ that is, $T(\vec{v}) = A\vec{v}$ for all
    $\vec{v} \in \mathbb{R}^{2}$.

    1.  Show that $$\mathscr{B} = \left\{ \begin{pmatrix}
         3 \\
         -1 
         \end{pmatrix}, \begin{pmatrix}
         -5 \\
         2 
         \end{pmatrix} \right\}$$ is a basis for $\mathbb{R}^{2}$.

    2.  Calculate the matrix
        $\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T)$ of $T$ with
        respect to the basis $\mathscr{B}$.
    :::

9.  []{#problem-04-09 label="problem-04-09"}

    ::: {.questionjupyter}
    Define the linear transformation
    $T \colon \mathbb{R}^{3} \to \mathbb{R}^{3}$ by $$T\begin{pmatrix}
     x \\
     y \\
     z \\
     \end{pmatrix} = \begin{pmatrix}
     x+2y+2z \\
     -3x+4y-2z \\
     -2y \\
     \end{pmatrix}.$$

    1.  Find the matrix of $T$ with respect to the standard basis
        for $\mathbb{R}^{3}$.

    2.  Show that $$\mathscr{B} = \left\{ \begin{pmatrix}
         1 \\
         1 \\
         1 \\
         \end{pmatrix}, \begin{pmatrix}
         1 \\
         2 \\
         2 \\
         \end{pmatrix},
          \begin{pmatrix}
         1 \\
         2 \\
         1 \\
         \end{pmatrix} \right\}$$ is a basis for $\mathbb{R}^{3}$.

    3.  Find the matrix of $T$ with respect to the basis $\mathscr{B}$.
    :::

10. []{#problem-04-10 label="problem-04-10"}

    ::: {.questionjupyter}
    A linear transformation $T \colon V \to V$ is said to be
    ***nilpotent*** of *index $k$* if $T^{k}$ is the zero map but
    $T^{k-1}$ is not.

    1.  Suppose that $V$ is a vector space of dimension $n$ and the
        linear transformation $T \colon V \to V$ is nilpotent of
        index $n$. Choose a vector $v$ such that
        $T^{n-1}(v) \neq \vec{0}$. Show that
        $$\mathscr{B} = \{ v, T(v), T^{2}(v), \dots, T^{n-1}(v) \}$$ is
        a basis for $V$. \[Hint: Show that it is linearly independent.
        Consider an expression of the form $\sum_{i=0}^{n-1} \alpha_{i}
                T^{i}(v) = \vec{0}$ and apply a suitable power of $T$.\]

    2.  Write down the matrix of $T$ with respect to $\mathscr{B}$.

    3.  Suppose $T \colon \mathbb{R}^{3} \to \mathbb{R}^{3}$ is a linear
        transformation whose matrix with respect to the standard basis
        for $\mathbb{R} ^ 3$ is $$A = \begin{pmatrix}
                  0 & 0 & 2 \\
                  1 & -1 & 1 \\
                  -1 & 1 & 1
                \end{pmatrix}.$$ Show that $T$ is nilpotent of index
        $3$. Find a basis with respect to which $T$ has matrix
        $$\begin{pmatrix}
                  0 & 0 & 0 \\
                  1 & 0 & 0 \\
                  0 & 1 & 0
                \end{pmatrix}.$$
    :::
