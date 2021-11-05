# The dual space
{{< chapter 6 >}}

We saw in [Theorem 5.1.1]({{< ref "05-L-V-W#thm-hom-v-w" >}}) that the set $\mathcal{L}(V, W)$ of all linear
transformations from a vector space $V$ to a vector space $W$ (over the
same field $F$) is itself a vector space. One particular example of
$\mathcal{L}(V,
W)$ plays a special role in linear mathematics, and this is the topic of
this section. Recall that every field $F$ is a vector space of dimension
$1$ over itself.

## Linear functionals

::: {.defn}
Let $V$ be a vector space over a field $F$. Then the ***dual space*** of
$V$ is $\mathcal{L}(V, F)$ and it is denoted $V ^ *$.

If $f \in \mathcal{L}(V, F)$, then $f: V \longrightarrow F$ is a linear
transformations called a ***linear functional***.
:::

From Wikipedia:

> "*Linear functionals are particularly important in quantum mechanics.
> Quantum mechanical systems are represented by Hilbert spaces, which
> are anti--isomorphic to their own dual spaces. A state of a quantum
> mechanical system can be identified with a linear functional.*"

::: {.example}
[]{#example-linear-functionals label="example-linear-functionals"} If
$f: \mathbb{R} ^ 3\longrightarrow\mathbb{R}$ is defined by
$$f\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} =
    5x + y - 3z,$$ then $f$ is a linear functional on $\mathbb{R} ^ 3$.
:::

If $f : F ^n \longrightarrow F$ is a linear functional, then the matrix
for $f$ with respect to the standard bases for $F ^ n$ and $F = F ^ 1$
is just the $1 \times
n$ matrix: $$(\alpha_1\ \alpha_2\ \cdots\ \alpha_n)$$ where
$$f(\vec{e}_1) = \alpha_1,\quad f(\vec{e}_2) = \alpha_2, \ldots, \quad f(\vec{e}_n) =
  \alpha_n.$$ Linear functionals are sometimes referred to as
*covectors* because of this correspondence. In precisely the same way
that matrices are often more convenient to deal with than linear
transformations, you may prefer to think about covectors rather than
linear functionals in the following sections.

We saw earlier in the course that if $T : F ^ n \longrightarrow F ^ m$
is a linear transformation, and $A$ is the matrix of $T$ with respect to
the standard basis for $F ^ n$ and $F ^ m$, then
$$T(\vec{v}) = A \vec{v}.$$

Applying the discussion of the previous two paragraphs to a linear
functional $f: F ^ n \longrightarrow F$ we obtain
$$f\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} 
  = 
  (\alpha_1\ \alpha_2\ \cdots\ \alpha_n) 
  \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix}
  = 
  \alpha_1x_1 + \alpha_2 x_2 + \cdots + \alpha_nx_n.$$ Conversely, if
$f : F ^ n \longrightarrow F$ is defined by
$$f\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} 
  = 
  \alpha_1x_1 + \alpha_2 x_2 + \cdots + \alpha_nx_n$$ for some
$\alpha_1, \alpha_2, \ldots, \alpha_n\in F$, then it is routine to
verify that $f$ is a linear transformation. We have show that a function
$f: F
^ n \longrightarrow F$ is a linear functional if and only if there exist
$\alpha_1,
\alpha_2,\ldots, \alpha_n\in F$ such that
$$f\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} 
  = 
  \alpha_1x_1 + \alpha_2 x_2 + \cdots + \alpha_nx_n.$$

::: {.prop}
[]{#prop-dim-dual-space label="prop-dim-dual-space"} If $V$ is a vector space over a field $F$
and $V ^ *$ is the dual space of $V$, then $\dim V = \dim V ^ *$.
:::

::: {.proof}
*Proof.* Since $V ^ * = \mathcal{L}(V, F)$, it follows from
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}), that
$$\dim V ^ * = \dim \mathcal{L}(V, F) = \dim V\ \dim F = \dim V$$ since
$\dim F = 1$. ◻
:::

## The dual basis

Since the dual space $V ^ *$ of a vector space $V$, is just the space
$\mathcal{L}(V,
F)$, we already have a description of a basis for $V ^ *$ in
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}). In particular, the field $F$ is a
one-dimensional vector space over itself, and the standard basis for $F$
in this context is $\{1\}$ (where $1$ is the multiplicative identity of
the field $F$). Since $F$ is a one-dimensional vector space, some of the
subscripts in
[Theorem 5.1.2]({{< ref "05-L-V-W#thm-basis-for-hom" >}}) can be omitted, giving us the following
definition.

::: {.defn}
[]{#defn-dual-basis label="defn-dual-basis"} If $V$
is a vector space and $\mathscr{B} = \{v_1, v_2, \ldots, v_n\}$ is a
basis for $V$, then the ***dual basis*** of $\mathscr{B}$ is the set
$\mathscr{B} ^ * = \{f_1, f_2, \ldots, f_n\}$ where $f_1, f_2, \ldots,
  f_n\in V ^ *$ are the unique linear functionals such that $$f_i(v_j) =
    \begin{cases}
      1 & \text{if } i = j       \\
      0 & \text{if } i \not = j,
    \end{cases}$$ or, equivalently, $f_i(v_i) = 1$ and $f_i(v_j) = 0$ if
$i\not = j$. If $\mathscr{B}$ is a basis for $V$, then $\mathscr{B} ^ *$
is a basis for $V ^ *$.
:::

::: {.examp}
[]{#examp-dual-basis-1 label="examp-dual-basis-1"}
Suppose that $F$ is a field and that
$\mathscr{B} = \{\vec{e}_1, \vec{e}_2, \ldots, \vec{e}_n\}$ is the
standard basis for $F ^ n$. What is the dual basis of $\mathscr{B}$?
:::

::: {.solution}
If $f_1, f_2, \ldots, f_n$ are defined as per
[Definition 7.2.1]({{< ref "07-dual-space#defn-dual-basis" >}}), and $\vec{v}\in F ^ n$ is arbitrary, then
$$f_i(\vec{v}) = f_i\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix}
    = f_i(x_1\vec{e}_1 + x_2\vec{e}_2 + \cdots + x_n\vec{e}_n)
    = x_1f_i(\vec{e}_1) + x_2f_i(\vec{e}_2) + \cdots + x_nf_i(\vec{e}_n)
    = x_i f_i(\vec{e}_i)
    = x_i.$$ In other words, $f_i$ maps every vector in $F ^ n$ to its
$i$th coordinate.
:::

You might also remember from
[Chapter 5]({{< ref "07-dual-space#chapter-vector-space-linear-transf" >}}) that it's much easier to
deal with the basis $\mathscr{B}$ consisting of the matrices:
$$\begin{pmatrix}
        1 & 0 & 0 \\
        0 & 0 & 0
      \end{pmatrix},
      \begin{pmatrix}
        0 & 1 & 0 \\
        0 & 0 & 0
      \end{pmatrix},
      \begin{pmatrix}
        0 & 0 & 1 \\
        0 & 0 & 0
      \end{pmatrix}, \\
      \begin{pmatrix}
        0 & 0 & 0 \\
        1 & 0 & 0
      \end{pmatrix},
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 1 & 0 \\
      \end{pmatrix},
      \begin{pmatrix}
        0 & 0 & 0 \\
        0 & 0 & 1 \\
      \end{pmatrix}$$ for $M_{3, 2}(\mathbb{R})$ than it is to deal with
the basis for the isomorphic vector space
$\mathcal{L}(\mathbb{R} ^ 3, \mathbb{R} ^ 2)$. In the same way that
$\mathscr{B}$ is a basis for $M_{3, 2}(\mathbb{R})$, the dual basis can
be thought of as: $$\begin{pmatrix}
      1 & 0 & \cdots & 0 
    \end{pmatrix},
    \begin{pmatrix}
      0 & 1 & \cdots & 0 
    \end{pmatrix},
    \ldots, 
    \begin{pmatrix}
      0 & 0 & \cdots & 1
    \end{pmatrix},$$ which correspond to the linear functionals
$$f_1\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} = x_1, \quad
    f_2\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} = x_2, \quad
    \ldots, \quad
    f_n\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} = x_n$$
