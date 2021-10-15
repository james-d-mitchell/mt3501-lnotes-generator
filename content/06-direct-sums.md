# Direct sums
{{< chapter 5 >}}

## Definition and basic properties

::: {.defn}
[]{#de-direct-sum label="de-direct-sum"} Let $V$ be a
vector space and $U_{1}$ and $U_{2}$ be subspaces of $V$. We say that
$V$ is the ***direct sum*** of $U_{1}$ and $U_{2}$, written
$V = U_{1} \oplus U_{2}$ if the following conditions hold:

1.  $V = U_{1} + U_{2}$,

2.  $U_{1} \cap U_{2} = \{\vec{0}\}$.
:::

::: {.prop}
[]{#prop-direct-sum-unique label="prop-direct-sum-unique"} Let $V$ be a vector space over a
field $F$ and let $U_1$ and $U_2$ be subspaces of $V$. Then
$V = U_1 \oplus U_2$ if and only if every vector $v\in V$ can be
expressed *uniquely* in the form $u_{1} + u_{2}$ where $u_{1} \in U_{1}$
and $u_{2} \in U_{2}$.
:::

::: {.proof}
*Proof.* ($\Rightarrow$) Suppose that $v = u_1 + u_2 = u_1' + u_2'$
where $u_1, u_1'\in U_1$ and $u_2,
    u_2'\in U_2$. Then $U_1 \ni u_1 - u_1' = u_2' - u_2 \in U_2$ and so
$u_1 -
    u_1' = u_2' - u_2\in U_1 \cap U_2 = \{\vec{0}\}$. It follows that
$u_1 =
    u_1'$ and $u_2 = u_2'$. Therefore $v = u_1 + u_2$ is the unique sum
of a vector in $U_1$ and a vector in $U_2$ equal to $v$.

($\Leftarrow$) Clearly
[Definition 6.1.1]({{< ref "06-direct-sums#de-direct-sum" >}})(1) holds. Suppose that $u\in U_1\cap
    U_2\subseteq V$. Then there exist unique $u_1\in U_1$ and
$u_2\in U_2$ such that $u = u_1 + u_2$. But $\vec{0}\in U_1$,
$u\in U_2$, and $u = \vec{0} + u$, and so, by uniqueness,
$u_1 = \vec{0}$. Similarly, $u\in U_1$, $\vec{0}\in U_2$, and
$u = u + \vec{0}$, and so, by uniqueness $u_2 = \vec{0}$. Therefore
$u = u_1 + u_2 = \vec{0} + \vec{0} =
    \vec{0}$ and so $U_1\cap U_2 = \{\vec{0}\}$. ◻
:::

::: {.prop}
[]{#prop-dirsum-basis label="prop-dirsum-basis"}
Let $V$ be a finite-dimensional vector space, let $U_1$ and $U_2$ be
subspaces of $V$, and let $\mathscr{B}_1$ and $\mathscr{B}_2$ be any
spanning sets for $U_1$ and $U_2$, respectively. Then
$V = U_1 \oplus U_2$, and $\mathscr{B}_1$ and $\mathscr{B}_2$ are bases
for $U_1$ and $U_2$, respectively, if and only if
$\mathscr{B}_{1} \cup \mathscr{B}_{2}$ is a basis for $V$ and
$\mathscr{B}_1\cap \mathscr{B}_2 = \varnothing$.
:::

::: {.proof}
*Proof.* Let $\mathscr{B}_{1} = \{ u_{1},u_{2},\dots,u_{m} \}$ and
$\mathscr{B}_{2} = \{
    v_{1},v_{2},\dots,v_{n} \}$.

($\Rightarrow$) Since $V = U_1\oplus U_2$, it follows from the
definition that $U_1\cap U_2=
    \{\vec{0}\}$. But $\vec{0}$ is not contained in any basis for any
vector space and so $\mathscr{B}_1\cap \mathscr{B}_2 = \varnothing$.

If $v \in V$, then $v = x + y$ where $x \in U_{1}$ and $y \in U_{2}$.
Since $\mathscr{B}_{1}$ and $\mathscr{B}_{2}$ span $U_{1}$ and $U_{2}$,
respectively, there exist scalars $\alpha_{i}$ and $\beta_{j}$ such that
$$x = \alpha_{1}u_{1} + \dots + \alpha_{m}u_{m} \qquad \text{and}
    \qquad y = \beta_{1}v_{1} + \dots + \beta_{n}v_{n}.$$ Then
$$v = x+y = \alpha_{1}u_{1} + \dots + \alpha_{m}u_{m} +
    \beta_{1}v_{1} + \dots + \beta_{n}v_{n}$$ and it follows that
$\mathscr{B} = \{
    u_{1},u_{2},\dots,u_{m},v_{1},v_{2},\dots,v_{n} \}$ spans $V$.

It remains to prove that $\mathscr{B}$ is linearly independent. Suppose
that $$\gamma_{1} u_{1} + \dots + \gamma_{m} u_{m} + \delta_{1} v_{1} +
    \dots + \delta_{n} v_{n} = \vec{0}$$ for some scalars
$\gamma_{i}$, $\delta_{i}$. Put
$$x = \gamma_{1} u_{1} + \dots + \gamma_{m} u_{m} \in U_{1} \qquad
    \text{and} \qquad y = \delta_{1} v_{1} + \dots + \delta_{n} v_{n} \in U_{2}.$$
Then $x + y = \vec{0}$ must be the unique decomposition of $\vec{0}$
produced by the direct sum $V = U_{1} \oplus U_{2}$. But
$\vec{0} + \vec{0} = \vec{0}$, and so $x = \vec{0}$ and $y = \vec{0}$
(by uniqueness), and hence
$$\gamma_{1} u_{1} + \dots + \gamma_{m} u_{m} = x = \vec{0} \qquad
    \text{and} \qquad \delta_{1} v_{1} + \dots + \delta_{n} v_{n} = y = \vec{0}.$$
Linear independence of $\mathscr{B}_{1}$ and $\mathscr{B}_{2}$ implies
that $$\gamma_{1} = \dots = \gamma_{m} = 0 \qquad \text{and} \qquad
    \delta_{1} = \dots = \delta_{n} = 0.$$ Hence
$\mathscr{B} = \mathscr{B}_{1} \cup \mathscr{B}_{2}$ is linearly
independent and therefore a basis for $V$.

($\Leftarrow$) If $\mathscr{B}_1 \cup \mathscr{B}_2$ is linearly
independent, then so too are $\mathscr{B}_1$ and $\mathscr{B}_2$, and so
$\mathscr{B}_1$ and $\mathscr{B}_2$ are bases for $U_1$ and $U_2$.

To show that $V = U_1\oplus U_2$, it suffices, by
[Proposition 6.1.3]({{< ref "06-direct-sums#prop-dirsum-basis" >}}), to show that every $v\in V$ can be given
uniquely in the form $x + y$ where $x\in U_1$ and $y\in U_2$.

Let $v\in V$ be arbitrary. Since $\mathscr{B}_1\cup \mathscr{B}_2$ is a
basis for $V$, there exist unique
$\alpha_1, \alpha_2, \ldots, \alpha_m, \beta_1, \beta_2, \ldots, \beta_n\in
    F$ such that
$$v = \alpha_{1} u_{1} + \dots + \alpha_{m} u_{m} + \beta_{1} v_{1} +
    \dots + \beta_{n} v_{n}.$$ If
$x = \alpha_{1} u_{1} + \dots + \alpha_{m} u_{m}\in \operatorname{Span}(\mathscr{B}_1) = U_1$
and
$y = \beta_{1} v_{1} + \dots + \beta_{n} v_{n} \in \operatorname{Span}(\mathscr{B}_2) = U_2$,
then certainly $v = x + y$. The linear combination of vectors in
$\mathscr{B}_1\cup \mathscr{B}_2$ that equals $v$ is unique, and so,
since $\mathscr{B}_1\cap \mathscr{B}_2=
    \varnothing$, it follows that $x\in U_1$ and $y\in U_2$ are unique
also. ◻
:::

::: {.cor}
If $V = U_{1} \oplus U_{2}$ is a finite-dimensional vector space
expressed as a direct sum of two subspaces, then
$$\dim V = \dim U_{1} + \dim U_{2}.$$
:::

::: {.exampjupyter}
[]{#ex:dirsum1 label="ex:dirsum1"} Let
$V = \mathbb{R}^{3}$ and let
$$U_{1} = \operatorname{Span} \left( \vec{v}_1 = \begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix},
    \vec{v}_2 = \begin{pmatrix} 2 \\ 1 \\ 0 \\ \end{pmatrix} \right) \qquad \text{and} \qquad U_{2} =
    \operatorname{Span} \left( \vec{v}_3 = \begin{pmatrix} 0 \\ 3 \\ 1 \\ \end{pmatrix} \right).$$
Show that $V = U_{1} \oplus U_{2}$.
:::

::: {.solution}
Since $\{\vec{v}_1, \vec{v}_2\} \cap \{\vec{v}_3\} = \varnothing$ it
suffices, by
[Proposition 6.1.3]({{< ref "06-direct-sums#prop-dirsum-basis" >}}), to show that
$\{\vec{v}_1, \vec{v}_2, \vec{v}_3\}$ is a basis for $V$.

Let us solve
$$\alpha \begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix} + \beta \begin{pmatrix} 2 \\ 1 \\ 0 \\ \end{pmatrix} + \gamma
    \begin{pmatrix} 0 \\ 3 \\ 1 \\ \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix}.$$
We find
$$\alpha + 2\beta = \alpha + \beta + 3\gamma = \alpha + \gamma = 0.$$
Thus $\gamma = -\alpha$, so the second equation gives $\beta -
    2\alpha = 0$;  i.e., $\beta = 2\alpha$. Hence $5\alpha = 0$, so
$\alpha = 0$ which implies $\beta = \gamma = 0$. Thus the three vectors
$$\begin{pmatrix} 1 \\ 1 \\ 1 \\ \end{pmatrix}, \begin{pmatrix} 2 \\ 1 \\ 0 \\ \end{pmatrix}, \begin{pmatrix} 0 \\ 3 \\ 1 \\ \end{pmatrix}$$
are linearly independent and hence form a basis for $\mathbb{R}^{3}$.
:::

[Example 6.1.5]({{< ref "06-direct-sums#ex:dirsum1" >}}) is in some sense typical of direct sums. To gain
a visual understanding, the following picture illustrates the
$3$-dimensional space $\mathbb{R}^{3}$ as the direct sum of a
$1$-dimensional subspace $U_{1}$ and a $2$-dimensional subspace $U_{2}$
(these being a line and a plane passing through the origin,
respectively).

![image](static/picture)

## Projection maps {#section-projection-maps}

::: {.defn}
Let $V = U_{1} \oplus U_{2}$ be a vector space expressed as a direct sum
of two subspaces. Then the ***projection maps*** $P_{1} :
    V \to U_1$ and $P_{2} : V \to U_2$ of the direct sum
$U_{1} \oplus U_{2}$ are defined by
$$P_{1}(v) = u_{1} \qquad \text{and} \qquad P_{2}(v) = u_{2}.$$ where
$v\in V$, $u_1\in U_1$, $u_2\in U_2$ and $v = u_1 + u_2$ is the unique
expression of $v$.
:::

::: {.lemma}
[]{#lem:proj label="lem:proj"} Let $V = U_{1} \oplus U_{2}$
be a direct sum of subspaces with projection map $P_{i} : V \to U_i$
where $i = 1$ or $2$. Then:

1.  $P_{i}$ is a linear transformation;

2.  $P_{1}(u) = u$ for all $u \in U_{1}$ and $P_{1}(w) = \vec{0}$ for
    all $w \in U_{2}$;

3.  $\ker P_1 = U_2$, $\operatorname{im} P_1 = U_1$, $\ker P_2 = U_1$,
    and $\operatorname{im} P_2 = U_2$.
:::

::: {.proof}
*Proof.* **(1).** Let $v,v' \in V$ and write $v = u_{1}+u_{2}$,  $v' =
    u'_{1}+u'_{2}$ where $u_{1},u'_{1} \in U_{1}$ and $u_{2},u'_{2} \in
    U_{2}$. Then $$v + v' = (u_{1}+u'_{1}) + (u_{2}+u'_{2})$$ and
$u_{1}+u'_{1} \in U_{1}$,  $u_{2}+u'_{2} \in U_{2}$. This must be the
unique decomposition for $v+v'$, so
$$P_1(v+v') = u_{1}+u'_{1} = P_1(v) + P_1(v').$$ Similarly, if
$\alpha \in F$, then $\alpha v = \alpha u_{1} + \alpha
    u_{2}$ and $\alpha u_{1} \in U_{1}$ and $\alpha u_{2} \in U_{2}$.
Thus $$P_1(\alpha v) = \alpha u_{1} = \alpha P_1(v).$$ Hence $P$ is a
linear transformation.

**(2).** If $u \in U_{1}$, then $u = u+\vec{0}$ and so $P_1(u) = u$. If
$w \in U_{2}$, then $w = \vec{0}+w$ and so $P_1(w) = \vec{0}$.

**(3).** By part (2), $U_2$ is contained in $\ker P_1$. On the other
hand, if $v\in
  \ker P_1$, then $P_1(v) = \vec{0}$ and so $v = \vec{0} + u_2$, for
some $u_2\in U_2$ must be the unique sum of a vector in $U_1$ and a
vector in $U_2$ equal to $v$. Hence $v = u_2\in U_2$, and so
$\ker P_1 = U_2$.

Clearly $\operatorname{im} P_1 \subseteq U_1$ by the definition of
$P_1$. On the other hand, if $u\in U_1$ is arbitrary, then $u = P_1(u)$
(by part (2) again), and so $\operatorname{im} P_1 = U_1$. ◻
:::

The major facts about projections are the following:

::: {.prop}
[]{#prop:proj label="prop:proj"} Let $P : V \to V$ be a
projection corresponding to some direct sum decomposition of the vector
space $V$. Then

1.  $P^{2} = P$;

2.  $V = \ker P \oplus \operatorname{im} P$;

3.  $\operatorname{id}-P$ is also a projection;

4.  $V = \ker P \oplus \ker(\operatorname{id}-P)$;

where $\operatorname{id} : V \to V$ denotes the identity transformation
defined by $\operatorname{id}(v) = v$ for all $v\in V$.
:::

::: {.proof}
*Proof.* Suppose that $V = U_1 \oplus U_2$, and that $P = P_1$.

**(1).** If $v \in V$, then $P_1(v) \in U_{1}$, so by
[Lemma 6.2.2]({{< ref "06-direct-sums#lem:proj" >}})(2),
$$P_1^{2}(v) = P_1(P_1(v)) = P_1(v)$$ and so $P_1^{2} = P_1$.

**(2).** Again, by [Lemma 6.2.2]({{< ref "06-direct-sums#lem:proj" >}})(3), $\ker P_1 = U_{2}$ and
$\operatorname{im} P_1 = U_{1}$, so
$$V = U_{1} \oplus U_{2} = \operatorname{im} P_1 \oplus \ker P_1.$$

**(3).** Let $P_2 : V \to U_2$ be the projection onto $U_{2}$. If
$v \in V$, say $v = u_{1}+u_{2}$ where $u_{1} \in
    U_{1}$ and $u_{2} \in U_{2}$, then
$$P_2(v) = u_{2} = v-u_{1} = v - P_1(v) = (\operatorname{id}-P_1)(v).$$
Hence $\operatorname{id} - P_1$ is the projection $P_2$.

**(4).** Again by [Lemma 6.2.2]({{< ref "06-direct-sums#lem:proj" >}})(3), $\ker P_1 = U_{2}$ and, since
$\operatorname{id} - P_1 = P_2$,
$\ker \operatorname{id} - P_1 = \ker P_2 =
    U_{1}$. Hence
$$V = U_{1} \oplus U_{2} = \ker(\operatorname{id}-P_1) \oplus \ker P_1.
    \square$$ ◻
:::

We give an example to illustrate how projection maps depend on both
summands in the direct sum decomposition.

::: {.exampjupyter}
Let
$$U_{1} = \operatorname{Span}\begin{pmatrix} 1 \\ 0 \end{pmatrix}, \quad 
    U_{2} = \operatorname{Span}\begin{pmatrix} 0 \\ 1 \end{pmatrix}, \quad \text{and} \quad
    U_{3} = \operatorname{Span}\begin{pmatrix} 1 \\ 1 \end{pmatrix}.$$

1.  Show that
    $$\mathbb{R}^{2} = U_{1} \oplus U_{2} \qquad \text{and} \qquad \mathbb{R}^{2} = U_{1}
        \oplus U_{3}.$$

2.  If $P : \mathbb{R}^{2} \to \mathbb{R}^{2}$ is the projection
    onto $U_{1}$ corresponding to the first decomposition and
    $Q : \mathbb{R}^{2} \to
        \mathbb{R}^{2}$ is the projection onto $U_{1}$ corresponding to
    the second decomposition, that $P \neq Q$.
:::

::: {.solution}
**(1).** If
$\vec{v} = \begin{pmatrix} x \\ y \end{pmatrix} \in \mathbb{R}^{2}$,
then
$$\vec{v} = \begin{pmatrix} x \\ y \end{pmatrix} = x\begin{pmatrix} 1 \\ 0 \end{pmatrix} + y \begin{pmatrix} 0 \\ 1 \end{pmatrix}$$
and
$$\vec{v} = \begin{pmatrix} x \\ y \end{pmatrix} = (x-y)\begin{pmatrix} 1 \\ 0 \end{pmatrix} + y\begin{pmatrix} 1 \\ 1 \end{pmatrix}.$$
Hence $\mathbb{R}^{2} = U_{1} + U_{2} = U_{1} + U_{3}$. Moreover,
$$U_{1} = \left\{ \begin{pmatrix} x \\ 0 \end{pmatrix} \;\middle|\; x \in \mathbb{R} \right\} \qquad
    \text{and} \qquad U_{2} = \left\{ \begin{pmatrix} 0 \\ y \end{pmatrix} \;\middle|\; y \in \mathbb{R} \right\},$$
so $U_{1} \cap U_{2} = \{\vec{0}\}$. Therefore we do have a direct sum
$\mathbb{R}^{2} = U_{1} \oplus U_{2}$. Similarly, one can see
$U_{1} \cap
    U_{3} = \{\vec{0}\}$, so the second sum is also direct.

**(2).** It suffices to find a $\vec{v} \in \mathbb{R} ^ 2$ such that
$P(\vec{v}) \neq Q(\vec{v})$.

If $\vec{v}\in U_1$, then $$P(\vec{v}) = Q(\vec{v}) = \vec{v}.$$ Hence
we will have to take $\vec{v}\in \mathbb{R} ^ 2 \setminus U_1$.

If $\vec{v} = \begin{pmatrix} 3 \\ 2 \end{pmatrix} \in \mathbb{R}^{2}$,
then $\vec{v}\not\in U_1$ and we obtain different values for
$P(\vec{v})$ and $Q(\vec{v})$. Indeed
$$\begin{pmatrix} 3 \\ 2 \end{pmatrix} = \begin{pmatrix} 3 \\ 0 \end{pmatrix} + \begin{pmatrix} 0 \\ 2 \end{pmatrix}$$
is the decomposition corresponding to
$\mathbb{R}^{2} = U_{1} \oplus U_{2}$ which yields
$$P\begin{pmatrix} 3 \\ 2 \end{pmatrix} = \begin{pmatrix} 3 \\ 0 \end{pmatrix} \in U_{1}$$
while
$$\begin{pmatrix} 3 \\ 2 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \end{pmatrix} + \begin{pmatrix} 2 \\ 2 \end{pmatrix}$$
is that corresponding to $\mathbb{R}^{2} = U_{1} \oplus U_{3}$ which
yields
$$Q\begin{pmatrix} 3 \\ 2 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \end{pmatrix} \in U_{1}.$$
Alternatively, $\ker P = U_{2} \neq \ker Q = U_{3}$, which is more
information indicating the difference between these two transformations.
:::

::: {.omittedexampjupyter}
Let $V = \mathbb{R}^{3}$ and $U = \operatorname{Span}(\vec{v}_{1})$,
where $$\vec{v}_{1} = 
    \begin{pmatrix}
      3 \\
      -1 \\
      2 \\
    \end{pmatrix}.$$

1.  Find a subspace $W$ such that $V = U \oplus W$.

2.  Let $P : V \to V$ be the associated projection onto $W$.
    Calculate $P(\vec{u})$ where $$\vec{u} = 
            \begin{pmatrix}
              4 \\
              4 \\
              4 \\
            \end{pmatrix}.$$
:::

::: {.solution}
(1) We first extend $\{\vec{v}_{1}\}$ to a basis for $\mathbb{R}^{3}$.
We claim that
$$\mathscr{B} = \left\{ \begin{pmatrix} 3 \\ -1 \\ 2 \\ \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 0 \\ \end{pmatrix},
    \begin{pmatrix} 0 \\ 1 \\ 0 \\ \end{pmatrix} \right\}$$ is a basis
for $\mathbb{R}^{3}$. We solve
$$\alpha \begin{pmatrix} 3 \\ -1 \\ 2 \\ \end{pmatrix} + \beta \begin{pmatrix} 1 \\ 0 \\ 0 \\ \end{pmatrix} + \gamma
    \begin{pmatrix} 0 \\ 1 \\ 0 \\ \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ \end{pmatrix};$$
that is, $$3\alpha + \beta = -\alpha + \gamma = 2\alpha = 0.$$ Hence
$\alpha = 0$, so $\beta = -3\alpha = 0$ and $\gamma = \alpha =
    0$. Thus $\mathscr{B}$ is linearly independent. Since $\dim V = 3$
and $|\mathscr{B}| = 3$, we conclude that $\mathscr{B}$ is a basis
for $\mathbb{R}^{3}$.

Let $W = \operatorname{Span}(\vec{v}_{2},\vec{v}_{3})$ where
$$\vec{v}_{2} = \begin{pmatrix} 1 \\ 0 \\ 0 \\ \end{pmatrix} \qquad \text{and} \qquad
    \vec{v}_{3} = \begin{pmatrix} 0 \\ 1 \\ 0 \\ \end{pmatrix}.$$ Since
$\mathscr{B} = \{ \vec{v}_{1}, \vec{v}_{2}, \vec{v}_{3} \}$ is a basis
for $V$, if $\vec{v} \in V$, then there exist
$\alpha_{1},\alpha_{2},\alpha_{3} \in \mathbb{R}$ such that
$$\vec{v} = (\alpha_{1}\vec{v}_{1}) + (\alpha_{2}\vec{v}_{2} +
    \alpha_{3}\vec{v}_{3}) \in U + W.$$ Hence $V = U+W$.

If $\vec{v} \in U \cap W$, then there exist
$\alpha,\beta_{1},\beta_{2} \in \mathbb{R}$ such that
$$\vec{v} = \alpha \vec{v}_{1} = \beta_{1}\vec{v}_{2} + \beta_{2}\vec{v}_{3}.$$
Therefore $$\alpha\vec{v}_{1} + (-\beta_{1})\vec{v}_{2} +
    (-\beta_{2})\vec{v}_{3} = \vec{0}.$$ Since $\mathscr{B}$ is linearly
independent, we conclude $\alpha = -\beta_{1}
    = -\beta_{2} = 0$, so $\vec{v} = \alpha \vec{v}_{1} = \vec{0}$. Thus
$U \cap W = \{\vec{0}\}$ and so $$V = U \oplus W.$$

(2) We write $\vec{u}$ as a linear combination of the
basis $\mathscr{B}$. Inspection shows $$\begin{aligned}
    \vec{u} = \begin{pmatrix} 4 \\ 4 \\ 4 \\ \end{pmatrix} & = 2 \begin{pmatrix} 3 \\ -1 \\ 2 \\ \end{pmatrix} - 2
    \begin{pmatrix} 1 \\ 0 \\ 0 \\ \end{pmatrix} + 6 \begin{pmatrix} 0 \\ 1 \\ 0 \\ \end{pmatrix}                                     \\
                                   & = \begin{pmatrix} 6 \\ -2 \\ 4 \\ \end{pmatrix} + \begin{pmatrix} -2 \\ 6 \\ 0 \\ \end{pmatrix},
  \end{aligned}$$ where the first term in the last line belongs to $U$
and the second to $W$. Hence
$$P(\vec{u}) = \begin{pmatrix} -2 \\ 6 \\ 0 \\ \end{pmatrix}$$ (since
this is the $W$ component of $\vec{u}$).
:::

## Direct sums of more summands

We briefly address the situation when $V$ is expressed as a direct sum
of more than two subspaces.

::: {.defn}
Let $V$ be a vector space. We say that $V$ is the ***direct sum*** of
subspaces $U_{1}$, $U_{2}$, ..., $U_{k}$, written $V = U_{1}
  \oplus U_{2} \oplus \dots \oplus U_{k}$, if the following conditions
hold:

1.  $V = U_{1} + U_{2} + \dots + U_{k}$;

2.  $U_{i} \cap (U_{1} + \dots + U_{i-1} + U_{i+1} + \dots +
                U_{k}) = \{\vec{0}\}$ for each $i$.
:::

Again this can be translated into a condition stating that every vector
can be given uniquely as a sum of vectors in each of the subspaces
comprising the direct sum. We omit the proof.

::: {.prop}
Let $V$ be a vector space with subspaces $U_{1}$, $U_{2}$, ..., $U_{k}$.
Then $V = U_{1} \oplus U_{2} \oplus \dots \oplus U_{k}$ if and only if
every vector in $V$ can be *uniquely* expressed in the form
$u_{1} + u_{2} +
  \dots + u_{k}$ where $u_{i} \in U_{i}$ for each $i$.
:::

## Problems {#problems-06-direct-sums}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-06-01 label="problem-06-01"}

    ::: {.questionjupyter}
    Consider the vector space $\mathbb{R}^{4}$. Let
    $$U = \operatorname{Span} \left( \begin{pmatrix}
              3 \\
              1 \\
              0 \\
              4 \\
            \end{pmatrix},
            \begin{pmatrix}
              1 \\
              0 \\
              -2 \\
              1 \\
          \end{pmatrix} \right) \qquad \text{and} \qquad W =
          \operatorname{Span} \left( \begin{pmatrix}
              0 \\
              1 \\
              0 \\
              -1 \\
              \end{pmatrix}, \begin{pmatrix}
              2 \\
              0 \\
              0 \\
              3 \\
          \end{pmatrix} \right).$$

    1.  Show that $\mathbb{R}^{4} = U \oplus W$.

    2.  Let $P \colon \mathbb{R}^{4} \to \mathbb{R}^{4}$ be the
        projection map onto $U$. Calculate $$P \begin{pmatrix}
                    1 \\
                    0 \\
                    0 \\
                    0 \\
                  \end{pmatrix}.$$
    :::

2.  []{#problem-06-02 label="problem-06-02"}

    ::: {.question}
    Let $V = U \oplus W$ be a finite-dimensional vector space which is
    the direct sum of two subspaces $U$ and $W$. Let
    $\mathscr{B}_{1}$ and $\mathscr{B}_{2}$ be bases for $U$ and $W$,
    respectively.

    What is the matrix of the projection map $P \colon V \to V$ onto $U$
    with respect to the basis $\mathscr{B}_{1} \cup \mathscr{B}_{2}$
    for $V$?
    :::

3.  []{#problem-06-03 label="problem-06-03"}

    ::: {.question}
    Let $V$ be a finite-dimensional vector space with
    basis $\mathscr{B}$. If $\mathscr{A}$ is a subset of $\mathscr{B}$
    and $\mathscr{B}\setminus\mathscr{A}$ denotes the complement
    of $\mathscr{A}$ in $\mathscr{B}$, show that
    $$V = \operatorname{Span}(\mathscr{A}) \oplus
              \operatorname{Span}(\mathscr{B}\setminus\mathscr{A}).$$
    :::

4.  []{#problem-06-04 label="problem-06-04"}

    ::: {.question}
    Let $U$ be the following subspace of $\mathbb{R}^{3}$:
    $$U = \left\{ \begin{pmatrix}
            x \\
            x \\
            0 \\
        \end{pmatrix} \biggm| x \in \mathbb{R} \right\}.$$

    1.  Find a subspace $W$ of $\mathbb{R}^{3}$ such that
        $\mathbb{R}^{3} = U
                \oplus W$.

    2.  Calculate the matrices of the corresponding projection maps
        $P,Q \colon
                \mathbb{R}^{3} \to \mathbb{R}^{3}$ onto $U$ and $W$,
        respectively with respect to the standard basis for
        $\mathbb{R}^{3}$.

    3.  Check explicitly that $\ker P = W$ and
        $\operatorname{im} P = U$.
    :::

5.  []{#problem-06-05 label="problem-06-05"}

    ::: {.question}
    Let $V$ be a finite-dimensional vector space and let $U$ be a
    subspace of $V$. Show that there exists a subspace $W$ such that
    $V = U \oplus
        W$.

    \[Hint: Extend a basis for $U$ to a basis for $V$.\]
    :::

6.  []{#problem-06-06 label="problem-06-06"}

    ::: {.question}
    A linear transformation $T \colon V \to V$ is called *idempotent* if
    $T^{2} = T$; that is, if
    $$T(T(v)) = T(v) \qquad \text{for all $v \in V$}.$$

    Let $T \colon V \to V$ be an idempotent linear transformation.

    1.  Show that $v-T(v)$ lies in the kernel of $T$ for all $v \in V$.

    2.  Show that $V = \ker T + \operatorname{im} T$. \[Hint: Use (a).\]

    3.  Show that $\ker T \cap \operatorname{im} T = \{\vec{0}\}$.

    4.  Parts (b) and (c) tell us that
        $V = \ker T \oplus \operatorname{im} T$. Let $P$ be the
        associated projection onto the direct summand $U =
                \operatorname{im} T$. Show that $P = T$.

    5.  Deduce that idempotent linear transformations and projection
        maps are precisely the same things.
    :::

7.  []{#problem-06-07 label="problem-06-07"}

    ::: {.question}
    Let $T \colon V \to V$ be an idempotent linear transformation. Prove
    directly from the definition that $\operatorname{id} - T$ is also an
    idempotent transformation.

    \[Here $\operatorname{id} \colon V \to V$ is the identity map. By
    "directly from the definition", I mean that you should not use the
    fact that idempotent transformations and projection maps are
    precisely the same objects.\]
    :::