which comprise the dual basis of the standard basis for $F ^ n$ (by
[Example 7.2.2]({{< ref "07-dual-space#examp-dual-basis-1" >}})).

## The dual transformation

::: {.defn}
[]{#defn-dual-transf label="defn-dual-transf"} Let
$V$ and $W$ be vector spaces over a field $F$. If
$T: V \longrightarrow W$ is a linear transformation, then the ***dual
transformation*** of $T$ is the linear transformation
$T ^ * : W ^ * \longrightarrow V ^ *$ defined by
$$T ^ *(f) = f \circ T : V\stackrel{T}{\longrightarrow} W
    \stackrel{f}{\longrightarrow} F\in \mathcal{L}(V, F) = V ^ *$$ for
all $f\in W ^ * = \mathcal{L}(W, F)$.
:::

It can be shown directly from the definition that the dual
transformation $T ^
  *$ of a linear transformation $T$ is itself a linear transformation,
or by the observation that the composition of linear transformations
(with compatible image and domain) is again a linear transformation.

Suppose that $T: V\longrightarrow W$ is a linear transformation. If $V$
is an $n$-dimensional vector space over $F$, and $W$ is an
$m$-dimensional vector space over $F$, then $V$ is isomorphic to $F ^ n$
and $W$ is isomorphic to $F ^ m$. Hence we may, without loss of
generality, assume that $T: F ^ n \longrightarrow
F ^ m$, and so $T$ eats column vectors of length $n$ and poops out
column vectors of length $m$. What does the corresponding dual
transformation $T ^ *$ do?

As described above, linear functionals in $(F ^ n) ^ *$ correspond to
row vectors of length $n$ and linear functionals in $(F ^ m) ^ *$
correspond to row vectors of length $m$. So, in some sense, $T ^ *$ eats
row vectors of length $m$ and poops out row vectors of length $n$.

Well, sometimes dreams come true: if
$\reflectbox{\ensuremath{\vec{\reflectbox{\ensuremath{f}}}}}$ is the
matrix of a linear functional $f$ with respect to the standard bases for
$F ^ n$ and $F$, then
$$T ^ *(f) = f \circ T = \reflectbox{\ensuremath{\vec{\reflectbox{\ensuremath{f}}}}} A,$$
where $\reflectbox{\ensuremath{\vec{\reflectbox{\ensuremath{f}}}}} A$ is
a product of a $1 \times m$ matrix with an $m\times n$ matrix, AKA a row
vector of length $n$. Sweet.

::: {.examp}
[]{#example-dual-transf label="example-dual-transf"} Suppose that
$T: \mathbb{R} ^ 3\longrightarrow\mathbb{R} ^ 2$ is the linear
transformation defined by
$$T\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}
    =
    \begin{pmatrix} x - y \\ y - z \end{pmatrix}.$$ Describe the dual
transformation $T ^ * : (\mathbb{R} ^ 2) ^ * \longrightarrow
  (\mathbb{R} ^ 3) ^ *$ of $T$.
:::

::: {.solution}
Suppose that $f \in (\mathbb{R} ^ 2) ^ *$ is arbitrary. Then there exist
$\alpha, \beta \in F$ such that
$$f \begin{pmatrix} x \\ y \end{pmatrix} = \alpha x + \beta y.$$ We will
denote $T ^ *(f) \in (\mathbb{R} ^ 3) ^ *$ by
$S: \mathbb{R}^ 3 \longrightarrow\mathbb{R}$. It follows directly from
the definition that $$S \begin{pmatrix} x \\ y \\ z \end{pmatrix}  
    = f \circ T \begin{pmatrix} x \\ y \\ z \end{pmatrix}  
    = f \begin{pmatrix} x - y \\ y - z \end{pmatrix}
    = \alpha (x - y) + \beta (y - z). \square$$
:::

::: {.example}
[]{#example-dual-transf-2 label="example-dual-transf-2"} Let
$T: \mathbb{R} ^ 4\longrightarrow\mathbb{R} ^ 4$ be defined by
$$T \begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix} 
    = \begin{pmatrix} x+4y \\ y \\ 2z+t \\ z+2t \end{pmatrix}.$$
Describe the dual transformation
$T ^ *: (\mathbb{R} ^ 4) ^ * \longrightarrow(\mathbb{R}
  ^ 4) ^ *$. \[In
[Example 4.2.2]({{< ref "04-linear-transf#ex:lintrans-matrix" >}}) we found the matrix of this linear
transformation with respect to several bases for $\mathbb{R} ^ 4$.\]
:::

::: {.solution}
Suppose that $f\in (\mathbb{R} ^ 4) ^ *$ is arbitrary. Then there exist
$\alpha, \beta, \gamma, \delta\in F$ such that
$$f \begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix} 
    = \alpha x + \beta y + \gamma z + \delta t.$$ Hence if we write
$S = T ^ *(f) : \mathbb{R}^ 4 \longrightarrow\mathbb{R}$, then
$$S \begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix} 
    = f \circ T  \begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix}
    = \begin{pmatrix} x+4y \\ y \\ 2z+t \\ z+2t \end{pmatrix}
    = \alpha(x + 4y) + \beta y + \gamma (2z + t) + \delta (z + 2t).\square$$
:::

::: {.prop}
Let $U$, $V$, and $W$ be vector spaces over a field $F$.

1.  If $S, T\in \mathcal{L}(V, W)$, then $(S + T) ^ * = S ^ * + T ^ *$.

2.  If $T\in \mathcal{L}(V, W)$ and $\alpha\in F$, then
    $(\alpha T) ^ * =
           \alpha T ^ *$.

3.  If $S\in \mathcal{L}(V, W)$ and $T\in \mathcal{L}(U, V)$, then
    $(ST) ^ * = T ^ * \circ S ^ *$.
:::

::: {.proof}
*Proof.* See
Problem [1]({{< ref "07-dual-space#problem-07-01" >}}) in
[Section 7.6]({{< ref "07-dual-space#problems-07-dual-space" >}}). ◻
:::

## The matrix of the dual of a linear transformation

In this section we consider the matrix of the dual of a linear
transformation.

::: {.defn}
If $A$ is a matrix with entries in a field $F$, then the ***transpose***
$A ^ *$ of $A$ is the matrix obtained by swapping the rows and columns
of $A$. More precisely, if $A = [\alpha_{ij}]$, then $A
  ^ * = [\alpha_{ji}]$.
:::

::: {.example}
$$\text{If}\quad
    A = 
    \begin{pmatrix}
      8  & 6  & 0 \\
      -9 & -7 & 0 \\
      3  & 3  & 2
    \end{pmatrix},
    \quad
    \text{ then }
    \quad
    A ^ * = 
    \begin{pmatrix}
      8 & -9 & 3 \\
      6 & -7 & 3 \\
      0 & 0  & 2
    \end{pmatrix}.$$ $$\text{If}\quad 
    B = 
    \begin{pmatrix}
      1 & 2 & 3 \\
      5 & 0 & 0
    \end{pmatrix}, 
    \quad\text{ then }\quad
    B ^ * = 
    \begin{pmatrix}
      1 & 5 \\
      2 & 0 \\
      3 & 0
    \end{pmatrix}.$$
:::

::: {.example}
[]{#example-matrix-dual-map label="example-matrix-dual-map"} Suppose that
$T: \mathbb{R} ^ 3 \longrightarrow\mathbb{R} ^ 2$ is the linear
transformation defined by
$$T\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}
    =
    \begin{pmatrix} x - y \\ y - z \end{pmatrix}.$$ If $\mathscr{B}$ and
$\mathscr{C}$ are the standard bases for $\mathbb{R} ^
  3$ and $\mathbb{R} ^ 2$, respectively, then find
$\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B} ^*}(T ^ *)$ where
$\mathscr{B} ^ *$ and $\mathscr{C} ^ *$ are the dual bases of
$\mathscr{B}$ and $\mathscr{C}$, respectively.
:::

::: {.solution}
Suppose that $\mathscr{B} ^ * = \{f_1, f_2, f_3\}$ and
$\mathscr{C} ^ * =
  \{g_1, g_2\}$ as in
[Example 7.3.2]({{< ref "07-dual-space#example-dual-transf" >}}). Then
$$f_1\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} = x, 
    \quad f_2\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} = y,
    \quad f_3\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} = z,
    \quad g_1\begin{pmatrix} x \\ y \end{pmatrix} = x, 
    \quad g_2\begin{pmatrix} x \\ y \end{pmatrix} = y.$$

To find the entries in $\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B}
  ^*}(T ^ *)$ we must express $T ^ * (g_1)$ and $T ^ *(g_2)$ as linear
combinations of $f_1$, $f_2$, and $f_3$. From the definition of $T ^*$,
it follows that $$\begin{aligned}
    (T ^ * (g_1))\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} 
    & = & g_1\left(T \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}\right)
    = g_1\begin{pmatrix} x - y \\ y - z \end{pmatrix}
    = x - y
    = f_1\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} -
    f_2\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} \\
    (T ^ * (g_2))\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} 
    & = & g_2\left(T \begin{pmatrix} x \\ y \\ z \\ \end{pmatrix}\right)
    = g_2\begin{pmatrix} x - y \\ y - z \end{pmatrix}
    = y - z
    = f_2\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} -
    f_3\begin{pmatrix} x \\ y \\ z \\ \end{pmatrix} \\
  \end{aligned}$$ and so $T ^ * (g_1) = f_1 - f_2$ and
$T ^ *(g_2) = f_2 - f_3$. Hence
$$\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B} ^*}(T ^ *)
    =
    \begin{pmatrix}
      1  & 0  \\
      -1 & 1  \\
      0  & -1
    \end{pmatrix}.$$ Note that
$$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T) =
    \begin{pmatrix}
      1 & -1 & 0  \\
      0 & 1  & -1
    \end{pmatrix}.\square$$
:::

::: {.thm}
[]{#thm-transpose label="thm-transpose"} Let $V$ and
$W$ be finite-dimensional vector spaces over a field $F$ and let
$T : V \longrightarrow W$ be a linear transformation. If $\mathscr{B}$
and $\mathscr{C}$ are bases for $V$ and $W$, respectively, and
$\mathscr{B} ^ *$ and $\mathscr{C} ^ *$ are the respective dual bases,
then $$\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B} ^ *}(T ^ *) =
    \operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T) ^ *$$ where
$T ^ * : W ^ * \longrightarrow V ^ *$ is the dual transformation of $T$.
In other words, the matrix of a dual transformation is the transpose of
the matrix of the original linear transformation.
:::

::: {.proof}
*Proof.* Suppose that $\mathscr{B} = \{v_1, \ldots, v_n\}$ and that
$\mathscr{C} =
  \{w_1, \ldots, w_m\}$. If
$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T) =
  [\alpha_{ij}]$ and $v_j\in \mathscr{B}$, then, by the definition of
the matrix of a linear transformation,
$$T(v_j) = \sum_{i = 1} ^ m \alpha_{ij}w_i.$$ for all $j$. Similarly, if
$\mathscr{B} ^ * = \{f_1, \ldots, f_n\}$ and
$\mathscr{C} ^ *= \{g_1, \ldots, g_m\}$, then, by the definition of the
dual transformation, $$\label{t-star-basis}
    (T ^ * (g_k)) (v_j) = g_k(T(v_j))
    = g_k\left(\sum_{i = 1} ^ m \alpha_{ij}w_i\right)
    = \alpha_{kj}
    = \alpha_{kj}\ f_j(v_j)$$ for all $j$ and $k$. If $v\in V$ is any
vector, then there exist $\beta_1, \ldots, \beta_n\in
  F$ such that $$\label{eq_v}
    v = \beta_1 v_1 + \beta_2 v_2 + \cdots + \beta_n v_n 
      = \sum_{j = 1} ^ n \beta_j v_j.$$ Hence $$\label{eq_f_j_v}
    f_j(v) = f_j\left(\sum_{i = 1} ^ n \beta_i v_i\right)
           = \sum_{i = 1} ^ n \beta_i\ f_j(v_i) 
           = \beta_j\ f_j(v_j)$$ since $f_j(v_i) = 0$ for all $i\neq j$.
Therefore $$\begin{aligned}
  (T ^ * (g_k))(v) & = g_k \circ T(v) && \text{by definition of } T ^ *\\ 
                   & = g_k\circ T \left(\sum_{j=1} ^ {n}\beta_jv_j\right) &&
                   \text{by }\eqref{eq_v} \\
                   & = \sum_{j=1} ^ {n} \beta_j\big(g_k( T(v_j))\big) && \text{by
                   linearity of } g_k\circ T \\
                   & = \sum_{j=1} ^ {n} \beta_j\big(\alpha_{kj} f_j(v_j)\big) &&
                   \text{by }\eqref{t-star-basis} \\
                   & = \sum_{j=1} ^ {n} \alpha_{kj} \big(\beta_j f_j(v_j)\big) && 
                     \text{scalar multiplication is commutative!}\\
                   & = \sum_{j=1} ^ {n} \alpha_{kj} f_j(v)  &&
                   \text{by }\eqref{eq_f_j_v}\\
                   & = \left(\sum_{j=1} ^ {n} \alpha_{kj} f_j\right) (v)\end{aligned}$$
and so $$T ^ * (g_k) = \sum_{j = 1} ^ n \alpha_{kj} f_{j}$$ and so the
$k$th column of $\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B}
  ^*}(T ^ *)$ is:
$$\begin{pmatrix} \alpha_{k1} \\ \alpha_{k2} \\ \vdots \\ \alpha_{kn} 
    \end{pmatrix},$$ and this is simply the $k$th row of
$\operatorname{Mat}_{\mathscr{B},
    \mathscr{C}}(T)$. Therefore, $\operatorname{Mat}_{\mathscr{C} ^ *,
    \mathscr{B} ^ *}(T ^ *) = [\alpha_{ji}] = \operatorname{Mat}_{\mathscr{B},
  \mathscr{C}}(T) ^ *$. ◻
:::

## Column rank equals row rank

::: {.example}
The row rank of the matrix (from
[Example 7.3.2]({{< ref "07-dual-space#example-dual-transf" >}})): $$\begin{pmatrix}
      1  & 0  \\
      -1 & 1  \\
      0  & -1
    \end{pmatrix}.$$ is $2$, and the column rank is also $2$.
:::

::: {.lemma}
[]{#lemma-rank-im-dual-transf label="lemma-rank-im-dual-transf"} Let $V$ and $W$ are
finite-dimensional vector spaces over a field $F$. If $T
  : V \longrightarrow W$ is a linear transformation, then
$\dim \operatorname{im} T = \dim \operatorname{im} T ^ *$ where
$T ^ *: W ^ * \longrightarrow V ^ *$ is the dual transformation of $T$.
:::

::: {.proof}
*Proof.* In
Problem [2]({{< ref "07-dual-space#problem-07-02" >}})(d) in
[Section 7.6]({{< ref "07-dual-space#problems-07-dual-space" >}}), it is shown that
$\dim \ker T ^ * = \dim \ker T + \dim W - \dim V$. Also $\dim
  \operatorname{im} T ^ * = \dim W ^* - \dim \ker T ^ *$ by the
Rank-Nullity Theorem
([Theorem 4.1.7]({{< ref "04-linear-transf#thm-rank-nullity" >}})). Since $\dim W ^ * = \dim W$,
([Proposition 7.1.3]({{< ref "07-dual-space#prop-dim-dual-space" >}})), it follows that $$\begin{aligned}
    \dim \operatorname{im} T ^ * & = & \dim W - \dim \ker T ^ *                     \\
                                 & = & \dim W - ( \dim \ker T + \dim W - \dim V)    \\
                                 & = & \dim V - \dim \ker T                         \\
                                 & = & \dim V - (\dim V - \dim \operatorname{im} T) \\
                                 & = & \dim \operatorname{im} T.\square
  \end{aligned}$$ ◻
:::

::: {.thm}
[]{#thm-row-rank-is-col-rank label="thm-row-rank-is-col-rank"} If $A$ is a matrix with entries in a
field $F$, then the row rank of $A$ equals the column rank.
:::

::: {.proof}
*Proof.* Recall from
Problem [6]({{< ref "04-linear-transf#problem-04-06" >}}) in
[Section 4.5]({{< ref "04-linear-transf#problems-04-linear-transf" >}}), that if $\mathscr{B}$ and
$\mathscr{C}$ are the standard bases for $F ^ m$ and $F ^ n$,
respectively, then $T : F ^ m \longrightarrow F ^ n$ defined by
$T(\vec{v})
  = A\vec{v}$ is a linear transformation, and
$\operatorname{Mat}_{\mathscr{B},
  \mathscr{C}}(T) = A$. It follows that the column rank of $A$ equals
the column rank of $\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$.
Hence, by
[Theorem 4.2.3]({{< ref "04-linear-transf#thm-column-space-is-image" >}})(1), the column rank of $A$ equals
$\dim
  \operatorname{im} T$.
[Lemma 7.5.2]({{< ref "07-dual-space#lemma-rank-im-dual-transf" >}}) states that $$\dim
  \operatorname{im} T = \dim \operatorname{im} T ^ *$$ and $\dim
  \operatorname{im} T ^ *$ equals the column rank of
$\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B} ^ *}(T ^ *)$
([Theorem 4.2.3]({{< ref "04-linear-transf#thm-column-space-is-image" >}})(1)). But we showed in
[Theorem 7.4.4]({{< ref "07-dual-space#thm-transpose" >}}) that $\operatorname{Mat}_{\mathscr{C} ^
    *, \mathscr{B}
    ^ *}(T ^ *)$ equals the transpose of
$\operatorname{Mat}_{\mathscr{B},
  \mathscr{C}}(T)$. Hence $\dim \operatorname{im} T ^ *$ is the column
rank of the transpose of
$\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$, which is the row
rank of $\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T) = A$. ◻
:::

## Problems {#problems-07-dual-space}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-07-01 label="problem-07-01"}

    ::: {.question}
    Suppose that $V$ and $W$ are vector spaces over a field $F$. Show
    that the following hold:

    1.  if $S, T \in \mathcal{L}(V, W)$, then
        $(S + T) ^ * = S ^ * + T ^ *$;

    2.  if $\alpha \in F$ and $T\in \mathcal{L}(V, W)$, then
        $(\alpha T) ^ * = \alpha T ^ *$;

    3.  if $T\in \mathcal{L}(V, W)$ and $S\in \mathcal{L}(W, U)$, then
        $(S\circ T) ^ * = T ^ * \circ S ^ *$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  By definition, $(S + T) ^ *(f) = f \circ (S + T)$ for all
        $f \in W ^ *$. If $v\in V$ is arbitrary, then $$\begin{aligned}
              (S + T) ^ * (f)(v) & = & f((S + T)(v)) \\
                                 & = & f(S(v) + T(v))\\
                                 & = & f(S(v)) + f(T(v))\\
                                 & = & (f \circ S)(v) + (f\circ T)(v)\\
                                 & = & S ^ *(f)(v) + T ^ *(f)(v).
            \end{aligned}$$ Hence since $v\in V$ was arbitrary, it
        follows that $(S + T) ^ * = S ^ * +
            T ^ *$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  If $\alpha\in F$ is arbitrary, $f\in W ^ *$, and $v\in V$, then
        $$\begin{aligned}
              (\alpha T) ^ * (f)(v)  =  f\circ (\alpha T)(v) 
                                     =  f\circ  T(\alpha v) 
                                     =  f(T(\alpha v)) 
                                     =  \alpha f(T(v)) 
                                     =  \alpha T ^ *(f)(v).\square
            \end{aligned}$$

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  Suppose that $f\in U ^ *$ and $v\in V$ are arbitrary. Then
        $$\begin{aligned}
              (S\circ T) ^ * (f)  =  f\circ (S\circ T)        
                                  =  (f \circ S) \circ T      
                                  =  T ^ * (f \circ S)        
                                  =  T ^ * (S ^ * (f))        
                                  =  (T ^ * \circ S ^ *) (f). \square
            \end{aligned}$$
    :::

2.  []{#problem-07-02 label="problem-07-02"}

    ::: {.question}
    If $U$ is a subset (not necessarily a subspace) of a vector space
    $V$, then the ***annihilator*** of $U$ is defined to be the set:
    $$U ^ 0 = \{f \in V ^ *: f(u) = 0,\ \text{for all }u\in U\}.$$

    1.  Show that $U ^ 0$ is a subspace of $V ^ *$.

    2.  If $V$ is finite-dimensional and $U$ is a subspace of $V$, then
        prove that $\dim U + \dim U ^ 0 = \dim V$.

    3.  If $V$ and $W$ are finite-dimensional and
        $T\in \mathcal{L}(V, W)$, then show that
        $\ker T ^ * = (\operatorname{im} T) ^ 0$, that is, that the
        kernel of the dual transformation of $T$ equals the annihilator
        of the image of $T$.

    4.  If $V$ and $W$ are finite-dimensional and
        $T\in \mathcal{L}(V, W)$, then show that
        $\dim\ker T ^ * = \dim \ker T + \dim W - \dim V$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  We verify the subspace criteria. Firstly, note that
        $\vec{0}_{V ^ *}$ (the linear transformation mapping every
        vector in $V$ to $0\in F$) belongs to $U ^ 0$ and so
        $U ^ 0 \not = \varnothing$.

        If $f, g\in U ^ 0$ and $u\in U$, then
        $(f + g)(u) = f(u) + g(u) = 0 + 0 =
            0$, and so $f + g\in U ^ 0$.

        If $\alpha\in F$ and $u\in U$, then
        $(\alpha f)(u) = \alpha f(u) = \alpha 0
            = 0$, and so $\alpha f \in U ^ 0$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  Since $U$ is a vector space in its own right, let
        $\iota:U \longrightarrow V$ be defined by $\iota(u) = u$ for all
        $u\in U$. Clearly, $\iota$ is a linear transformation (it's just
        the identity on $U$). If $\iota ^ * : V ^ * \longrightarrow U
            ^ *$ is the dual transformation of $\iota$, then it follows,
        by the Rank-Nullity Theorem
        ([Theorem 4.1.7]({{< ref "04-linear-transf#thm-rank-nullity" >}})), that
        $$\label{eq-sheet-v-problem-2-b}
              \dim V ^ * = \dim\ker \iota ^ * + \dim\operatorname{im}\iota ^ *.$$
        If $f\in \ker \iota ^ *$, then
        $\iota ^ *(f) = f\circ \iota = \vec{0}_{U ^*}
            \in U ^ *$ (the linear transformation mapping every element
        of $U$ to $0
              \in F$). It follows that if $f\in \ker \iota ^ *$, then
        $f\in V ^ *$ and if $u\in
            U$, then $f(u) = f(\iota(u)) = \iota ^ *(f)(u) = 0$ and so
        $f \in U ^ 0$. Conversely, if $f \in U ^ 0$ and $u\in U$, then
        $\iota ^*(f)(u) = (f \circ \iota)(u) = f(\iota(u)) = f(u) = 0$,
        and so $f\in \ker \iota ^ *$. We have shown that
        $\ker \iota ^ * = U ^ 0$ and so
        $\dim \ker \iota ^ * = \dim U ^ 0$.

        If $f\in U ^ *$, then $f$ can be extended to a linear functional
        $\hat f: V
            \longrightarrow F$ (by extending any basis for $U$ to a
        basis $\mathscr{B}$ for $V$, defining $\hat f$ to equal $f$ on
        the basis for $U$, and to be arbitrary on the remaining vectors
        in $\mathscr{B}$). It follows that $\iota ^ * (\hat f) = \hat f
            \circ \iota = f \circ \iota = f$ and so
        $f\in \operatorname{im}\iota ^ *$. Since $f\in
            U ^*$ was arbitrary, it follows that
        $\operatorname{im}\iota ^ * = U$, and so $\dim \operatorname{im}
            \iota ^ * = \dim U$.

        Thus by the equation above, it follows that
        $$\dim V ^ * = \dim\ker \iota ^ * + \dim\operatorname{im}\iota ^ * 
                         = \dim U ^ 0 + \dim U.$$ This was probably an
        unreasonably hard problem.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  Suppose that $f\in \ker T ^ *$. Then
        $T ^ * (f) = \vec{0}_{V ^ *}$ and so $T ^ *(f)(v) = 0\in F$ for
        all $v\in V$. If $w\in \operatorname{im}T$, then there exists
        $v\in V$ such that $T(v) = w$, and so
        $$f(w) = f(T(v)) = T ^ * (f)(v) = 0.$$ Since $w\in W$ was
        arbitrary, we have shown that $f\in (\operatorname{im}T) ^ 0$.

        Conversely, if $f\in (\operatorname{im}T) ^ 0$, then for all
        $v\in V$, $f(T(v)) = 0$. In particular,
        $T ^ * (f) (v) = f(T(v)) = 0$ for all $v\in V$, and so $T
              ^ *(f) = 0_{V ^ *}$ and so $f\in \ker T ^ *$.

        It follows that $\ker T ^ * = (\operatorname{im}T) ^ 0$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    4.  In part (c), we showed that
        $\ker T ^* = (\operatorname{im}T) ^ 0$ and so
        $\dim \ker T ^ * = \dim (\operatorname{im}T) ^ 0$. By part (b),
        $\dim (\operatorname{im}T) ^ 0 =
              \dim W - \dim \operatorname{im}T$ and, by the Rank-Nullity
        Theorem, $\dim \operatorname{im}T = \dim V - \dim \ker T$.
        Putting the equalities of the previous sentences together, we
        obtain $$\begin{aligned}
                \dim \ker T ^ * & = & \dim (\operatorname{im}T) ^ 0  \\
                                & = & \dim W - \dim \operatorname{im}T  \\
                                & = & \dim W - (\dim V - \dim \ker T) \\
                                & = & \dim\ker T + \dim W - \dim V.\square
              \end{aligned}$$
    :::

3.  []{#problem-07-03 label="problem-07-03"}

    ::: {.question}
    Let $V = \mathcal{P}$ be the vector space of polynomials with
    coefficients in $\mathbb{R}$ and indeterminant $x$, and let
    $$U = \{x ^ 4 p : p \in V\}.$$ In other words, $U$ is the set of all
    polynomials that are a multiple of $x ^ 4$ in $V$.

    1.  Show that $U$ is a subspace of $V$.

    2.  Prove that $f:V \longrightarrow\mathbb{R}$ defined by
        $f(p) = p'(0)$ is a linear functional.

    3.  Show that $f \in V ^ *$ from part (b) belongs to the annihilator
        $U ^
                  0$ of $U$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.  We verify the Subspace Criteria:

        -   Since $x ^ 4\in U$, it follows that $U$ is not empty.

        -   Suppose that $x ^ 4p, x ^ 4q\in U$. Then
            $x ^ 4 p + x ^ 4q = x ^ 4 (p + q)\in U$.

        -   If $\alpha\in \mathbb{R}$ and $x ^ 4 p \in U$ are arbitrary,
            then $\alpha (x ^ 4 p) = x ^ 4 (\alpha p)\in U$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  Since $p'(0) \in \mathbb{R}$ for all $p \in V$, it suffices to
        show that $f$ is a linear transformation.

        If $p, q\in V$ and $\alpha\in \mathbb{R}$ are arbitrary, then
        $$f(p + q) = (p + q)'(0) = p'(0) + q'(0) = f(p) + f(q)$$ and
        $$f(\alpha p) = (\alpha p)'(0) = \alpha p'(0) = \alpha f(p),$$
        and so $f$ is a linear transformation.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  By definition (Problem 2 on this sheet),
        $$U ^ 0 = \{\,f\in V ^ *\mid f(u) = 0\ \text{for all }u\in U\,\}.$$
        If $x ^ 4 p\in U$ is arbitrary, then
        $$f(x ^ 4 p) = (x ^ 4 p)'(0) 
                         = (4 x ^ 3 p + x ^ 4 p')(0) 
                         = 0 + 0
                         = 0$$ and so $f\in U ^ 0$.
    :::

4.  []{#problem-07-04 label="problem-07-04"}

    ::: {.question}
    Let $\mathscr{B} =\{ \vec{e}_1, \vec{e}_2, \vec{e}_3, \vec{e}_4\}$
    be the standard basis for $\mathbb{R} ^ 4$, and let
    $\mathscr{B} ^ * = \{f_1,
          f_2, f_3, f_4\}\subseteq (\mathbb{R} ^ 4) ^ *$ be the dual
    basis for $\mathscr{B}$. Show that the annihilator $U ^ 0$ of $U =
          \operatorname{Span}(\vec{e}_1, \vec{e}_3)$ is
    $\operatorname{Span}(f_2,
          f_4)$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    Suppose that $f\in U ^ 0$. Then, by definition (in Problem 2 on this
    sheet), $f(u) = 0$ for all
    $u\in U = \operatorname{Span}(\vec{e}_1, \vec{e}_3)$. If $u\in U$ is
    arbitrary, then $u$ is a linear combination of $\vec{e}_1$ and
    $\vec{e}_3$, and so there exist $x_1, x_3\in \mathbb{R}$ such that
    $$u = x_1\vec{e}_1 + x_3\vec{e}_3 
          = \begin{pmatrix}x_1\\0\\x_3\\0\end{pmatrix}.$$ Hence
    $$f\begin{pmatrix}x_1\\0\\x_3\\0\end{pmatrix} = 0$$ for all
    $x_1, x_3\in \mathbb{R}$.

    If $f\in \operatorname{Span}(f_2, f_4)$, then
    $f = \alpha_2 f_2 + \alpha_4f_4$ for some
    $\alpha_2, \alpha_4\in \mathbb{R}$. Hence if
    $$v = \begin{pmatrix}x_1\\0\\x_3\\0\end{pmatrix} \in U$$ is
    arbitrary, then
    $$f(v) = (\alpha_2 f_2 + \alpha_4f_4)\begin{pmatrix}x_1\\0\\x_3\\0\end{pmatrix}
           = \alpha_2f_2\begin{pmatrix}x_1\\0\\x_3\\0\end{pmatrix} + 
             \alpha_4f_4 \begin{pmatrix}x_1\\0\\x_3\\0\end{pmatrix}
           = \alpha_2 0 + \alpha_4 0
           = 0$$ and so $f\in U ^ 0$.

    On the other hand, if $f\in U^ 0 \subseteq V ^ *$, then since
    $\mathscr{B}^ *$ is a basis for $V ^ *$, it follows that
    $$f = \beta_1f_1 + \beta_2f_2 + \beta_3f_3 + \beta_4f_4$$ for some
    $\beta_1, \beta_2, \beta_3, \beta_4\in \mathbb{R}$. Recall that
    $$f_i\begin{pmatrix}x_1\\x_2\\x_3\\x_4\end{pmatrix}
      = x_i$$ for $i = 1, \ldots, 4$. Since $\vec{e}_1\in U$ and
    $f \in U ^0$, it follows that $$0 = f(\vec{e}_1) 
        = (\beta_1f_1 + \beta_2f_2 + \beta_3f_3 + \beta_4f_4)(\vec{e}_1) 
        = \beta_1.$$ Similarly, $\beta_3 = 0$, and so
    $f = \beta_2f_2 + \beta_4f_4\in \operatorname{Span}(f_2,
      f_4)$.
    :::

5.  []{#problem-07-05 label="problem-07-05"}

    ::: {.question}
    Suppose that $A$ and $B$ are matrices with entries in a field $F$.
    If $A
          ^ *$ denotes the transpose of $A$, then show that the
    following hold:

    1.  if $A$ and $B$ are $m\times n$ matrices, then
        $(A + B) ^ * = A ^ * + B ^ *$;

    2.  $(\gamma A) ^ * = \gamma A ^ *$ for all $\gamma\in F$;

    3.  if $A$ is an $m\times n$ matrix and $B$ is a $n\times k$ matrix,
        then $(AB) ^ * = B ^ * A ^ *$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    Suppose that $A = [\alpha_{ij}]$ and $B = [\beta_{jk}]$.

    1.  By definition, $A + B  = [\alpha_{ij} + \beta_{ij}]$ and so
        $(A + B) ^ T = [\alpha_{ji} + \beta_{ji}] = [\alpha_{ji}] + [\beta_{ji}]
              = A ^ T + B ^ T$, as required.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    2.  Again, $\gamma A = [\gamma \alpha_{ij}]$ and so
        $(\gamma A) ^ T = [\gamma
              \alpha_{ji}] = \gamma [\alpha_{ji}] = \gamma A ^ T$.

        ::: {.center}

        ------------------------------------------------------------------------
        :::

    3.  Suppose that $T: F ^ n\longrightarrow F ^ m$ and
        $S : F ^ k\longrightarrow F ^ n$ are linear transformations such
        that their matrices with respect to the standard bases for
        $F ^ m$, $F ^ n$, and $F ^ k$ are $A$ and $B$, respectively.
        Then $T\circ S : F ^ k \longrightarrow F ^ m$ is a linear
        transformation, whose matrix, with respect to the standard bases
        for $F ^ k$ and $F ^ m$ is $AB$. If
        $T ^ *: (F ^ m) ^ * \longrightarrow(F ^ n) ^ *$ and $S ^ *: 
              (F ^ n) ^ * \longrightarrow(F ^ k) ^ *$ are the dual
        transformations of $T$ and $S$ respectively, then
        $S ^ * \circ T ^ *: (F ^ m) ^ * \longrightarrow(F ^ k) ^ *$ and
        $S ^ * \circ T ^ * = (T\circ S) ^ *$ (by Problem 1(c) on this
        sheet). It follows by
        [Theorem 7.4.4]({{< ref "07-dual-space#thm-transpose" >}}) that the matrix of $(T\circ S)
              ^ *$ is $(AB) ^ T$, while the matrix of
        $S ^ * \circ T ^ *$ is $B ^ T A ^
              T$, as required.
    :::

6.  []{#problem-07-06 label="problem-07-06"}

    ::: {.question}
    If $V$ is a vector space, show that every linear functional $f$ over
    $V$ is either surjective or $f(v) = 0$ for all $v\in V$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    Suppose that $f: V\longrightarrow F$ is such that there exists
    $v\in V$ where $f(v) \not
      = 0$. Then $f(v) = \alpha$ for some $\alpha\in F$. If $\beta\in F$
    is arbitrary, then
    $\beta = \beta \alpha ^ {-1}\alpha = \beta\alpha ^ {-1} f(v)
      = f(\beta\alpha ^ {-1} v)$ and so $\beta \in \operatorname{im}f$
    for all $\beta \in F$. Hence $f$ is surjective.
    :::

7.  []{#problem-07-07 label="problem-07-07"}

    ::: {.question}
    Let $V$ be any vector space. Show that the dual transformation of
    the identity linear transformation on $V$ is the identity
    transformation on the dual space $V ^ *$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    Let $\operatorname{id}_{V}: V \longrightarrow V$ be the identity
    transformation defined so that $\operatorname{id}_V(v) = v$ for all
    $v\in V$. Then the dual transformation is defined to be
    ${\operatorname{id}_V} ^ * (f) = f \circ \operatorname{id}_V$ where
    $f\in V ^ * = \mathcal{L}(V, F)$ is arbitrary.

    It follows that if $v\in V$ is arbitrary, then
    $f\circ \operatorname{id}_V (v) =
          f(\operatorname{id}_V(v)) = f(v)$ and since $v$ was arbitrary,
    it follows that ${\operatorname{id}_V
          } ^ * (f) = f$. But $f\in V ^ *$ was arbitrary too, and so
    ${\operatorname{id}_V} ^ *
          (f) = f$ for all $f\in V ^*$. Therefore
    ${\operatorname{id}_V} ^ *$ is the identity transformation
    $\operatorname{id}_{V ^ *} : V ^ * \longrightarrow V ^ *$.
    :::

8.  []{#problem-07-08 label="problem-07-08"}

    ::: {.question}
    Let $T :\mathbb{R} ^ 4\longrightarrow\mathbb{R} ^ 4$ be defined by
    the following formula:
    $$T\begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix} =
          \begin{pmatrix} x + 4y \\ y \\ 2z + t \\ z + 2t \end{pmatrix}.$$
    Let
    $\mathscr{B} = \{ \vec{e}_{1},\vec{e}_{2},\vec{e}_{3},\vec{e}_{4} \}$
    denote the standard basis for $\mathbb{R}^{4}$ and let
    $\mathscr{C}$ be the basis
    $$\mathscr{C} = \{ \vec{v}_{1},\vec{v}_{2},\vec{v}_{3},\vec{v}_{4} \} =
            \left\{ \begin{pmatrix} 2 \\ 0 \\ 2 \\ 0 \end{pmatrix}, \begin{pmatrix}
            0 \\ 1 \\ -1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 0 \\ 1 \\ 0
            \end{pmatrix}, \begin{pmatrix} 3 \\ 0 \\ 0 \\ 1 \end{pmatrix} \right\}.$$
    Find $\operatorname{Mat}_{\mathscr{B} ^ *, \mathscr{C} ^ *}(T ^ *)$
    where $T^ *$ is the dual transformation of $T$ and $\mathscr{B} ^ *$
    and $\mathscr{C} ^ *$ are the dual bases of $\mathscr{B}$ and
    $\mathscr{C}$, respectively.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    By [Theorem 7.4.4]({{< ref "07-dual-space#thm-transpose" >}}), it suffices to find
    $\operatorname{Mat}_{\mathscr{C},
      \mathscr{B}}(T)$ and then transpose it. Since
    $\operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T) = [\alpha_{ij}]$
    where $T(\vec{v}_{j}) = \sum_{i =
      1} ^ 4 \alpha_{ij} \vec{e}_i$, it suffices to express each
    $T(\vec{v}_{j})$ as a linear combination of the basis vectors in
    $\mathscr{B}$: $$\begin{aligned}
        T(\vec{v}_1)  =  T \begin{pmatrix}2\\0\\2\\0\end{pmatrix}  = \begin{pmatrix}2\\0\\4\\2\end{pmatrix},\quad
        T(\vec{v}_2)  =  T \begin{pmatrix}0\\1\\-1\\0\end{pmatrix} = \begin{pmatrix}4\\1\\-2\\-1\end{pmatrix},\quad \\
        T(\vec{v}_3)  =  T \begin{pmatrix}0\\0\\1\\0\end{pmatrix}  = \begin{pmatrix}0\\0\\2\\1\end{pmatrix}, \quad
        T(\vec{v}_4)  =  T \begin{pmatrix}3\\0\\0\\1\end{pmatrix}  = \begin{pmatrix}3\\0\\1\\2\end{pmatrix}.
      \end{aligned}$$ It follows that
    $$\operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(T) =
      \begin{pmatrix}
        2 & 4 & 0 & 3 \\
        0 & 1 & 0 & 0 \\
        4 & -2 & 2 & 1 \\
        2 & -1 & 1 & 2 
      \end{pmatrix}$$ and so
    $$\operatorname{Mat}_{\mathscr{B}^ *, \mathscr{C} ^ *}(T ^ *) =
      \begin{pmatrix}
        2 & 0 & 4 & 2 \\
        4 & 1 & -2 & -1\\
        0 & 0 & 2 & 1 \\
        3 & 0 & 1 & 2 
      \end{pmatrix}.\square$$
    :::

9.  []{#problem-07-09 label="problem-07-09"}

    ::: {.question}
    Suppose that $V$ and $W$ are finite-dimensional, and suppose that
    $\phi:
          \mathcal{L}(V, W) \longrightarrow\mathcal{L}(W ^ *, V ^ *)$ is
    defined by $\phi(T) =
          T ^ *$. In other words, $\phi$ maps every linear
    transformation from $V$ to $W$ to its dual transformation. Show that
    $\phi$ is an isomorphism of vector spaces.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    We present two different looking solutions to this problem.

    **Solution 1:** We prove that $\phi$ is linear, and a bijection, and
    hence an isomorphism.

    **Linear.** If $S, T\in \mathcal{L}(V, W)$, then
    $$\phi(S + T) = (S + T) ^ * = S ^ * + T ^ * = \phi(S) + \phi(T)$$ by
    Problem 1(a). If $\alpha\in F$, then
    $\phi(\alpha T) = (\alpha T) ^ * = \alpha T ^ * =
          \alpha \phi(T)$, by Problem 1(b). Hence $\phi$ is a linear
    transformation.

    **Injective.** Since
    $\dim \mathcal{L}(V, W) = \dim V \dim W = \dim V ^ * \dim W ^ * = \dim \mathcal{L}(W
          ^ *, V ^ *)$, by Problem 1 on the Problem Sheet for Section 5,
    $\phi$ is a bijection if and only if it is injective.

    Suppose that $S, T\in \mathcal{L}(V, W)$ are such that
    $\phi(S) = \phi(T)$. Then $S ^ * = T ^ *$, and so
    $f\circ S = S ^ *(f) = T ^ *(f) = f \circ T$ for all $f\in W ^*$.
    Thus $f\circ (S - T) = f\circ S - f\circ T = \vec{0}_{V ^ *}$ for
    all $f\in W ^ *$

    We assume without loss of generality that $W$ is $F ^ n$ where
    $n = \dim
          W$. Seeking a contradiction, suppose that $S\not= T$. Then
    there exists $v\in V\setminus \{\vec{0}\}$ such that
    $S(v) \not=T(v)$ and so $S(v) - T(v)
          \not= \vec{0}$. In other words, if
    $$S(v) - T(v) = \begin{pmatrix}x_1\\x_2\\\vdots\\x_n\end{pmatrix} \in W$$
    then at least one $x_i\not=0$. Hence if $f_i\in W ^ *$ is the
    element of the dual basis for $W ^ *$ of the standard basis for $W$,
    then $$(f_i(S - T)(v)) = f_i\circ (S(v) - T(v)) 
                          = f_i\begin{pmatrix}x_1\\x_2\\\vdots\\x_n\end{pmatrix}
                          = x_i \not= 0,$$ and so
    $f_i\circ(S - T) \not= \vec{0}_{V ^ *}$, which is a contradiction.
    Therefore $S = T$, and so $\phi$ is injective.

    **Solution 2:** Let $\mathscr{B}$ be any basis for $V$ and let
    $\mathscr{C}$ be any basis for $W$, and suppose that $\dim V = n$
    and $\dim W= m$. We showed in
    [Theorem 5.1.7]({{< ref "05-L-V-W#thm-linear-transf-equal-matrices" >}}) that the function
    mapping $T\in \mathcal{L}(V, W)$ to
    $\operatorname{Mat}_{\mathscr{B}, \mathscr{C}}(T)$ is an isomorphism
    from $\mathcal{L}(V, W)$ to $M_{m, n}(F)$ (the set of all
    $m \times n$ matrices with entries in $F$). We denote this
    isomorphism by $\text{Mat}_{\mathscr{B}, \mathscr{C}}$.

    The same theorem applied to $W ^ *$ and $V ^ *$ with the dual bases
    $\mathscr{C} ^ *$ and $\mathscr{B}^ *$, respectively states that the
    function mapping $T ^ * \in \mathcal{L}(W ^ *, V ^ *)$ to
    $\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *}(T
          ^ *)$ is an isomorphism from $\mathcal{L}(W ^ *, V ^ *)$ to
    $M_{n, m}(F)$. The inverse of an isomorphism is also an isomorphism,
    and we denote the isomorphism mapping
    $\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *}(T ^ *)$ to
    $T ^ *$ by $\text{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *} ^ {-1}$.

    The function $F: M_{m, n}(F) \longrightarrow M_{n, m}(F)$ that maps
    every matrix to its transpose is also an isomorphism (it is easy to
    check that it is linear, and $F$ is its own inverse, and is hence a
    bijection).

    Finally, if $T\in \mathcal{L}(V, W)$ is arbitrary, then
    $$\text{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *} ^ {-1} \circ F \circ \text{Mat}_{\mathscr{B},
          \mathscr{C}}(T) 
          =  
          \text{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *} ^ {-1}
          (\text{Mat}_{\mathscr{B}, \mathscr{C}}(T)) ^ t
          = 
          \text{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *} ^ {-1}
          (\operatorname{Mat}_{\mathscr{C} ^ *, \mathscr{B}^ *}(T ^ *))
          = T ^ *$$ by
    [Theorem 7.4.4]({{< ref "07-dual-space#thm-transpose" >}}). Since
    $\text{Mat}_{\mathscr{C} ^ *, \mathscr{B}^
          *} ^ {-1} \circ F \circ \text{Mat}_{\mathscr{B}, \mathscr{C}}$
    is a composition of isomorphism, it too is an isomorphism, and the
    solution is complete.
    :::
