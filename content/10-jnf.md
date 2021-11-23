# Jordan normal form
{{< chapter 9 >}}

In the previous section we discussed at great length the diagonalisation
of linear transformations. This is useful since it is much easier to
work with diagonal matrices than arbitrary matrices. However, as we saw,
not every linear transformation can be diagonalised. In this section, we
discuss an alternative which, at least in the case of vector spaces
over $\mathbb{C}$, can be used for any linear transformation or matrix.

## Definition and existence

::: {.defn}
[]{#defn-jordan-block label="defn-jordan-block"} A
***Jordan block*** is an $n \times n$ matrix of the form
$$J_{n}(\lambda) = 
  \begin{pmatrix}
    \lambda     & 1       & 0       & \cdots & 0 & 0 & 0\\
    0           & \lambda & 1       & \cdots & 0 & 0 & 0 \\
    0           & 0       & \lambda & \cdots & 0 & 0 & 0 \\
    \vdots      & \vdots  & \vdots  & \ddots & \vdots & \vdots & \vdots \\
              0 & 0       & 0       & \ldots & \lambda & 1       & 0 \\
              0 & 0       & 0       & \ldots & 0       & \lambda & 1  \\
              0 & 0       & 0       & \ldots & 0       & 0       & \lambda  \\
  \end{pmatrix}$$ for some positive integer $n$ and some
scalar $\lambda$.
:::

::: {.defn}
A linear transformation $T : V \longrightarrow V$ (of a vector
space $V$) has ***Jordan normal form*** $A$ if there exists a basis
$\mathscr{B}$ for $V$ such that
$$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T) = A = \begin{pmatrix}
      J_{n_{1}}(\lambda_{1}) & 0                      & \cdots & \cdots & 0                      \\
      0                      & J_{n_{2}}(\lambda_{2}) & 0      & \cdots & 0                      \\
      \vdots                 & 0                      & \ddots & \ddots & \vdots                 \\
      \vdots                 & \vdots                 &        & \ddots & 0                      \\
      0                      & 0                      & \cdots & 0      & J_{n_{k}}(\lambda_{k})
    \end{pmatrix}$$ for some positive integers $n_{1}$, $n_{2}$,
..., $n_{k}$ and scalars $\lambda_{1}$, $\lambda_{2}$,
..., $\lambda_{k}$.
:::

::: {.thm}
[]{#thm-JNF label="thm-JNF"} Let $V$ be a finite-dimensional
vector space and $T : V \longrightarrow V$ be a linear transformation
such that polynomial $c_{T}(x) = (x - \lambda_1) ^
    {a_{\lambda_1}} \cdots (x - \lambda_k) ^ {a_{\lambda_k}}$
($\lambda_{1}$, $\lambda_{2}$, ..., $\lambda_{k}$ are the eigenvalues of
$T$). Then there exists a basis $\mathscr{B}$ for $V$ such that
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T)$ is in Jordan normal
form, where each Jordan block has the form $J_{m}(\lambda_{i})$ for
some $m$ and some $i$.
:::

In particular, this theorem applies when our field is $\mathbb{C}$,
since every polynomial is a product of linear factors over $\mathbb{C}$.
When $c_{T}(x)$ is not a product of linear factors, Jordan normal form
cannot be used, and in that case, something called the *rational normal
form* is used instead.

::: {.cor}
Let $A$ be an $n\times n$ matrix over $\mathbb{C}$. Then there exists an
invertible $n\times n$ matrix $P$ (over $\mathbb{C}$) such that
$P^{-1}AP$ is in Jordan normal form.
:::

::: {.proof}
*Proof.* Suppose that $T: \mathbb{C} ^ n \longrightarrow\mathbb{C} ^ n$
and $\mathscr{B}$ is a basis for $\mathbb{C} ^ n$ such that
$\operatorname{Mat}_{\mathscr{B},
  \mathscr{B}}(T) = A$. Then by
[Theorem 10.1.3]({{< ref "10-jnf#thm-JNF" >}}) there
exists a basis $\mathscr{C}$ for $\mathbb{C} ^ n$ such that
$\operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(T)$ is in Jordan normal
form. Hence if $P = \operatorname{Mat}_{\mathscr{C},
  \mathscr{B}}(\operatorname{id}_{\mathbb{C} ^ n})$ is the change of
basis matrix from
[Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}}), then $P ^ {-1} A P =
  \operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(T)$. ◻
:::

We shall not prove [Theorem 10.1.3]({{< ref "10-jnf#thm-JNF" >}}). It is reasonably hard to prove and is most easily
addressed by developing more advanced concepts and theory. Instead, we
shall use this section to explain how to calculate the Jordan normal
form associated to a linear transformation or matrix.

Why do we care about the Jordan normal form? For more or less the same
reason as we cared about diagonal matrices, they are considerably easier
to handle than arbitrary matrices.

::: {.prop}
[]{#prop:J-props label="prop:J-props"} Let
$J = J_{n}(\lambda)$ be an $n \times n$ Jordan block. Then the following
hold:

1.  $\det(J) = \lambda ^ n$;

2.  $J$ is invertible if and only if $\lambda \neq 0$;

3.  $c_{J}(x) = (x-\lambda)^{n}$;

4.  the unique eigenvalue of $J$ is $\lambda$;

5.  $m_{J}(x) = (x-\lambda)^{n}$;

6.  the eigenspace $E_{\lambda}$ of $J$ has dimension $1$.
:::

## Finding the Jordan normal form

The following proposition will allow us to determine the Jordan normal
form of a matrix of a linear transformation in some small cases.

::: {.prop}
[]{#prop-JNF label="prop-JNF"} Let $V$ be a
finite-dimensional vector space, let $T: V\longrightarrow V$ be a linear
transformation such that $c_T(x)$ is a product of linear factors, and
let $J$ denote the Jordan normal form of $T$. If $\lambda$ is an
eigenvalue of $T$, then

1.  the algebraic multiplicity $a_{\lambda}$ of $\lambda$ equals the sum
    of the sizes of the Jordan blocks $J_{n}(\lambda)$ occurring in $J$;

2.  if the power of $(x-\lambda)$ occurring in the minimum
    polynomial $m_{T}(x)$ is $(x-\lambda)^{m}$, then $J$ contains a
    Jordan block $J_m(\lambda)$, and $m$ is the largest size of a Jordan
    block associated to $\lambda$ in $J$;

3.  the geometric multiplicity $g_{\lambda}$ of $\lambda$ equals the
    number of Jordan blocks $J_{n}(\lambda)$ occurring in $J$.
:::

## Examples

::: {.exampjupyter}
Let $V = \mathbb{R}^{4}$ and let $T : V \longrightarrow V$ be the linear
transformation given by the matrix $$B = \begin{pmatrix}
      2 & 1 & 0  & -3 \\
      0 & 2 & 0  & 4  \\
      4 & 5 & -2 & 1  \\
      0 & 0 & 0  & -2
    \end{pmatrix}.$$ Determine the Jordan normal form of $T$.
:::

::: {.solution}
We first determine the characteristic polynomial of $T$:
$$\begin{aligned}
    c_{T}(x) & = \det (xI - B)                              \\
             & = \det \begin{pmatrix}
      x-2 & -1  & 0   & 3   \\
      0   & x-2 & 0   & -4  \\
      -4  & -5  & x+2 & -1  \\
      0   & 0   & 0   & x+2
    \end{pmatrix}           \\
             & = (x+2) \det \begin{pmatrix}
      x-2 & -1  & 0   \\
      0   & x-2 & 0   \\
      -4  & -5  & x+2
    \end{pmatrix}     \\
             & = (x+2)^{2} \det \begin{pmatrix}
      x-2 & -1  \\
      0   & x-2
    \end{pmatrix} \\
             & = (x-2)^{2} (x+2)^{2}.
  \end{aligned}$$ It follows that the eigenvalues of $T$ are $2$ and
$-2$ and the algebraic multiplicities are $a_2 = 2 = a_{-2}$. By
[Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}})(1),
$a_2$ is the sum of the sizes of the Jordan blocks $J_{?}(2)$ in the JNF
for $T$. It follows that either $a_2 = 1 + 1$ (the JNF has $2$ blocks of
size $1$) or $a_2 = 2$ (the JNF has $1$ block of size $2$). The
analogous statement holds for the eigenvalue $-2$. To figure out which
option occurs, we compute the minimum polynomial.

The minimum polynomial $m_T(x)$ of $T$ has the form $m_{T}(x) =
    (x-2)^{i}(x+2)^{j}$ where $1 \leqslant i,j \leqslant 2$. Since
$$B - 2I = \begin{pmatrix}
      0 & 1 & 0  & -3 \\
      0 & 0 & 0  & 4  \\
      4 & 5 & -4 & 1  \\
      0 & 0 & 0  & -4
    \end{pmatrix}
    \qquad \text{and} \qquad
    B + 2I = \begin{pmatrix}
      4 & 1 & 0 & -3 \\
      0 & 4 & 0 & 4  \\
      4 & 5 & 0 & 1  \\
      0 & 0 & 0 & 0
    \end{pmatrix},$$ it follows that $$\begin{aligned}
    (B-2I) (B+2I)     & = \begin{pmatrix}
      0 & 4 & 0 & 4 \\
      0 & 0 & 0 & 0 \\
      0 & 4 & 0 & 4 \\
      0 & 0 & 0 & 0
    \end{pmatrix} \neq 0 \\
    \quad\text{and}\quad
    (B-2I)^{2} (B+2I) & = \begin{pmatrix}
      0 & 1 & 0  & -3 \\
      0 & 0 & 0  & 4  \\
      4 & 5 & -4 & 1  \\
      0 & 0 & 0  & -4
    \end{pmatrix}
    \begin{pmatrix}
      0 & 4 & 0 & 4 \\
      0 & 0 & 0 & 0 \\
      0 & 4 & 0 & 4 \\
      0 & 0 & 0 & 0
    \end{pmatrix}                              \\
                      & = \begin{pmatrix}
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0
    \end{pmatrix}.
  \end{aligned}$$ Hence $$m_{T}(x) = (x-2)^{2} (x+2).$$ Hence, by
[Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}})(2),
the largest Jordan block for the eigenvalue $2$ has size $2$, while the
largest Jordan block for the eigenvalue $-2$ is $1$. This uniquely
determines the Jordan normal form of $T$ as: $$\begin{pmatrix}
      J_{2}(2) & 0         & 0         \\
      0        & J_{1}(-2) & 0         \\
      0        & 0         & J_{1}(-2)
    \end{pmatrix} =
    \begin{pmatrix}
      2 & 1 & 0  & 0  \\
      0 & 2 & 0  & 0  \\
      0 & 0 & -2 & 0  \\
      0 & 0 & 0  & -2
    \end{pmatrix}.$$
:::

::: {.exampjupyter}
[]{#ex:JNF-exD label="ex:JNF-exD"} Let
$V = \mathbb{R}^{4}$ and let $T : V \longrightarrow V$ be the linear
transformation given by the matrix $$C = \begin{pmatrix}
      3  & 0 & 1 & -1 \\
      1  & 2 & 1 & -1 \\
      -1 & 0 & 1 & 1  \\
      0  & 0 & 0 & 2
    \end{pmatrix}.$$ Determine the Jordan normal form of $T$.
:::

::: {.solution}
First, we find the characteristic polynomial of $T$: $$\begin{aligned}
    c_{T}(x) & = \det(xI - C)                               \\
             & =
    \det \begin{pmatrix}
      x-3 & 0   & -1  & 1   \\
      -1  & x-2 & -1  & 1   \\
      1   & 0   & x-1 & -1  \\
      0   & 0   & 0   & x-2
    \end{pmatrix}                        \\
             & = (x-2) \det \begin{pmatrix}
      x-3 & 0   & -1  \\
      -1  & x-2 & -1  \\
      1   & 0   & x-1
    \end{pmatrix}     \\
             & = (x-2)^{2} \det \begin{pmatrix}
      x-3 & -1  \\
      1   & x-1
    \end{pmatrix} \\
             & = (x-2)^{2} \bigl( (x-3)(x-1) + 1 \bigr)     \\
             & = (x-2)^{2} (x^{2} - 4x + 3 + 1)             \\
             & = (x-2)^{2} (x^{2} - 4x + 4)                 \\
             & = (x-2)^{4}.
  \end{aligned}$$ By [Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}})(1), the sizes of the Jordan blocks in the Jordan
Normal Form for $T$ are either $1 + 1 + 1 + 1 = 4$, $1 + 1 + 2 = 4$,
$1 + 3 = 4$, $2 + 2 = 4$, or just $4$.

Next, we calculate the minimum polynomial: $$C - 2I = \begin{pmatrix}
      1  & 0 & 1  & -1 \\
      1  & 0 & 1  & -1 \\
      -1 & 0 & -1 & 1  \\
      0  & 0 & 0  & 0
    \end{pmatrix},$$ so $$\begin{aligned}
    (C-2I)^{2} & = \begin{pmatrix}
      1  & 0 & 1  & -1 \\
      1  & 0 & 1  & -1 \\
      -1 & 0 & -1 & 1  \\
      0  & 0 & 0  & 0
    \end{pmatrix}
    \begin{pmatrix}
      1  & 0 & 1  & -1 \\
      1  & 0 & 1  & -1 \\
      -1 & 0 & -1 & 1  \\
      0  & 0 & 0  & 0
    \end{pmatrix}                 \\
               & = \begin{pmatrix}
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0
    \end{pmatrix}.
  \end{aligned}$$ Hence $m_{T}(x) = (x-2)^{2}$, and so, by
[Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}})(2),
there is a Jordan block $J_2(2)$ in the Jordan normal form for $T$.
Combining this with the above, the sizes of the Jordan blocks in the
Jordan Normal Form for $T$ are either $1 + 1 + 2 = 4$ or $2 + 2 = 4$. To
know which one of these, we must find the geometric multiplicity $g_2$
of the eigenvalue $2$. If $g_2 = 3$, then the correct option is
$1 + 1 + 2$, and if $g_2 = 2$, then $2 + 2$ is the correct option.

Since $g_2 = \dim E_2 = \dim \ker (T - 2I)$, we solve
$(T-2I)(v) = \vec{0}$; that is, $$C - 2I =
    \begin{pmatrix}
      1  & 0 & 1  & -1 \\
      1  & 0 & 1  & -1 \\
      -1 & 0 & -1 & 1  \\
      0  & 0 & 0  & 0
    \end{pmatrix}$$ By inspection, the column rank of $C - 2I$ is $1$,
and so, by
[Theorem 4.2.3]({{< ref "04-linear-transf#thm-column-space-is-image" >}})(1),
$\dim \operatorname{im} (T - 2I) = 1$. Hence, by the Rank-Nullity
Theorem ([Theorem 4.1.7]({{< ref "04-linear-transf#thm-rank-nullity" >}})), $g_{2} = \dim \ker (T
    - 2I) = 3$. Therefore, by
[Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}})(3),
there are 3 Jordan blocks in the JNF for $T$ for the eigenvalue $2$, and
so the sizes of the Jordan blocks in the Jordan Normal Form for $T$ are
$1 + 1 + 2 = 4$, and the Jordan normal form of $T$ is $$\begin{pmatrix}
      J_{2}(2) & 0        & 0        \\
      0        & J_{1}(2) & 0        \\
      0        & 0        & J_{1}(2)
    \end{pmatrix} =
    \begin{pmatrix}
      2 & 1 & 0 & 0 \\
      0 & 2 & 0 & 0 \\
      0 & 0 & 2 & 0 \\
      0 & 0 & 0 & 2
    \end{pmatrix}.$$
:::

::: {.exampjupyter}
[]{#ex:JNF-exE label="ex:JNF-exE"} Let
$$C = \begin{pmatrix}
      3  & 0 & 1 & -1 \\
      1  & 2 & 1 & -1 \\
      -1 & 0 & 1 & 1  \\
      0  & 0 & 0 & 2
    \end{pmatrix}$$ (the matrix from
[Example 10.3.2]({{< ref "10-jnf#ex:JNF-exD" >}})). Find an invertible matrix $P$ such that
$P^{-1}CP$ is in Jordan normal form.
:::

::: {.solution}
We have already established the Jordan normal form of the transformation
$T : \mathbb{R}^{4} \longrightarrow\mathbb{R}^{4}$ with matrix $C$ is
$$A = \begin{pmatrix}
      J_{2}(2) & 0        & 0        \\
      0        & J_{1}(2) & 0        \\
      0        & 0        & J_{1}(2)
    \end{pmatrix} =
    \begin{pmatrix}
      2 & 1 & 0 & 0 \\
      0 & 2 & 0 & 0 \\
      0 & 0 & 2 & 0 \\
      0 & 0 & 0 & 2
    \end{pmatrix}.$$ Our problem is equivalent (by
[Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}})) to finding a basis $\mathscr{B}$ with
respect to which the matrix of $T$ equals $A$. Thus
$\mathscr{B} = \{ v_{1},v_{2},v_{3},v_{4} \}$ such that
$$T(v_{1}) = 2v_{1}, \qquad T(v_{2}) = v_{1} + 2v_{2}, \qquad T(v_{3})
    = 2v_{3}, \qquad T(v_{4}) = 2v_{4}.$$ So we need to choose
$v_{1}$, $v_{3}$ and $v_{4}$ to lie in the eigenspace $E_{2}$ (which we
determined earlier).

On the face of it, the choice of $v_{2}$ appears to be less
straightforward: we require $(T-2I)(v_{2}) = v_{1}$, some non-zero
vector in $E_{2}$ and this indicates we also probably do not have total
freedom in the choice of $v_{1}$. In
[Example 10.3.2]({{< ref "10-jnf#ex:JNF-exD" >}}), we calculated
$$E_{2} = \left\{ \begin{pmatrix} x \\ y \\ z \\ x+z \end{pmatrix} \;\middle|\; x,y,z \in \mathbb{R} \right\}.$$
Let us solve $$(T-2I)(v) = \begin{pmatrix}
      1  & 0 & 1  & -1 \\
      1  & 0 & 1  & -1 \\
      -1 & 0 & -1 & 1  \\
      0  & 0 & 0  & 0
    \end{pmatrix} \begin{pmatrix} \alpha \\ \beta \\ \gamma \\ \delta \end{pmatrix} =
    \begin{pmatrix} x \\ y \\ z \\ x+z \end{pmatrix}.$$ We need to
establish for which values of $x$, $y$ and $z$ this has a non-zero
solution (and in the process we determine possibilities for both
$v_{1}$ and $v_{2}$). The above matrix equation implies
$$\alpha + \gamma - \delta = x = y = -z$$ and $$x+z = 0.$$ Any value
of $x$ will determine a possible solution, so let us choose $x = 1$.
Then $y = 1$ and $z = -1$. Hence we shall take
$$v_{1} = \begin{pmatrix} 1 \\ 1 \\ -1 \\ 0 \end{pmatrix}$$ and then the
equation $(T-2I)(v_{2}) = v_{1}$ has non-zero solutions, namely
$$v_{2} = \begin{pmatrix} \alpha \\ \beta \\ \gamma \\ \delta \end{pmatrix} \qquad \text{where}
    \quad \alpha + \gamma - \delta = 1.$$ There are many possible
solutions, we shall take $\alpha = 1$,  $\beta = \gamma = \delta = 0$
and hence $$v_{2} = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}$$
will be good enough.

To find $v_{3}$ and $v_{4}$, we need two vectors from $E_{2}$ which
together with $v_{1}$ form a basis for $E_{2}$. We shall choose
$$v_{3} = \begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix} \qquad \text{and} \qquad v_{4} =
    \begin{pmatrix} 0 \\ 0 \\ 1 \\ 1 \end{pmatrix}.$$ Indeed, note that
an arbitrary vector in $E_{2}$ can be expressed as $$\begin{aligned}
    \begin{pmatrix} x \\ y \\ z \\ x+z \end{pmatrix} & = x \begin{pmatrix} 1 \\ 1 \\ -1 \\ 0 \end{pmatrix} + (y-x)
    \begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix} + (x+z) \begin{pmatrix} 0 \\ 0 \\ 1 \\ 1 \end{pmatrix}               \\
                           & = x v_{1} + (y-x) v_{3} + (x+z) v_{4},
  \end{aligned}$$ so $E_{2} = \operatorname{Span}(v_{1},v_{3},v_{4})$.

We now have our required basis
$$\mathscr{B} = \left\{ \begin{pmatrix} 1 \\ 1 \\ -1 \\ 0 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix},
    \begin{pmatrix} 0 \\ 1 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 0 \\ 1 \\ 1 \end{pmatrix} \right\}$$
and the required change of basis matrix is $$P = \begin{pmatrix}
      1  & 1 & 0 & 0 \\
      1  & 0 & 1 & 0 \\
      -1 & 0 & 0 & 1 \\
      0  & 0 & 0 & 1
    \end{pmatrix}.$$

\[[Exercise:]{.sans-serif} Calculate $P^{-1}CP$ and verify it has the
correct form.\]
:::

::: {.exampjupyter}
Let $T : \mathbb{R}^{4} \longrightarrow\mathbb{R}^{4}$ be the linear
transformation given by the matrix $$D = \begin{pmatrix}
      -3 & 2  & \textstyle\frac{1}{2} & -2 \\
      0  & 0  & 0     & 0  \\
      0  & -3 & -3    & -3 \\
      0  & 0  & 0     & 0
    \end{pmatrix}.$$ Determine the Jordan normal form $J$ of $T$ and
find an invertible matrix $P$ such that $P^{-1}DP = J$.
:::

::: {.solution}
$$\begin{aligned}
    c_{T}(x) & = \det \begin{pmatrix}
      x+3 & -2 & -\textstyle\frac{1}{2} & 2 \\
      0   & x  & 0      & 0 \\
      0   & 3  & x+3    & 3 \\
      0   & 0  & 0      & x
    \end{pmatrix}        \\
             & = (x+3) \det \begin{pmatrix}
      x & 0   & 0 \\
      3 & x+3 & 3 \\
      0 & 0   & x
    \end{pmatrix}  \\
             & = x(x+3) \det \begin{pmatrix}
      x & 0   \\
      3 & x+3
    \end{pmatrix} \\
             & = x^{2}(x+3)^{2}.
  \end{aligned}$$ So the eigenvalues of $T$ are $0$ and $-3$. Then
$m_{T}(x) =
    x^{i}(x+3)^{j}$ where $1 \leqslant i,j \leqslant 2$. Since
$$D + 3I = \begin{pmatrix}
      0 & 2  & \textstyle\frac{1}{2} & -2 \\
      0 & 3  & 0     & 0  \\
      0 & -3 & 0     & -3 \\
      0 & 0  & 0     & 3
    \end{pmatrix},$$ we calculate $$\begin{aligned}
    D(D+3I)     & = \begin{pmatrix}
      0 & -\frac{3}{2} & -\frac{3}{2} & -\frac{3}{2} \\
      0 & 0            & 0            & 0            \\
      0 & 0            & 0            & 0            \\
      0 & 0            & 0            & 0
    \end{pmatrix} \neq 0 \\
    \quad\text{and}\quad
    D(D+3I)^{2} & = \begin{pmatrix}
      0 & -\frac{3}{2} & -\frac{3}{2} & -\frac{3}{2} \\
      0 & 0            & 0            & 0            \\
      0 & 0            & 0            & 0            \\
      0 & 0            & 0            & 0
    \end{pmatrix}
    \begin{pmatrix}
      0 & 2  & \textstyle\frac{1}{2} & -2 \\
      0 & 3  & 0     & 0  \\
      0 & -3 & 0     & -3 \\
      0 & 0  & 0     & 3
    \end{pmatrix}                        \\
                & = \begin{pmatrix}
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0
    \end{pmatrix}.
  \end{aligned}$$ Hence $m_{T}(x) = x(x+3)^{2}$. Therefore the Jordan
normal form of $T$ is $$J = \begin{pmatrix}
      J_{1}(0) & 0        & 0         \\
      0        & J_{1}(0) & 0         \\
      0        & 0        & J_{2}(-3)
    \end{pmatrix} =
    \begin{pmatrix}
      0 & 0 & 0  & 0  \\
      0 & 0 & 0  & 0  \\
      0 & 0 & -3 & 1  \\
      0 & 0 & 0  & -3
    \end{pmatrix}.$$

We now seek a basis $\mathscr{B} = \{ v_{1},v_{2},v_{3},v_{4} \}$ with
respect to which the matrix of $T$ is $J$. Thus, we require
$v_{1},v_{2} \in E_{0}$,  $v_{3} \in E_{-3}$ and
$$T(v_{4}) = v_{3} - 3v_{4}.$$ We first solve $T(v) = \vec{0}$:
$$\begin{pmatrix}
      -3 & 2  & \textstyle\frac{1}{2} & -2 \\
      0  & 0  & 0     & 0  \\
      0  & -3 & -3    & -3 \\
      0  & 0  & 0     & 0
    \end{pmatrix}
    \begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix},$$
so $$\begin{aligned}
    -3x + 2y + \textstyle\frac{1}{2} z - 2t & = 0  \\
    -3y -3z -3t             & = 0.
  \end{aligned}$$ Hence given arbitrary $z,t \in \mathbb{R}$, we have
$y = -z - t$ and $$\begin{aligned}
    x & = \textstyle\frac{1}{3} ( 2y + \textstyle\frac{1}{2} z - 2t)    \\[2pt]
      & = \textstyle\frac{1}{3} ( - \frac{3}{2}z - 4t ) \\
      & = -\textstyle\frac{1}{2} z - \frac{4}{3} t.
  \end{aligned}$$ So
$$E_{0} = \left\{ \begin{pmatrix} -\textstyle\frac{1}{2} z - \frac{4}{3}t \\
      -z-t \\ z \\ t\end{pmatrix}
    \;\middle|\; z,t \in \mathbb{R} \right\} = \operatorname{Span} \left(
    \begin{pmatrix} -\textstyle\frac{1}{2} \\ -1 \\ 1 \\ 0 \end{pmatrix},
  \begin{pmatrix} -\frac{4}{3} \\ -1 \\ 0 \\ 1 \end{pmatrix} \right).$$
Take
$$v_{1} = \begin{pmatrix} -\textstyle\frac{1}{2} \\ -1 \\ 1 \\ 0 \end{pmatrix} \qquad \text{and} \qquad v_{2} =
    \begin{pmatrix} -\frac{4}{3} \\ -1 \\ 0 \\ 1 \end{pmatrix}.$$

Now solve $(T+3I)(v) = \vec{0}$: $$\begin{pmatrix}
      0 & 2  & \textstyle\frac{1}{2} & -2 \\
      0 & 3  & 0     & 0  \\
      0 & -3 & 0     & -3 \\
      0 & 0  & 0     & 3
    \end{pmatrix} \begin{pmatrix} z \\ y \\ z \\ t \end{pmatrix}
    = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix},$$ so
$$\begin{array}{r@{}r@{}r@{}l}
      2y  & {} + \textstyle\frac{1}{2} z & {} - 2t & {} = 0  \\
      3y  &              &         & {} = 0  \\
      -3y &              & {} -3t  & {} = 0  \\
          &              & 3t      & {} = 0.
    \end{array}$$ Hence $y = t = 0$ and we deduce $z = 0$, while $x$ may
be arbitrary. Thus
$$E_{-3} = \left\{ \begin{pmatrix} x \\ 0 \\ 0 \\ 0 \end{pmatrix} \;\middle|\; x \in \mathbb{R} \right\} =
    \operatorname{Span} \left( \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} \right).$$
Take $$v_{3} = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}.$$

We finally solve $T(v_{4}) = v_{3} - 3v_{4}$; that is,
$(T+3I)(v_{4}) = v_{3}$: $$\begin{pmatrix}
      0 & 2  & \textstyle\frac{1}{2} & -2 \\
      0 & 3  & 0     & 0  \\
      0 & -3 & 0     & -3 \\
      0 & 0  & 0     & 3
    \end{pmatrix} \begin{pmatrix} x \\ y \\ z \\ t \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}.$$
Hence $$\begin{array}{r@{}r@{}r@{}l}
      2y  & {} + \textstyle\frac{1}{2} z & {} - 2t & {} = 1  \\
      3y  &              &         & {} = 0  \\
      -3y &              & {} - 3t & {} = 0  \\
          &              & {} 3t   & {} = 0,
    \end{array}$$ so $y = t = 0$ and then $\textstyle\frac{1}{2} z = 1$,
which forces $z = 2$, while $x$ may be arbitrary. Thus
$$v_{4} = \begin{pmatrix} 0 \\ 0 \\ 2 \\ 0 \end{pmatrix}$$ is one
solution. Thus
$$\mathscr{B} = \left\{ \begin{pmatrix} -\textstyle\frac{1}{2} \\ -1 \\ 1 \\ 0 \end{pmatrix},
      \begin{pmatrix} -\frac{4}{3} \\ -1 \\ 0 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 0 \\ 0 \end{pmatrix},
    \begin{pmatrix} 0 \\ 0 \\ 2 \\ 0 \end{pmatrix} \right\}$$ and our
change of basis matrix is $$P = \begin{pmatrix}
      -\textstyle\frac{1}{2} & -\frac{4}{3} & 1 & 0 \\
      -1     & -1           & 0 & 0 \\
      1      & 0            & 0 & 2 \\
      0      & 1            & 0 & 0
    \end{pmatrix}.$$
:::

::: {.omittedexampjupyter}
Let $V = \mathbb{R}^{5}$ and let $T : V \longrightarrow V$ be the linear
transformation given by the matrix $$E = \begin{pmatrix}
      1  & 0 & -1 & 0 & -8  \\
      0  & 1 & 4  & 0 & 29  \\
      -1 & 0 & 1  & 1 & 5   \\
      0  & 0 & -1 & 1 & -11 \\
      0  & 0 & 0  & 0 & -2
    \end{pmatrix}.$$ Determine a Jordan normal form $J$ of $T$ and find
an invertible matrix $P$ such that $P^{-1}EP = J$.
:::

::: {.solution}
We first determine the characteristic polynomial of $T$:
$$\begin{aligned}
    c_{T}(x) & = \det \begin{pmatrix}
      x-1 & 0   & 1   & 0   & 8   \\
      0   & x-1 & -4  & 0   & -29 \\
      1   & 0   & x-1 & -1  & -5  \\
      0   & 0   & 1   & x-1 & 11  \\
      0   & 0   & 0   & 0   & x+2
    \end{pmatrix}                                                                    \\
             & = (x+2) \det \begin{pmatrix}
      x-1 & 0   & 1   & 0   \\
      0   & x-1 & -4  & 0   \\
      1   & 0   & x-1 & -1  \\
      0   & 0   & 1   & x-1
    \end{pmatrix}                                                              \\
             & = (x-1)(x+2) \det \begin{pmatrix}
      x-1 & 1   & 0   \\
      1   & x-1 & -1  \\
      0   & 1   & x-1
    \end{pmatrix}                                                         \\
             & = (x-1)(x+2) \left( (x-1) \det \begin{pmatrix}
      x-1 & -1  \\
      1   & x-1
    \end{pmatrix} - \det \begin{pmatrix}
      1 & -1  \\
      0 & x-1
    \end{pmatrix} \right) \\
             & = (x-1)(x+2) \biggl( (x-1) \bigl( (x-1)^{2} + 1 \bigr) - (x-1)
    \biggr)                                                                                                          \\
             & = (x-1)^{2}(x+2) \bigl( (x-1)^{2} + 1 - 1 \bigr)                                                      \\
             & = (x-1)^{4} (x+2).
  \end{aligned}$$ We now know that the Jordan normal form for $T$
contains a single Jordan block $J_{1}(-2)$ corresponding to
eigenvalue $-2$ and some number of Jordan blocks $J_{n}(1)$
corresponding to eigenvalue $1$. The sum of the sizes of these latter
blocks equals $4$.

Let us now determine the minimum polynomial of $T$. We know
$m_{T}(x) = (x-1)^{i} (x+2)$ where $1 \leqslant i \leqslant 4$ by
[Proposition 9.4.2]({{< ref "09-diagonal#prop-m-divide" >}})(2) and (3). Now $$E-I = \begin{pmatrix}
      0  & 0 & -1 & 0 & -8  \\
      0  & 0 & 4  & 0 & 29  \\
      -1 & 0 & 0  & 1 & 5   \\
      0  & 0 & -1 & 0 & -11 \\
      0  & 0 & 0  & 0 & -3
    \end{pmatrix}
    \;\; \text{and} \;\;
    E+2I = \begin{pmatrix}
      3  & 0 & -1 & 0 & -8  \\
      0  & 3 & 4  & 0 & 29  \\
      -1 & 0 & 3  & 1 & 5   \\
      0  & 0 & -1 & 3 & -11 \\
      0  & 0 & 0  & 0 & 0
    \end{pmatrix},$$ so $$\begin{aligned}
    (E-I)(E+2I)     & = \begin{pmatrix}
      1  & 0 & -3 & -1 & -5 \\
      -4 & 0 & 12 & 4  & 20 \\
      -3 & 0 & 0  & 3  & -3 \\
      1  & 0 & -3 & -1 & -5 \\
      0  & 0 & 0  & 0  & 0
    \end{pmatrix} \neq 0, \\
    (E-I)^{2}(E+2I) & = \begin{pmatrix}
      0  & 0 & -1 & 0 & -8  \\
      0  & 0 & 4  & 0 & 29  \\
      -1 & 0 & 0  & 1 & 5   \\
      0  & 0 & -1 & 0 & -11 \\
      0  & 0 & 0  & 0 & -3
    \end{pmatrix}
    \begin{pmatrix}
      1  & 0 & -3 & -1 & -5 \\
      -4 & 0 & 12 & 4  & 20 \\
      -3 & 0 & 0  & 3  & -3 \\
      1  & 0 & -3 & -1 & -5 \\
      0  & 0 & 0  & 0  & 0
    \end{pmatrix}                             \\
                    & = \begin{pmatrix}
      3   & 0 & 0 & -3 & 3   \\
      -12 & 0 & 0 & 12 & -12 \\
      0   & 0 & 0 & 0  & 0   \\
      3   & 0 & 0 & -3 & 3   \\
      0   & 0 & 0 & 0  & 0
    \end{pmatrix} \neq 0  \\
    \quad\text{and}\quad
    (E-I)^{3}(E+2I) & = \begin{pmatrix}
      0  & 0 & -1 & 0 & -8  \\
      0  & 0 & 4  & 0 & 29  \\
      -1 & 0 & 0  & 1 & 5   \\
      0  & 0 & -1 & 0 & -11 \\
      0  & 0 & 0  & 0 & -3
    \end{pmatrix}
    \begin{pmatrix}
      3   & 0 & 0 & -3 & 3   \\
      -12 & 0 & 0 & 12 & -12 \\
      0   & 0 & 0 & 0  & 0   \\
      3   & 0 & 0 & -3 & 3   \\
      0   & 0 & 0 & 0  & 0
    \end{pmatrix}                             \\
                    & = \begin{pmatrix}
      0 & 0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 & 0 \\
      0 & 0 & 0 & 0 & 0
    \end{pmatrix}.
  \end{aligned}$$ Hence $m_{T}(x) = (x-1)^{3}(x+2)$. As a consequence,
the Jordan normal form of $T$ must contain at least one Jordan
block $J_{3}(1)$ of size $3$. Since the sizes of the Jordan blocks
associated to the eigenvalue $1$ has sum equal to $4$ (from earlier),
there remains a single Jordan block $J_{1}(1)$ of size $1$.

Our conclusion is a Jordan normal form of $T$ is $$J =
    \begin{pmatrix}
      J_{3}(1) & 0        & 0         \\
      0        & J_{1}(1) & 0         \\
      0        & 0        & J_{1}(-2)
    \end{pmatrix} =
    \begin{pmatrix}
      \mathbf{1} & \mathbf{1} & \mathbf{0} & 0          & 0           \\
      \mathbf{0} & \mathbf{1} & \mathbf{1} & 0          & 0           \\
      \mathbf{0} & \mathbf{0} & \mathbf{1} & 0          & 0           \\
      0          & 0          & 0          & \mathbf{1} & 0           \\
      0          & 0          & 0          & 0          & \mathbf{-2}
    \end{pmatrix}.$$

We now want to find a basis $\mathscr{B} = \{ \vec{v}_{1}, \vec{v}_{2},
    \vec{v}_{3}, \vec{v}_{4}, \vec{v}_{5} \}$ for $\mathbb{R}^{5}$ such
that $\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(T) = J$. In
particular, $\vec{v}_{1}$ and $\vec{v}_{4}$ are required to be
eigenvectors with eigenvalue $1$. Let us first find the
eigenspace $E_{1}$ by solving $(T-I)(\vec{v}) = \vec{0}$; that is,
$$\begin{pmatrix}
      0  & 0 & -1 & 0 & 8   \\
      0  & 0 & 4  & 0 & 29  \\
      -1 & 0 & 0  & 1 & 5   \\
      0  & 0 & -1 & 0 & -11 \\
      0  & 0 & 0  & 0 & -3
    \end{pmatrix}
    \begin{pmatrix}
      x \\ y \\ z \\ t \\ u
    \end{pmatrix} =
    \begin{pmatrix}
      0 \\ 0 \\ 0 \\ 0 \\ 0
    \end{pmatrix}.$$ The fifth row yields $-3u = 0$; that is, $u = 0$.
It follows from the first row that $-z + 8u = 0$ and hence $z = 0$. The
only row yielding further information is the third which says
$-x + t + 5u =
    0$ and so $x = t$. Hence $$E_{1} = \left\{ \begin{pmatrix}
      x \\ y \\ 0 \\ x \\ 0
    \end{pmatrix} \;\middle|\; x,y \in \mathbb{R} \right\}.$$ From this
we can read off a basis for the eigenspace $E_{1}$, but this does not
tell us which vector to take as $\vec{v}_{1}$. We need $\vec{v}_{1}$ to
be a suitable choice of eigenvector so that
$T(\vec{v}_{2}) = \vec{v}_{1} + \vec{v}_{2}$, that is,
$(T-I)(\vec{v}_{2}) = \vec{v}_{1}$, is possible. We solve for
$(T-I)(\vec{v}) = \vec{w}$ where $\vec{w}$ is a typical vector
in $E_{1}$. So consider $$\begin{pmatrix}
      0  & 0 & -1 & 0 & 8   \\
      0  & 0 & 4  & 0 & 29  \\
      -1 & 0 & 0  & 1 & 5   \\
      0  & 0 & -1 & 0 & -11 \\
      0  & 0 & 0  & 0 & -3
    \end{pmatrix}
    \begin{pmatrix}
      x \\ y \\ z \\ t \\ u
    \end{pmatrix} =
    \begin{pmatrix}
      \alpha \\ \beta \\ 0 \\ \alpha \\ 0
    \end{pmatrix}$$ for some non-zero scalars $\alpha$ and $\beta$. Thus
$-3u = 0$ and so $u = 0$. We then obtain three equations
$$-z = \alpha, \qquad 4z = \beta, \qquad -x + t = 0.$$ Thus to have a
solution we must have $-4\alpha = \beta$. This tells us what to take
as $\vec{v}_{1}$: we want a vector of the form $$\begin{pmatrix}
      \alpha \\ -4\alpha \\ 0 \\ \alpha \\ 0
    \end{pmatrix} \qquad
    \text{where $\alpha \in \mathbb{R}$, but $\alpha \neq 0$}.$$ So take
$\alpha = 1$ and $$\vec{v}_{1} = \begin{pmatrix}
      1 \\ -4 \\ 0 \\ 1 \\ 0
    \end{pmatrix}.$$ Then the equations (from above)
$$-z = \alpha, \qquad 4z = \beta, \qquad -x + t = 0$$ tell us that
vector $\vec{v}_{2}$ is given by $z = -1$,  $x = t$ and $y$ and $x$ can
be arbitrary. We shall take $x = y = 0$ (mainly for convenience):
$$\vec{v}_{2} = \begin{pmatrix}
      0 \\ 0 \\ -1 \\ 0 \\ 0
    \end{pmatrix}.$$ The vector $\vec{v}_{3}$ is required to satisfy
$T(\vec{v}_{3}) =
    \vec{v}_{2} + \vec{v}_{3}$, so to find $\vec{v}_{3}$ we solve
$(T-I)(\vec{v}) = \vec{v}_{2}$: $$\begin{pmatrix}
      0  & 0 & -1 & 0 & 8   \\
      0  & 0 & 4  & 0 & 29  \\
      -1 & 0 & 0  & 1 & 5   \\
      0  & 0 & -1 & 0 & -11 \\
      0  & 0 & 0  & 0 & -3
    \end{pmatrix}
    \begin{pmatrix}
      x \\ y \\ z \\ t \\ u
    \end{pmatrix} =
    \begin{pmatrix}
      0 \\ 0 \\ -1 \\ 0 \\ 0
    \end{pmatrix}.$$ Thus $u = 0$,  $z = 0$ and $-x + t = -1$. Any other
choices are arbitrary, so we shall take $x = 1$,  $y = 0$ and then
$t = 0$. So we take $$\vec{v}_{3} = \begin{pmatrix}
      1 \\ 0 \\ 0 \\ 0 \\ 0
    \end{pmatrix}.$$ For $\vec{v}_{3}$, we note that
$\vec{v}_{1}$, $\vec{v}_{4}$ should be linearly independent vectors (as
they form part of a basis) in the eigenspace
$$E_{1} = \left\{ \begin{pmatrix}
      x \\ y \\ 0 \\ x \\ 0
    \end{pmatrix} \;\middle|\; x,y \in \mathbb{R} \right\}.$$ Given our
choice of $\vec{v}_{1}$, there remains much choice for $\vec{v}_{4}$
(essentially it must not be a scalar multiple of $\vec{v}_{1}$). We
shall take $$\vec{v}_{4} = \begin{pmatrix}
      1 \\ 0 \\ 0 \\ 1 \\ 0
    \end{pmatrix}$$ (i.e., take $x = 1$,  $y = 0$).

Finally, we require $\vec{v}_{5}$ to be an eigenvector for $T$ with
eigenvalue $-2$, so we solve $T(\vec{v}) = -2\vec{v}$ or, equivalently,
$(T+2I)(\vec{v}) = \vec{0}$: $$\begin{pmatrix}
      3  & 0 & -1 & 0 & -8  \\
      0  & 3 & 4  & 0 & 29  \\
      -1 & 0 & 3  & 1 & 5   \\
      0  & 0 & -1 & 3 & -11 \\
      0  & 0 & 0  & 0 & 0
    \end{pmatrix} \begin{pmatrix}
      x \\ y \\ z \\ t \\ u
    \end{pmatrix} = \begin{pmatrix}
      0 \\ 0 \\ 0 \\ 0 \\ 0
    \end{pmatrix}.$$ We apply row operations to solve this system of
equations: $$\begin{aligned}
    \left( \begin{matrix}
        3  & 0 & -1 & 0 & -8  \\
        0  & 3 & 4  & 0 & 29  \\
        -1 & 0 & 3  & 1 & 5   \\
        0  & 0 & -1 & 3 & -11 \\
        0  & 0 & 0  & 0 & 0
      \end{matrix} \;\middle|\;
      \begin{matrix} 0 \\ 0 \\ 0 \\ 0 \\ 0 \end{matrix} \right)
    \hspace{100pt}                                   \\
     & \longrightarrow
    \left( \begin{matrix}
        0  & 0 & 8  & 3 & 7   \\
        0  & 3 & 4  & 0 & 29  \\
        -1 & 0 & 3  & 1 & 5   \\
        0  & 0 & -1 & 3 & -11 \\
        0  & 0 & 0  & 0 & 0
      \end{matrix} \;\middle|\;
    \begin{matrix} 0 \\ 0 \\ 0 \\ 0 \\ 0 \end{matrix} \right)
     &                 & \begin{array}{l}
      r_{1} \mapsto r_{1}+3r_{3}
    \end{array} \\
     & \longrightarrow
    \left( \begin{matrix}
        0  & 0 & 0  & 27 & -81 \\
        0  & 3 & 0  & 12 & -15 \\
        -1 & 0 & 0  & 10 & -28 \\
        0  & 0 & -1 & 3  & -11 \\
        0  & 0 & 0  & 0  & 0
      \end{matrix} \;\middle|\;
    \begin{matrix} 0 \\ 0 \\ 0 \\ 0 \\ 0 \end{matrix} \right)
     &                 & \begin{array}{l}
      r_{1} \mapsto r_{1}+8r_{4} \\
      r_{2} \mapsto r_{2}+4r_{4} \\
      r_{3} \mapsto r_{3}+3r_{4}
    \end{array} \\
     & \longrightarrow
    \left( \begin{matrix}
        0  & 0 & 0  & 1  & -3  \\
        0  & 3 & 0  & 4  & -5  \\
        -1 & 0 & 0  & 10 & -28 \\
        0  & 0 & -1 & 3  & -11 \\
        0  & 0 & 0  & 0  & 0
      \end{matrix} \;\middle|\;
    \begin{matrix} 0 \\ 0 \\ 0 \\ 0 \\ 0 \end{matrix} \right)
     &                 & \begin{array}{l}
      r_{1} \mapsto \frac{1}{27}r_{1} \\[3pt]
      r_{2} \mapsto \frac{1}{3}r_{2}
    \end{array}
  \end{aligned}$$ Hence $$\begin{aligned}
    t\;\; - 3u                      & = 0  \\
    y \;\;\;\;\;\;+\:\, 4t\;\; - 5u & = 0  \\
    -x\qquad\;\;\; + 10t - 28u      & = 0  \\
    -z\; +\:\: 3t - 11u             & = 0.
  \end{aligned}$$ Take $u = 1$ (it can be non-zero, but otherwise
arbitrary, when producing the eigenvector $\vec{v}_{5}$). Then
$$\begin{aligned}
    t & = 3u = 3         \\
    y & = 5u - 4t = -7   \\
    x & = 10t - 28u = 2  \\
    z & = 3t - 11u = -2.
  \end{aligned}$$ So we take $$\vec{v}_{5} = \begin{pmatrix}
      2 \\ -7 \\ -2 \\ 3 \\ 1
    \end{pmatrix}.$$

With the above choices, the matrix of $T$ with respect to the basis
$\mathscr{B} = \{ \vec{v}_{1}, \vec{v}_{2}, \vec{v}_{3}, \vec{v}_{4},
    \vec{v}_{5} \}$ is then our Jordan normal form $J$. The change of
basis matrix $P$ such that $P^{-1}EP = J$ is found by writing
each $\vec{v}_{j}$ in terms of the standard basis and placing the
coefficients in the $j$th column of $P$. Thus $$P = \begin{pmatrix}
      1  & 0  & 1 & 1 & 2  \\
      -4 & 0  & 0 & 0 & -7 \\
      0  & -1 & 0 & 0 & -2 \\
      1  & 0  & 0 & 1 & 3  \\
      0  & 0  & 0 & 0 & 1
    \end{pmatrix}.$$
:::

In the previous examples we used
[Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}}) to
determine the Jordan normal form, and this technique is enough to find
the Jordan normal form for the linear transformations that you will
encounter in this course. [Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}}) is sufficient for small matrices, but will not
solve the problem for all possibilities.

For example, they do not distinguish between the $7 \times 7$ matrices
$$\begin{pmatrix}
    J_{3}(\lambda) & 0              & 0              \\
    0              & J_{2}(\lambda) & 0              \\
    0              & 0              & J_{2}(\lambda)
  \end{pmatrix}
  \qquad \text{and} \qquad
  \begin{pmatrix}
    J_{3}(\lambda) & 0              & 0              \\
    0              & J_{3}(\lambda) & 0              \\
    0              & 0              & J_{1}(\lambda)
  \end{pmatrix},$$ which both have characteristic
polynomial $(x-\lambda)^{7}$, minimum polynomial $(x-\lambda)^{3}$ and
geometric multiplicity $g_{\lambda} =
  \dim E_{\lambda} = 3$. To deal with such possible Jordan normal forms
one needs to generalise [Proposition 10.2.1]({{< ref "10-jnf#prop-JNF" >}})(3) to consider the dimension of generalisations of
eigenspaces:
$$\dim \ker (T-\lambda I)^{2}, \quad \dim \ker (T-\lambda I)^{3}, \quad
  \dots.$$ We leave the details to the interested and enthused student.

## Problems {#problems-10-jnf}

Problems marked with a 💻 (if any) can probably be solved more
easily using a Jupyter notebook:
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=806990>

1.  []{#problem-10-01 label="problem-10-01"}

    ::: {.question}
    Find all possible Jordan normal forms (discounting rearrangements of
    the Jordan blocks) for those linear transformations whose
    characteristic polynomial $c_{T}(x)$ and minimum
    polynomial $m_{T}(x)$ are as follows:

    ::: {.center}
      ------- ---------------------- -- -----------------------
                    $c_{T}(x)$                $m_{T}(x)$
        \(a\)  $(x-2)^{4}(x-3)^{2}$      $(x-2)^{2}(x-3)^{2}$;
        \(b\)      $(x-7)^{5}$               $(x-7)^{2}$;
        \(c\)      $(x-2)^{7}$               $(x-2)^{3}$;
        \(d\)  $(x-3)^{4}(x-5)^{4}$      $(x-3)^{2}(x-5)^{2}$.
      ------- ---------------------- -- -----------------------
    :::

    \[Hint: How can the dimension of the vector space be deduced from
    knowledge of the characteristic polynomial?\]
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    1.   If $c_{T}(x) = (x-2)^{4} (x-3)^{2}$ and $m_{T}(x) = (x-2)^{2}
        (x-3)^{2}$, then the largest sizes of the Jordan blocks for the
        eigenvalues $2$ and $3$ are both $2$. The sum of the sizes of
        the Jordan blocks are $4$ and $2$, respectively. Hence there are
        two possibilities $$\begin{pmatrix}
        J_{2}(2) & 0 & 0 \\
        0 & J_{2}(2) & 0 \\
        0 & 0 & J_{2}(3)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{2} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{2} & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{2} & \mathbf{1} & 0 & 0 \\
        0 & 0 & \mathbf{0} & \mathbf{2} & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{3} & \mathbf{1} \\
        0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{3}
        \end{pmatrix}$$ and $$\begin{pmatrix}
        J_{2}(2) & 0 & 0 & 0 \\
        0 & J_{1}(2) & 0 & 0 \\
        0 & 0 & J_{1}(2) & 0 \\
        0 & 0 & 0 & J_{2}(3)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{2} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{2} & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{2} & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{2} & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{3} & \mathbf{1} \\
        0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{3}
        \end{pmatrix}$$ (where the Jordan blocks are highlighted for
        emphasis).

    2.   The Jordan blocks have total size $5$ and largest size $2$.
        Hence we have the following two possibilities:
        $$\begin{gathered}
        \begin{pmatrix}
        J_{2}(7) & 0 & 0 \\
        0 & J_{2}(7) & 0 \\
        0 & 0 & J_{1}(7)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{7} & \mathbf{1} & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{7} & 0 & 0 & 0 \\
        0 & 0 & \mathbf{7} & \mathbf{1} & 0 \\
        0 & 0 & \mathbf{0} & \mathbf{7} & 0 \\
        0 & 0 & 0 & 0 & \mathbf{7}
        \end{pmatrix} \\
        \begin{pmatrix}
        J_{2}(7) & 0 & 0 & 0 \\
        0 & J_{1}(7) & 0 & 0 \\
        0 & 0 & J_{1}(7) & 0 \\
        0 & 0 & 0 & J_{1}(7) 
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{7} & \mathbf{1} & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{7} & 0 & 0 & 0 \\
        0 & 0 & \mathbf{7} & 0 & 0 \\
        0 & 0 & 0 & \mathbf{7} & 0 \\
        0 & 0 & 0 & 0 & \mathbf{7}
        \end{pmatrix}\end{gathered}$$

    3.   The Jordan blocks have total size $7$ and largest size $3$.
        Hence we have the following four possibilities:
        $$\begin{gathered}
        \begin{pmatrix}
        J_{3}(2) & 0 & 0 \\
        0 & J_{3}(2) & 0 \\
        0 & 0 & J_{1}(7)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{2} & \mathbf{1} & \mathbf{0} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{2} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{0} & \mathbf{2} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{2} & \mathbf{1} & \mathbf{0} & 0 \\
        0 & 0 & 0 & \mathbf{0} & \mathbf{2} & \mathbf{1} & 0 \\
        0 & 0 & 0 & \mathbf{0} & \mathbf{0} & \mathbf{2} & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{2}
        \end{pmatrix} \\
        %%%%%%%%%%
        \begin{pmatrix}
        J_{3}(2) & 0 & 0 \\
        0 & J_{2}(2) & 0 \\
        0 & 0 & J_{2}(2)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{2} & \mathbf{1} & \mathbf{0} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{2} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{0} & \mathbf{2} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{2} & \mathbf{1} & 0 & 0 \\
        0 & 0 & 0 & \mathbf{0} & \mathbf{2} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & \mathbf{2} & \mathbf{1} \\
        0 & 0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{2}
        \end{pmatrix} \\
        %%%%%%%%%%
        \begin{pmatrix}
        J_{3}(2) & 0 & 0 & 0 \\
        0 & J_{2}(2) & 0 & 0 \\
        0 & 0 & J_{1}(2) & 0 \\
        0 & 0 & 0 & J_{1}(2)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{2} & \mathbf{1} & \mathbf{0} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{2} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{0} & \mathbf{2} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{2} & \mathbf{1} & 0 & 0 \\
        0 & 0 & 0 & \mathbf{0} & \mathbf{2} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & \mathbf{2} & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{2}
        \end{pmatrix} \\
        %%%%%%%%%%
        \begin{pmatrix}
        J_{3}(2) & 0 & 0 & 0 & 0 \\
        0 & J_{1}(2) & 0 & 0 & 0 \\
        0 & 0 & J_{1}(2) & 0 & 0 \\
        0 & 0 & 0 & J_{1}(2) & 0 \\
        0 & 0 & 0 & 0 & J_{1}(2)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{2} & \mathbf{1} & \mathbf{0} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{2} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{0} & \mathbf{2} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{2} & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{2} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & \mathbf{2} & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{2}
        \end{pmatrix}\end{gathered}$$

    4.   There are four possibilities: $$\begin{gathered}
        \begin{pmatrix}
        J_{2}(3) & 0 & 0 & 0 \\
        0 & J_{2}(3) & 0 & 0 \\
        0 & 0 & J_{2}(5) & 0 \\
        0 & 0 & 0 & J_{2}(5)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{3} & \mathbf{1} & 0 & 0 & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{3} & 0 & 0 & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{3} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{0} & \mathbf{3} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{5} & \mathbf{1} & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{5} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{5} & \mathbf{1} \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{5}
        \end{pmatrix} \\
        %%%%%%%%%%
        \begin{pmatrix}
        J_{2}(3) & 0 & 0 & 0 & 0 \\
        0 & J_{2}(3) & 0 & 0 & 0 \\
        0 & 0 & J_{2}(5) & 0 & 0 \\
        0 & 0 & 0 & J_{1}(5) & 0 \\
        0 & 0 & 0 & 0 & J_{1}(5)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{3} & \mathbf{1} & 0 & 0 & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{3} & 0 & 0 & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{3} & \mathbf{1} & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{0} & \mathbf{3} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{5} & \mathbf{1} & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{5} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{5} & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & 0 & \mathbf{5}
        \end{pmatrix} \\
        %%%%%%%%%%
        \begin{pmatrix}
        J_{2}(3) & 0 & 0 & 0 & 0 \\
        0 & J_{1}(3) & 0 & 0 & 0 \\
        0 & 0 & J_{1}(3) & 0 & 0 \\
        0 & 0 & 0 & J_{2}(5) & 0 \\
        0 & 0 & 0 & 0 & J_{2}(5)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{3} & \mathbf{1} & 0 & 0 & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{3} & 0 & 0 & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{3} & 0 & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{3} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{5} & \mathbf{1} & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{5} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{5} & \mathbf{1} \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{5}
        \end{pmatrix} \\
        %%%%%%%%%%
        \begin{pmatrix}
        J_{2}(3) & 0 & 0 & 0 & 0 & 0 \\
        0 & J_{1}(3) & 0 & 0 & 0 & 0 \\
        0 & 0 & J_{1}(3) & 0 & 0 & 0 \\
        0 & 0 & 0 & J_{2}(5) & 0 & 0 \\
        0 & 0 & 0 & 0 & J_{1}(5) & 0 \\
        0 & 0 & 0 & 0 & 0 & J_{1}(5)
        \end{pmatrix} =
        \begin{pmatrix}
        \mathbf{3} & \mathbf{1} & 0 & 0 & 0 & 0 & 0 & 0 \\
        \mathbf{0} & \mathbf{3} & 0 & 0 & 0 & 0 & 0 & 0 \\
        0 & 0 & \mathbf{3} & 0 & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & \mathbf{3} & 0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{5} & \mathbf{1} & 0 & 0 \\
        0 & 0 & 0 & 0 & \mathbf{0} & \mathbf{5} & 0 & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & \mathbf{5} & 0 \\
        0 & 0 & 0 & 0 & 0 & 0 & 0 & \mathbf{5}
        \end{pmatrix}\end{gathered}$$
    :::

2.  []{#problem-10-02 label="problem-10-02"}

    ::: {.question}
    Determine all possible Jordan normal forms for a linear
    transformation $T \colon V \longrightarrow V$ whose characteristic
    polynomial is $c_{T}(x) =
          (x-2)^{3}(x-5)^{2}$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    If $c_{T}(x) = (x-2)^{3} (x-5)^{2}$, then $m_{T}(x) = (x-2)^{i}
    (x-5)^{j}$ where $1 \leqslant i \leqslant 3$ and
    $1 \leqslant j \leqslant 2$. We consider each possibility in turn:

    ##### $m_{T}(x) = (x-2)(x-5)$:

    In this case, $T$ is diagonalisable, so the Jordan normal form is
    $$\begin{pmatrix}
    J_{1}(2) & 0 & 0 & 0 & 0 \\
    0 & J_{1}(2) & 0 & 0 & 0 \\
    0 & 0 & J_{1}(2) & 0 & 0 \\
    0 & 0 & 0 & J_{1}(5) & 0 \\
    0 & 0 & 0 & 0 & J_{1}(5)
    \end{pmatrix} =
    \begin{pmatrix}
    2 & 0 & 0 & 0 & 0 \\
    0 & 2 & 0 & 0 & 0 \\
    0 & 0 & 2 & 0 & 0 \\
    0 & 0 & 0 & 5 & 0 \\
    0 & 0 & 0 & 0 & 5
    \end{pmatrix}.$$

    ##### $m_{T}(x) = (x-2)^{2} (x-5)$:

    The Jordan normal form is $$\begin{pmatrix}
    J_{2}(2) & 0 & 0 & 0 \\
    0 & J_{1}(2) & 0 & 0 \\
    0 & 0 & J_{1}(5) & 0 \\
    0 & 0 & 0 & J_{1}(5)
    \end{pmatrix} =
    \begin{pmatrix}
    2 & 1 & 0 & 0 & 0 \\
    0 & 2 & 0 & 0 & 0 \\
    0 & 0 & 2 & 0 & 0 \\
    0 & 0 & 0 & 5 & 0 \\
    0 & 0 & 0 & 0 & 5
    \end{pmatrix}.$$

    ##### $m_{T}(x) = (x-2)^{3}(x-5)$:

    The Jordan normal form is $$\begin{pmatrix}
    J_{3}(2) & 0 & 0 \\
    0 & J_{1}(5) & 0 \\
    0 & 0 & J_{1}(5)
    \end{pmatrix} =
    \begin{pmatrix}
    2 & 1 & 0 & 0 & 0 \\
    0 & 2 & 1 & 0 & 0 \\
    0 & 0 & 2 & 0 & 0 \\
    0 & 0 & 0 & 5 & 0 \\
    0 & 0 & 0 & 0 & 5
    \end{pmatrix}.$$

    ##### $m_{T}(x) = (x-2)(x-5)^{2}$:

    The Jordan normal form is $$\begin{pmatrix}
    J_{1}(2) & 0 & 0 & 0 \\
    0 & J_{1}(2) & 0 & 0 \\
    0 & 0 & J_{1}(2) & 0 \\
    0 & 0 & 0 & J_{2}(5)
    \end{pmatrix} =
    \begin{pmatrix}
    2 & 0 & 0 & 0 & 0 \\
    0 & 2 & 0 & 0 & 0 \\
    0 & 0 & 2 & 0 & 0 \\
    0 & 0 & 0 & 5 & 1 \\
    0 & 0 & 0 & 0 & 5
    \end{pmatrix}.$$

    ##### $m_{T}(x) = (x-2)^{2}(x-5)^{2}$:

    The Jordan normal form is $$\begin{pmatrix}
    J_{2}(2) & 0 & 0 \\
    0 & J_{1}(2) & 0 \\
    0 & 0 & J_{2}(5)
    \end{pmatrix} =
    \begin{pmatrix}
    2 & 1 & 0 & 0 & 0 \\
    0 & 2 & 0 & 0 & 0 \\
    0 & 0 & 2 & 0 & 0 \\
    0 & 0 & 0 & 5 & 1 \\
    0 & 0 & 0 & 0 & 5
    \end{pmatrix}.$$

    ##### $m_{T}(x) = (x-2)^{3} (x-5)^{2}$:

    The Jordan normal form is $$\begin{pmatrix}
    J_{3}(2) & 0 \\
    0 & J_{2}(5)
    \end{pmatrix} =
    \begin{pmatrix}
    2 & 1 & 0 & 0 & 0 \\
    0 & 2 & 1 & 0 & 0 \\
    0 & 0 & 2 & 0 & 0 \\
    0 & 0 & 0 & 5 & 1 \\
    0 & 0 & 0 & 0 & 5
    \end{pmatrix}.$$
    :::

3.  []{#problem-10-03 label="problem-10-03"}

    ::: {.question}
    Determine all possible Jordan normal forms for a $5 \times 5$ matrix
    whose minimum polynomial is $(x-3)^{2}$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    The characteristic polynomial is $c_{T}(x) = (x-3)^{5}$. The
    possibilities are $$\begin{pmatrix}
    J_{2}(3) & 0 & 0 \\
    0 & J_{2}(3) & 0 \\
    0 & 0 & J_{1}(3)
    \end{pmatrix} =
    \begin{pmatrix}
    3 & 1 & 0 & 0 & 0 \\
    0 & 3 & 0 & 0 & 0 \\
    0 & 0 & 3 & 1 & 0 \\
    0 & 0 & 0 & 3 & 0 \\
    0 & 0 & 0 & 0 & 3
    \end{pmatrix}$$ and $$\begin{pmatrix}
    J_{2}(3) & 0 & 0 & 0 \\
    0 & J_{1}(3) & 0 & 0 \\
    0 & 0 & J_{1}(3) & 0 \\
    0 & 0 & 0 & J_{1}(3)
    \end{pmatrix} =
    \begin{pmatrix}
    3 & 1 & 0 & 0 & 0 \\
    0 & 3 & 0 & 0 & 0 \\
    0 & 0 & 3 & 0 & 0 \\
    0 & 0 & 0 & 3 & 0 \\
    0 & 0 & 0 & 0 & 3
    \end{pmatrix}.$$
    :::

4.  []{#problem-10-04 label="problem-10-04"}

    ::: {.question}
    For each of the following matrices $A$ of real numbers, determine a
    Jordan normal form of $A$: $$\begin{array}{rlrlrl}
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
      \end{pmatrix}.
    \end{array}$$ \[Hint: These matrices appeared on the Problem Sheets
    for Sections 8 and 9!\]
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    Recall we calculated the characteristic polynomials and minimum
    polynomials in the Problem Sheet for Sections 8 and 9. We use this
    information below.

    1.  $$A = \begin{pmatrix}
        3 & -4 & 0 \\
        0 & -1 & 0 \\
        0 & 6 & 2
        \end{pmatrix}.$$ On the Problem Sheet for Section 9 (Problem 2)
        we determined that $A$ was diagonalisable. This diagonal matrix
        will be its Jordan normal form: $$\begin{pmatrix}
        -1 & 0 & 0 \\
        0 & 2 & 0 \\
        0 & 0 & 3
        \end{pmatrix} =
        \begin{pmatrix}
        J_{1}(-1) & 0 & 0 \\
        0 & J_{1}(2) & 0 \\
        0 & 0 & J_{1}(3)
        \end{pmatrix}.$$

    2.  $$A = \begin{pmatrix}
        1 & 1 & -1 \\
        -2 & 4 & -2 \\
        0 & 1 & 0
        \end{pmatrix}.$$ On the Problem Sheet for Section 9 (Problems 2
        and 3) we determined that
        $$c_{A}(x) = (x-1)(x-2)^{2} \qquad \text{and} \qquad m_{A}(x) = (x-1)(x-2)^{2}.$$
        Hence the Jordan normal form of $A$ is $$\begin{pmatrix}
        J_{1}(1) & 0 \\
        0 & J_{2}(2)
        \end{pmatrix} =
        \begin{pmatrix}
        1 & 0 & 0 \\
        0 & 2 & 1 \\
        0 & 0 & 2
        \end{pmatrix}.$$

    3.  $$A = \begin{pmatrix}
        5 & 2 & 2 \\
        2 & 2 & -4 \\
        2 & -4 & 2
        \end{pmatrix}.$$ We determined that $A$ was diagonalisable. This
        diagonal matrix will be its Jordan normal form:
        $$\begin{pmatrix}
        -3 & 0 & 0 \\
        0 & 6 & 0 \\
        0 & 0 & 6
        \end{pmatrix} =
        \begin{pmatrix}
        J_{1}(-3) & 0 & 0 \\
        0 & J_{1}(6) & 0 \\
        0 & 0 & J_{1}(6)
        \end{pmatrix}.$$

    4.  $$A = \begin{pmatrix}
        3 & 4 & 4 \\
        1 & 3 & 0 \\
        -2 & -4 & -1
        \end{pmatrix}.$$ We determined
        $$c_{A}(x) = (x-1)^{2} (x-3) \qquad \text{and} \qquad m_{A}(x) = (x-1)^{2}(x-3).$$
        Hence the Jordan normal form of $A$ is $$\begin{pmatrix}
        J_{2}(1) & 0 \\
        0 & J_{1}(3)
        \end{pmatrix} =
        \begin{pmatrix}
        1 & 1 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 3
        \end{pmatrix}.$$

    5.  $$A = \begin{pmatrix}
        1 & 0 & 1 \\
        0 & 2 & 1 \\
        -1 & 0 & 3
        \end{pmatrix}.$$ We determined
        $$c_{A}(x) = (x-2)^{3} \qquad \text{and} \qquad m_{A}(x) = (x-2)^{3}.$$
        Hence the Jordan normal form of $A$ consists of a single Jordan
        block of size $3$: $$J_{3}(2) = \begin{pmatrix}
        2 & 1 & 0 \\
        0 & 2 & 1 \\
        0 & 0 & 2
        \end{pmatrix}.$$

    6.  $$A = \begin{pmatrix}
        -2 & -3 & 0 \\
        3 & 4 & 0 \\
        6 & 6 & 1
        \end{pmatrix}.$$ We determined
        $$c_{A}(x) = (x-1)^{3} \qquad \text{and} \qquad m_{A}(x) = (x-1)^{2}$$
        (see the Problem Sheet for Section 9, Problems 2 and 3,
        part (g)). Hence the Jordan normal form of $A$ is
        $$\begin{pmatrix}
        J_{2}(1) & 0 \\
        0 & J_{1}(1)
        \end{pmatrix} =
        \begin{pmatrix}
        1 & 1 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1
        \end{pmatrix}.$$
    :::

5.  []{#problem-10-05 label="problem-10-05"}

    ::: {.questionjupyter}
    For each matrix $A$ appearing in Problem 4, find an invertible
    matrix $P$ such that $P^{-1}AP$ is in Jordan normal form.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    **This solution is here for reference only, you should use a
    computer to solve this type of problem in this course!**

    1.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!** For
        $$A = \begin{pmatrix}
                3 & -4 & 0 \\
                0 & -1 & 0 \\
                0 & 6 & 2
              \end{pmatrix},$$ we determined that $A$ was diagonalisable
        and showed $$P^{-1}AP = \begin{pmatrix}
                -1 & 0 & 0 \\
                0 & 2 & 0 \\
                0 & 0 & 3
              \end{pmatrix}$$ when $$P = \begin{pmatrix}
                1 & 0 & 1 \\
                1 & 0 & 0 \\
                -2 & 1 & 0
              \end{pmatrix}$$ (see the Problem Sheet for Section 9,
        Problem 2(a)).

    2.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        1 & 1 & -1 \\
        -2 & 4 & -2 \\
        0 & 1 & 0
        \end{pmatrix}.$$ From Question 4, the Jordan normal form is
        $$\begin{pmatrix}
        J_{1}(1) & 0 \\
        0 & J_{2}(2)
        \end{pmatrix} =
        \begin{pmatrix}
        1 & 0 & 0 \\
        0 & 2 & 1 \\
        0 & 0 & 2
        \end{pmatrix}.$$

        First we determine the eigenspace $E_{1}$. We solve
        $(A-I)(v) = \vec{0}$: $$\begin{pmatrix}
        0 & 1 & -1 \\
        -2 & 3 & -2 \\
        0 & 1 & -1
        \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix}
        = \begin{pmatrix}0\\0\\0\end{pmatrix},$$ so
        $$y-z = -2x + 3y - 2z = 0.$$ Taking $z$ to be arbitrary, we see
        $y = z$ and $2x = 3y - 2z = z$, so $x = \textstyle\frac{1}{2}z$.
        Hence
        $$E_{1} = \left\{ \begin{pmatrix}\textstyle\frac{1}{2}z\\z\\z\end{pmatrix} \biggm| z \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}\textstyle\frac{1}{2}\\1\\1\end{pmatrix} \right).$$
        Take
        $$v_{1} = \begin{pmatrix}\textstyle\frac{1}{2}\\1\\1\end{pmatrix},$$
        so $A(v_{1}) = v_{1}$.

        We determined the eigenspace $E_{2}$ in Problem 2 on the Problem
        Sheet for Section 9 (Diagonalisation):
        $$E_{2} = \operatorname{Span} \left( \begin{pmatrix}1\\2\\1\end{pmatrix} \right).$$
        Take $$v_{2} = \begin{pmatrix}1\\2\\1\end{pmatrix},$$ so
        $A(v_{2}) = 2v_{2}$.

        For our final basis vector $v_{3}$, we require
        $A(v_{3}) = v_{2} +
        2v_{3}$, so we solve $(A-2I)(v) = v_{2}$: $$\begin{pmatrix}
        -1 & 1 & -1 \\
        -2 & 2 & -2 \\
        0 & 1 & -2
        \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix}
        = \begin{pmatrix}1\\2\\1\end{pmatrix}.$$ So
        $$\begin{array}{r@{}r@{}r@{}l}
        -x & {} + y & {} - z &{} = 1 \\
        -2x &{} + 2y &{} - 2z &{} = 2 \\
        & y &{} - 2z &{} = 1.
        \end{array}$$ The first two equations are equivalent. Any $z$
        will yield an appropriate solution, so we take $z = 0$. Then
        $y = 1+2z = 1$ and $$x = y-z - 1 = 1 - 0 - 1 = 0.$$ Hence we
        take $$v_{3} = \begin{pmatrix}0\\1\\0\end{pmatrix}.$$

        Therefore, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}\textstyle\frac{1}{2}\\1\\1\end{pmatrix}, \begin{pmatrix}1\\2\\1\end{pmatrix},
          \begin{pmatrix}0\\1\\0\end{pmatrix} \right\},$$ the matrix
        of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        1 & 0 & 0 \\
        0 & 2 & 1 \\
        0 & 0 & 2
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        \textstyle\frac{1}{2}& 1 & 0 \\
        1 & 2 & 1 \\
        1 & 1 & 0
        \end{pmatrix}.$$

    3.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**

        From the Problem Sheet for Section 9 (Diagonalisation),
        Problem 2(c), we take $$P = \begin{pmatrix}
        -\textstyle\frac{1}{2}& 2 & 2 \\
        1 & 1 & 0 \\
        1 & 0 & 1
        \end{pmatrix}$$ to obtain $$P^{-1}AP = \begin{pmatrix}
        -3 & 0 & 0 \\
        0 & 6 & 0 \\
        0 & 0 & 6
        \end{pmatrix},$$ which is the Jordan normal form of
        $$A = \begin{pmatrix}
        5 & 2 & 2 \\
        2 & 2 & -4 \\
        2 & -4 & 2
        \end{pmatrix}.$$

    4.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        3 & 4 & 4 \\
        1 & 3 & 0 \\
        -2 & -4 & -1
        \end{pmatrix}.$$ From Question 4, the Jordan normal form is
        $$\begin{pmatrix}
        1 & 1 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 3
        \end{pmatrix}.$$ We determined the eigenspace $E_{1}$ in
        Problem 2 on the Problem Sheet for Section 9:
        $$E_{1} = \operatorname{Span} \left( \begin{pmatrix}-2\\1\\0\end{pmatrix} \right).$$
        We take $$v_{1} = \begin{pmatrix}-2\\1\\0\end{pmatrix}.$$ To
        find $v_{2}$, we solve $A(v) = v_{1} + v$; that is, $(A-I)(v) =
        v_{1}$: $$\begin{pmatrix}
        2 & 4 & 4 \\
        1 & 2 & 0 \\
        -2 & -4 & -2
        \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix}
        = \begin{pmatrix}-2\\1\\0\end{pmatrix}.$$ So
        $$\begin{array}{r@{}r@{}r@{}l}
        x &{} + 2y &{} + 2z &{} = -1 \\
        x &{} + 2y & &{} = 1 \\
        x &{} + 2y &{} + z &{} = 0.
        \end{array}$$ Subtracting the second equation from the first and
        third gives $2z =
        -2$ and $z = -1$. Thus these are compatible equations (as they
        have to be given the fact that the Jordan normal form is as
        described). Any value of $y$ will yield a solution, so we take
        $y = 0$ and hence $x = 1$. So we take
        $$v_{2} = \begin{pmatrix}1\\0\\-1\end{pmatrix}.$$

        Finally we determine the eigenspace $E_{3}$. We solve
        $(A-3I)(v) =
        \vec{0}$: $$\begin{pmatrix}
        0 & 4 & 4 \\
        1 & 0 & 0 \\
        -2 & -4 & -4
        \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix}
        = \begin{pmatrix}0\\0\\0\end{pmatrix},$$ so
        $$\begin{array}{r@{}r@{}r@{}l}
        & 4y &{} + 4z &{} = 0 \\
        x & & &{} = 0 \\
        -2x & {} - 4y &{} - 4z &{} = 0.
        \end{array}$$ Hence $x = 0$ and $z = -y$. Thus
        $$E_{3} = \left\{ \begin{pmatrix}0\\y\\-y\end{pmatrix} \biggm| y \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}0\\1\\-1\end{pmatrix} \right).$$
        So take $$v_{3} = \begin{pmatrix}0\\1\\-1\end{pmatrix}.$$

        Therefore, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}-2\\1\\0\end{pmatrix}, \begin{pmatrix}1\\0\\-1\end{pmatrix},
          \begin{pmatrix}0\\1\\-1\end{pmatrix} \right\},$$ the matrix
        of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        1 & 1 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 3
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        -2 & 1 & 0 \\
        1 & 0 & 1 \\
        0 & -1 & -1
        \end{pmatrix}.$$

    5.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**

        The Jordan normal form of $$A = \begin{pmatrix}
        1 & 0 & 1 \\
        0 & 2 & 1 \\
        -1 & 0 & 3
        \end{pmatrix}$$ is $$\begin{pmatrix}
        2 & 1 & 0 \\
        0 & 2 & 1 \\
        0 & 0 & 2
        \end{pmatrix}.$$ We determined the eigenspace $E_{2}$ on the
        Problem Sheet for Section 9:
        $$E_{2} = \operatorname{Span} \left( \begin{pmatrix}0\\1\\0\end{pmatrix} \right),$$
        so we take $$v_{1} = \begin{pmatrix}0\\1\\0\end{pmatrix}.$$

        To find $v_{2}$, we solve $(A-2I)(v) = v_{1}$: $$\begin{pmatrix}
        -1 & 0 & 1 \\
        0 & 0 & 1 \\
        -1 & 0 & 1
        \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix} = \begin{pmatrix}0\\1\\0\end{pmatrix},$$
        so $$-x + z = 0, \qquad z = 1.$$ Hence $x = z = 1$ and $y$ may
        be arbitrary. We shall choose $y = 0$ and take
        $$v_{2} = \begin{pmatrix}1\\0\\1\end{pmatrix}.$$

        Finally to find $v_{3}$, we solve $(A-2I)(v) = v_{2}$:
        $$\begin{pmatrix}
        -1 & 0 & 1 \\
        0 & 0 & 1 \\
        -1 & 0 & 1
        \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix} = \begin{pmatrix}1\\0\\1\end{pmatrix}.$$
        So $$-x + z = 1, \qquad z = 0.$$ Hence $x = -1$ and $y$ may be
        arbitrary. We shall choose $y = 0$ and take
        $$v_{3} = \begin{pmatrix}-1\\0\\0\end{pmatrix}.$$

        Therefore, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}0\\1\\0\end{pmatrix}, \begin{pmatrix}1\\0\\1\end{pmatrix},
          \begin{pmatrix}-1\\0\\0\end{pmatrix} \right\},$$ the matrix
        of $A$ is in Jordan normal form
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        2 & 1 & 0 \\
        0 & 2 & 1 \\
        0 & 0 & 2
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        0 & 1 & -1 \\
        1 & 0 & 0 \\
        0 & 1 & 0
        \end{pmatrix}.\square$$
    :::

6.  []{#problem-10-06 label="problem-10-06"}

    ::: {.questionjupyter}
    Show that the matrix of real numbers $$A = \begin{pmatrix}
          0 & 1 & 2 \\
          0 & 0 & 3 \\
          0 & 0 & 0
        \end{pmatrix}$$ is not diagonalisable. Find a Jordan normal
    form $J$ of $A$ and an invertible matrix $P$ such that
    $P^{-1}AP = J$.
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    **This solution is here for reference only, you should use a
    computer to solve this type of problem in this course!**

    The characteristic equation of $A$ is
    $$c_{A}(x) = \det \begin{pmatrix}
    x & -1 & -2 \\
    0 & x & -3 \\
    0 & 0 & x
    \end{pmatrix} = x^{3}.$$ Now $A$ is diagonalisable if and only if
    the minimum polynomial equals $x$ (the only possible product of
    distinct linear factors). But $A \neq 0$, so $m_{A}(x) \neq x$.
    Hence $A$ is not diagonalisable.

    $$A^{2} = \begin{pmatrix}
    0 & 0 & 3 \\
    0 & 0 & 0 \\
    0 & 0 & 0
    \end{pmatrix} \neq 0,$$ so $m_{A}(x) \neq x^{2}$. Since
    $m_{A}(x)$ divides $c_{A}(x)$, we conclude
    $$m_{A}(x) = x^{3} = c_{A}(x).$$ Consequently the Jordan normal form
    of $A$ consists of a single block $$J = J_{3}(0) = \begin{pmatrix}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
    \end{pmatrix}.$$

    We now determine the eigenspace $E_{0}$. We solve $A(v) = \vec{0}$:
    $$\begin{pmatrix}
    0 & 1 & 2 \\
    0 & 0 & 3 \\
    0 & 0 & 0
    \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix} = \begin{pmatrix}0\\0\\0\end{pmatrix},$$
    so $$y + 2z = 3z = 0.$$ We deduce $z = y = 0$, but $x$ can be
    arbitrary. Thus
    $$E_{0} = \left\{ \begin{pmatrix}x\\0\\0\end{pmatrix} \biggm| x \in \mathbb{R}\right\} =
    \operatorname{Span} \left( \begin{pmatrix}1\\0\\0\end{pmatrix} \right).$$
    Take $$v_{1} = \begin{pmatrix}1\\0\\0\end{pmatrix}.$$

    To find $v_{2}$, we solve $A(v) = v_{1}$: $$\begin{pmatrix}
    0 & 1 & 2 \\
    0 & 0 & 3 \\
    0 & 0 & 0
    \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix} = \begin{pmatrix}1\\0\\0\end{pmatrix},$$
    so $$y + 2z = 1, \qquad 3z = 0$$ and we deduce $y = 1$,  $z = 0$,
    but $x$ can be arbitrary. We choose $x = 0$, so take
    $$v_{2} = \begin{pmatrix}0\\1\\0\end{pmatrix}.$$

    Finally to find $v_{3}$, we solve $A(v) = v_{2}$: $$\begin{pmatrix}
    0 & 1 & 2 \\
    0 & 0 & 3 \\
    0 & 0 & 0
    \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix} = \begin{pmatrix}0\\1\\0\end{pmatrix},$$
    so $$y + 2z = 0, \qquad 3z = 1.$$ We deduce $z = \frac{1}{3}$,
     $y = -2z = -\frac{2}{3}$ and $x$ can be arbitrary. We choose
    $x = 0$, so take
    $$v_{3} = \begin{pmatrix}0\\-\frac{2}{3}\\\frac{1}{3}\end{pmatrix}.$$

    Hence, the matrix of $A$ with respect to the basis
    $$\mathscr{B}= \left\{ \begin{pmatrix}1\\0\\0\end{pmatrix}, \begin{pmatrix}0\\1\\0\end{pmatrix},
      \begin{pmatrix}0\\-\frac{2}{3}\\\frac{1}{3}\end{pmatrix} \right\}$$
    is $$J = \begin{pmatrix}
    0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 0
    \end{pmatrix}.$$ The required change of basis matrix is
    $$P = \begin{pmatrix}
    1 & 0 & 0 \\
    0 & 1 & -\frac{2}{3} \\
    0 & 0 & \frac{1}{3}
    \end{pmatrix}.$$
    :::

7.  []{#problem-10-07 label="problem-10-07"}

    ::: {.questionjupyter}
    For each of the following matrices $A$, determine a Jordan normal
    form of $A$ and find an invertible matrix $P$ such that
    $P^{-1}AP$ is in Jordan normal form. $$\begin{array}{rlrlrl}
      \mbox{(a)} & \begin{pmatrix}
        1 & 0 & 0 & 0 \\
        -6 & -1 & 1 & 0 \\
        -4 & 0 & -1 & 0 \\
        13 & 0 & 6 & 1
      \end{pmatrix}
      &\quad
      \mbox{(b)} & \begin{pmatrix}
        -14 & 1 & 0 & 14 \\
        -6 & 0 & 0 & 6 \\
        6 & -3 & -3 & -6 \\
        -11 & 1 & 0 & 11
      \end{pmatrix}
      \\[40pt]
      \mbox{(c)} &\begin{pmatrix}
        -2 & 1 & 0 & -9 \\
        0 & 1 & 0 & 0 \\
        2 & 1 & 1 & 7 \\
        1 & 0 & 0 & 4
      \end{pmatrix}
                 & \quad
      \mbox{(d)} & 
      \begin{pmatrix}
        -4       & 0               & 2  & -4 \\
        -2       & -2              & 3  & -4 \\
        0        & 0               & -2 & 0 \\
        1        & 0               & -1 & 0
      \end{pmatrix}
      \\[40pt]
      \mbox{(e)} & \begin{pmatrix}
        -3       & 2               & \textstyle\frac{1}{2} & -2 \\
        0        & 0               & 0                     & 1 \\
        0        & -3              & -3                    & 3 \\
        0        & 0               & 0                     & 1
      \end{pmatrix}
      &
      \mbox{(f)} & \begin{pmatrix}
        -2 & 2 & 0 & -6 \\
        -2 & 3 & 0 & -3 \\
        -2 & 1 & 2 & -3 \\
        2 & -1 & 0 & 5
      \end{pmatrix}.
    \end{array}$$
    :::

    <button type="button" class="collapsible">SOLUTION.</button>
::: {.solution04}
    **This solution is here for reference only, you should use a
    computer to solve this type of problem in this course!**

    1.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        1 & 0 & 0 & 0 \\
        -6 & -1 & 1 & 0 \\
        -4 & 0 & -1 & 0 \\
        13 & 0 & 6 & 1
        \end{pmatrix},$$ so $$\begin{aligned}
        c_{A}(x) &= \det \begin{pmatrix}
        x-1 & 0 & 0 & 0 \\
        6 & x+1 & -1 & 0 \\
        4 & 0 & x+1 & 0 \\
        -13 & 0 & -6 & x-1
        \end{pmatrix} \\
        &= (x-1) \det \begin{pmatrix}
        x+1 & -1 & 0 \\
        0 & x+1 & 0 \\
        0 & -6 & x-1
        \end{pmatrix} \\
        &= (x-1)(x+1) \det \begin{pmatrix}
        x+1 & 0 \\
        -6 & x-1
        \end{pmatrix} \\
        &= (x-1)^{2} (x+1)^{2}.\end{aligned}$$ Therefore
        $m_{A}(x) = (x-1)^{i}(x+1)^{j}$ where
        $1 \leqslant i,j \leqslant 2$. We have $$A-I = \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -6 & -2 & 1 & 0 \\
        -4 & 0 & -2 & 0 \\
        13 & 0 & 6 & 0
        \end{pmatrix}
        \qquad \text{and} \qquad
        A+I = \begin{pmatrix}
        2 & 0 & 0 & 0 \\
        -6 & 0 & 1 & 0 \\
        -4 & 0 & 0 & 0 \\
        13 & 0 & 6 & 2
        \end{pmatrix},$$ so $$\begin{aligned}
        (A-I)(A+I) &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -4 & 0 & -2 & 0 \\
        0 & 0 & 0 & 0 \\
        2 & 0 & 0 & 0
        \end{pmatrix} \neq 0, \\
        (A-I)^{2}(A+I) &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -6 & -2 & 1 & 0 \\
        -4 & 0 & -2 & 0 \\
        13 & 0 & 6 & 0
        \end{pmatrix}
        \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -4 & 0 & -2 & 0 \\
        0 & 0 & 0 & 0 \\
        2 & 0 & 0 & 0
        \end{pmatrix} \\
        &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        8 & 0 & 4 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
        \end{pmatrix} \neq 0, \\
        \qquad\text{and}\qquad
        (A-I)(A+I)^{2} &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -4 & 0 & -2 & 0 \\
        0 & 0 & 0 & 0 \\
        2 & 0 & 0 & 0
        \end{pmatrix}
        \begin{pmatrix}
        2 & 0 & 0 & 0 \\
        -6 & 0 & 1 & 0 \\
        -4 & 0 & 0 & 0 \\
        13 & 0 & 6 & 2
        \end{pmatrix} \\
        &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        4 & 0 & 0 & 0
        \end{pmatrix} \neq 0.\end{aligned}$$ Hence
        $m_{A}(x) = (x-1)^{2}(x+1)^{2}$ (since we have eliminated the
        smaller degree possibilities). Therefore the Jordan normal form
        of $A$ is $$\begin{pmatrix}
        J_{2}(1) & 0 \\
        0 & J_{2}(-1)
        \end{pmatrix} =
        \begin{pmatrix}
        1 & 1 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 \\
        0 & 0 & 0 & -1
        \end{pmatrix}.$$

        Now we determine $E_{1}$, so solve $(A-I)(v) = \vec{0}$:
        $$\begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -6 & -2 & 1 & 0 \\
        -4 & 0 & -2 & 0 \\
        13 & 0 & 6 & 0
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{aligned}
        -6x - 2y + z &= 0 \\
        -4x \quad\;\;\; -2z &= 0 \label{eq:JNF2a} \\
        13x \quad\;\;\; + 6z &= 0. \label{eq:JNF3a}\end{aligned}$$
        Multiplying [\[eq:JNF2a\]](#eq:JNF2a){reference-type="eqref"
        reference="eq:JNF2a"} and adding
        to [\[eq:JNF3a\]](#eq:JNF3a){reference-type="eqref"
        reference="eq:JNF3a"}, we deduce $x = 0$, so $z = 0$ and hence
        $y = 0$. Thus
        $$E_{1} = \left\{ \begin{pmatrix}0\\0\\0\\t\end{pmatrix} \biggm| t \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}0\\0\\0\\1\end{pmatrix} \right).$$
        We take $$v_{1} = \begin{pmatrix}0\\0\\0\\1\end{pmatrix}.$$ To
        find $v_{2}$, we solve $(A-I)(v) = v_{1}$: $$\begin{pmatrix}
        0 & 0 & 0 & 0 \\
        -6 & -2 & 1 & 0 \\
        -4 & 0 & -2 & 0 \\
        13 & 0 & 6 & 0
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\1\end{pmatrix},$$
        so $$\begin{aligned}
        -6x -2y + z &= 0 \\
        -4x \quad\;\;\; -2z &= 0 \label{eq:JNF5a} \\
        13x \quad\;\;\; +6z &= 1. \label{eq:JNF6a}\end{aligned}$$
        Multiplying [\[eq:JNF5a\]](#eq:JNF5a){reference-type="eqref"
        reference="eq:JNF5a"} by $3$ and adding
        to [\[eq:JNF6a\]](#eq:JNF6a){reference-type="eqref"
        reference="eq:JNF6a"}, we deduce $x = 1$, so $2z = -4x = -4$ and
        hence $z = -2$. Therefore $2y
        = -6x + z = -6 - 2 = -8$ and we conclude $y = -4$, while
        $t$ remains arbitrary. We choose to take $t = 0$ and hence take
        $$v_{2} = \begin{pmatrix}1\\-4\\-2\\0\end{pmatrix}.$$

        Now determine $E_{-1}$, so solve $(A+I)(v) = \vec{0}$:
        $$\begin{pmatrix}
        2 & 0 & 0 & 0 \\
        -6 & 0 & 1 & 0 \\
        -4 & 0 & 0 & 0 \\
        13 & 0 & 6 & 2
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        -2x & & &{} = 0 \\
        -6x &{} + z & &{} = 0 \\
        -4x & & &{} = 0 \\
        13x &{} + 6z &{} + 2t &{} = 0.
        \end{array}$$ Hence $x = 0$,  $z = 0$ and $t = 0$, while $y$ can
        be arbitrary. Thus
        $$E_{-1} = \left\{ \begin{pmatrix}0\\y\\0\\0\end{pmatrix} \biggm| y \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}0\\1\\0\\0\end{pmatrix} \right),$$
        so we take $$v_{3} = \begin{pmatrix}0\\1\\0\\0\end{pmatrix}.$$
        Finally to find $v_{4}$, we solve $(T+I)(v) = v_{3}$:
        $$\begin{pmatrix}
        2 & 0 & 0 & 0 \\
        -6 & 0 & 1 & 0 \\
        -4 & 0 & 0 & 0 \\
        13 & 0 & 6 & 2
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\1\\0\\0\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        2x & & &{} = 0 \\
        -6x &{} + z & &{} = 1 \\
        -4x & & &{} = 0 \\
        13x &{} + 6z &{} + 2t &{} = 0.
        \end{array}$$ Hence $x = 0$,  $z = 1$ and $2t = -13x - 6z = -6$,
        so $t = -3$, while $y$ may be arbitrary. We shall take
        $$v_{4} = \begin{pmatrix}0\\0\\1\\-3\end{pmatrix}.$$

        Hence, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}0\\0\\0\\1\end{pmatrix}, \begin{pmatrix}1\\-4\\-2\\0\end{pmatrix},
          \begin{pmatrix}0\\1\\0\\0\end{pmatrix}, \begin{pmatrix}0\\0\\1\\-3\end{pmatrix} \right\},$$
        the matrix of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        1 & 1 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & -1 & 1 \\
        0 & 0 & 0 & -1
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        0 & 1 & 0 & 0 \\
        0 & -4 & 1 & 0 \\
        0 & -2 & 0 & 1 \\
        1 & 0 & 0 & -3
        \end{pmatrix}.$$

    2.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        -14 & 1 & 0 & 14 \\
        -6 & 0 & 0 & 6 \\
        6 & -3 & -3 & -6 \\
        -11 & 1 & 0 & 11
        \end{pmatrix},$$ so $$\begin{aligned}
        c_{A}(x) &= \det \begin{pmatrix}
        x+14 & -1 & 0 & -14 \\
        6 & x & 0 & -6 \\
        -6 & 3 & x+3 & 6 \\
        11 & -1 & 0 & x-11
        \end{pmatrix} \\
        &= (x+3) \det \begin{pmatrix}
        x+14 & -1 & -14 \\
        6 & x & -6 \\
        11 & -1 & x-11
        \end{pmatrix} \\
        &= (x+3) \left( (x+14) \det \begin{pmatrix}
        x & -6 \\
        -1 & x-11
        \end{pmatrix} + \det \begin{pmatrix}
        6 & -6 \\
        11 & x-11
        \end{pmatrix} \right. \\
        &\hspace{2.5in} \left. {} - 14 \det \begin{pmatrix}
        6 & x \\
        11 & -1
        \end{pmatrix} \right) \\
        &= (x+3) \bigl( (x+14) (x^{2} - 11x - 6) + 6x - 66 + 66 - 14 (-6 -
        11x) \bigr) \\
        &= (x+3) (x^{3} + 3x^{2} - 160x - 84 + 6x + 84 + 154x ) \\
        &= (x+3)(x^{3} + 3x^{2}) \\
        &= x^{2} (x+3)^{2}.\end{aligned}$$ Therefore
        $m_{A}(x) = x^{i}(x+3)^{j}$ where $1 \leqslant i,j \leqslant 2$.
        We have $$A + 3I = \begin{pmatrix}
        -11 & 1 & 0 & 14 \\
        -6 & 3 & 0 & 6 \\
        6 & -3 & 0 & -6 \\
        -11 & 1 & 0 & 14
        \end{pmatrix},$$ so $$\begin{aligned}
        A(A+3I) &= \begin{pmatrix}
        -6 & 3 & 0 & 6 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        -6 & 3 & 0 & 6
        \end{pmatrix} \neq 0 \\
        \qquad\text{and}\qquad
        A^{2}(A+3I) &= \begin{pmatrix}
        -14 & 1 & 0 & 14 \\
        -6 & 0 & 0 & 6 \\
        6 & -3 & -3 & -6 \\
        -11 & 1 & 0 & 11
        \end{pmatrix}
        \begin{pmatrix}
        -6 & 3 & 0 & 6 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        -6 & 3 & 0 & 6
        \end{pmatrix} \\
        &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
        \end{pmatrix}.\end{aligned}$$ Hence $m_{A}(x) = x^{2}(x+3)$, so
        we deduce the Jordan normal form of $A$ is $$\begin{pmatrix}
        J_{2}(0) & 0 & 0 \\
        0 & J_{1}(-3) & 0 \\
        0 & 0 & J_{1}(-3)
        \end{pmatrix} =
        \begin{pmatrix}
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & -3 & 0 \\
        0 & 0 & 0 & -3
        \end{pmatrix}.$$

        We now determine the eigenspace $E_{0}$, so solve
        $T(v) = \vec{0}$: $$\begin{pmatrix}
        -14 & 1 & 0 & 14 \\
        -6 & 0 & 0 & 6 \\
        6 & -3 & -3 & -6 \\
        -11 & 1 & 0 & 11
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{aligned}
        -14x + y \quad\;\;\; + 14t &= 0 \label{eq:JNF1b} \\
        -6x \qquad\qquad\;\; + 6t &= 0 \label{eq:JNF2b} \\
        6x - 3y - 3z - 6t &= 0 \label{eq:JNF3b} \\
        -11x + y \quad\;\;\; + 11t &= 0.\end{aligned}$$
        Equation [\[eq:JNF2b\]](#eq:JNF2b){reference-type="eqref"
        reference="eq:JNF2b"} tells us $x = t$ and then
        [\[eq:JNF1b\]](#eq:JNF1b){reference-type="eqref"
        reference="eq:JNF1b"} gives $y = 0$. Hence $z = 0$
        by [\[eq:JNF3b\]](#eq:JNF3b){reference-type="eqref"
        reference="eq:JNF3b"}. We deduce
        $$E_{0} = \left\{ \begin{pmatrix}x\\0\\0\\x\end{pmatrix} \biggm| x \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}1\\0\\0\\1\end{pmatrix} \right),$$
        so we take $$v_{1} = \begin{pmatrix}1\\0\\0\\1\end{pmatrix}.$$
        To find $v_{2}$, we now solve $A(v) = v_{1}$: $$\begin{pmatrix}
        -14 & 1 & 0 & 14 \\
        -6 & 0 & 0 & 6 \\
        6 & -3 & -3 & -6 \\
        -11 & 1 & 0 & 11
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}1\\0\\0\\1\end{pmatrix},$$
        so $$\begin{aligned}
        -14x + y \quad\;\;\; + 14 t &= 1 \label{eq:JNF5b} \\
        -6x \qquad\qquad\;\; + 6t &= 0 \label{eq:JNF6b} \\
        6x -3y - 3z - 6t &= 0 \label{eq:JNF7b} \\
        -11x + y \quad\;\;\; + 11t &=1.\end{aligned}$$
        Equation [\[eq:JNF6b\]](#eq:JNF6b){reference-type="eqref"
        reference="eq:JNF6b"} tells us $x = t$. Then
        [\[eq:JNF5b\]](#eq:JNF5b){reference-type="eqref"
        reference="eq:JNF5b"} implies $y = 1$ and
        [\[eq:JNF7b\]](#eq:JNF7b){reference-type="eqref"
        reference="eq:JNF7b"} forces $z = -y =
        -1$. The final choice of $x$ remains arbitrary, so we shall take
        $x =
        0$ and $$v_{2} = \begin{pmatrix}0\\1\\-1\\0\end{pmatrix}.$$

        Finally we determine $E_{-3}$, so solve $(A+3I)(v) = \vec{0}$:
        $$\begin{pmatrix}
        -11 & 1 & 0 & 14 \\
        -6 & 3 & 0 & 6 \\
        6 & -3 & 0 & -6 \\
        -11 & 1 & 0 & 14
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so we have essentially just two equations: $$\begin{aligned}
        -11x + y + 14t &= 0 \label{eq:JNF9b} \\
        -6x + 3y + 6t &= 0. \label{eq:JNF10b}\end{aligned}$$
        Multiplying [\[eq:JNF9b\]](#eq:JNF9b){reference-type="eqref"
        reference="eq:JNF9b"} by $3$ and subtracting
        from [\[eq:JNF10b\]](#eq:JNF10b){reference-type="eqref"
        reference="eq:JNF10b"} gives $27x - 36t = 0$, so
        $x = \frac{4}{3}t$, while $$y = 11x - 14t = \frac{2}{3}t.$$ The
        value of $z$ remains arbitrary, so
        $$E_{-3} = \left\{ \begin{pmatrix}\frac{4}{3}t\\\frac{2}{3}t\\z\\t\end{pmatrix} \biggm|
          z,t \in \mathbb{R}\right\} = \operatorname{Span} \left(
          \begin{pmatrix}0\\0\\1\\0\end{pmatrix}, \begin{pmatrix}4\\2\\0\\3\end{pmatrix} \right).$$
        We take
        $$v_{3} = \begin{pmatrix}0\\0\\1\\0\end{pmatrix} \qquad \text{and} \qquad v_{4} =
        \begin{pmatrix}4\\2\\0\\3\end{pmatrix}.$$ Hence, with respect to
        the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}1\\0\\0\\1\end{pmatrix}, \begin{pmatrix}0\\1\\-1\\0\end{pmatrix},
          \begin{pmatrix}0\\0\\1\\0\end{pmatrix}, \begin{pmatrix}4\\2\\0\\3\end{pmatrix} \right\},$$
        the matrix of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & -3 & 0 \\
        0 & 0 & 0 & -3
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        1 & 0 & 0 & 4 \\
        0 & 1 & 0 & 2 \\
        0 & -1 & 1 & 0 \\
        1 & 0 & 0 & 3
        \end{pmatrix}.$$

    3.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        -2 & 1 & 0 & -9 \\
        0 & 1 & 0 & 0 \\
        2 & 1 & 1 & 7 \\
        1 & 0 & 0 & 4
        \end{pmatrix},$$ so $$\begin{aligned}
        c_{A}(x) &= \det \begin{pmatrix}
        x+2 & -1 & 0 & 9 \\
        0 & x-1 & 0 & 0 \\
        -2 & -1 & x-1 & -7 \\
        -1 & 0 & 0 & x-4
        \end{pmatrix} \\
        &= (x-1) \det \begin{pmatrix}
        x+2 & 0 & 9 \\
        -2 & x-1 & -7 \\
        -1 & 0 & x-4
        \end{pmatrix} \\
        &= (x-1)^{2} \det \begin{pmatrix}
        x+2 & 9 \\
        -1 & x-4
        \end{pmatrix} \\
        &= (x-1)^{2} \bigl( (x+2)(x-4) + 9 \bigr) \\
        &= (x-1)^{2} (x^{2} - 2x -8 + 9) \\
        &= (x-1)^{2} (x^{2} - 2x + 1) \\
        &= (x-1)^{4}.\end{aligned}$$ To determine the minimum
        polynomial, we calculate successive powers of
        $$A-I = \begin{pmatrix}
        -3 & 1 & 0 & -9 \\
        0 & 0 & 0 & 0 \\
        2 & 1 & 0 & 7 \\
        1 & 0 & 0 & 3
        \end{pmatrix}.$$ We calculate $$\begin{aligned}
        (A-I)^{2} &= \begin{pmatrix}
        0 & -3 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        1 & 2 & 0 & 3 \\
        0 & 1 & 0 & 0
        \end{pmatrix} \neq 0 \\
        \qquad\text{and}\qquad
        (A-I)^{3} &= \begin{pmatrix}
        0 & -3 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        1 & 2 & 0 & 3 \\
        0 & 1 & 0 & 0
        \end{pmatrix}
        \begin{pmatrix}
        -3 & 1 & 0 & -9 \\
        0 & 0 & 0 & 0 \\
        2 & 1 & 0 & 7 \\
        1 & 0 & 0 & 3
        \end{pmatrix} \\
        &= \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & 0 & 0
        \end{pmatrix} \neq 0.\end{aligned}$$ Hence
        $m_{A}(x) = (x-1)^{4}$ (as we have eliminated all smaller degree
        possibilities) and the Jordan normal form of $A$ consists of a
        single Jordan block $$J_{4}(1) = \begin{pmatrix}
        1 & 1 & 0 & 0 \\
        0 & 1 & 1 & 0 \\
        0 & 0 & 1 & 1 \\
        0 & 0 & 0 & 1
        \end{pmatrix}.$$

        Since $A$ has a single Jordan block, $\dim E_{1} = 1$.
        Consider $A-I$, we note immediately that
        $$v_{1} = \begin{pmatrix}0\\0\\1\\0\end{pmatrix}$$ satisfies
        $(A-I)(v_{1}) = \vec{0}$. Hence $v_{1}$ spans $E_{1}$.

        We now solve $(A-I)(v) = v_{1}$: $$\begin{pmatrix}
        -3 & 1 & 0 & -9 \\
        0 & 0 & 0 & 0 \\
        2 & 1 & 0 & 7 \\
        1 & 0 & 0 & 3
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\1\\0\end{pmatrix},$$
        so $$\begin{aligned}
        -3x + y - 9t &= 0 \label{eq:JNF1c} \\
        2x + y + 7t &= 1 \label{eq:JNF2c} \\
        x \quad\;\;\; + 3t &= 0. \label{eq:JNF3c}\end{aligned}$$
        Multiplying [\[eq:JNF3c\]](#eq:JNF3c){reference-type="eqref"
        reference="eq:JNF3c"} by $3$ and adding
        to [\[eq:JNF1c\]](#eq:JNF1c){reference-type="eqref"
        reference="eq:JNF1c"} gives $y = 0$.
        Multiplying [\[eq:JNF3c\]](#eq:JNF3c){reference-type="eqref"
        reference="eq:JNF3c"} by $2$ and subtracting
        from [\[eq:JNF2c\]](#eq:JNF2c){reference-type="eqref"
        reference="eq:JNF2c"} now yields $t = 1$ and hence
        $x = -3t = -3$. The value of $z$ is arbitrary, so we choose
        $z = 0$ and take
        $$v_{2} = \begin{pmatrix}-3\\0\\0\\1\end{pmatrix}.$$

        We now solve $(A-I)(v) = v_{2}$: $$\begin{pmatrix}
        -3 & 1 & 0 & -9 \\
        0 & 0 & 0 & 0 \\
        2 & 1 & 0 & 7 \\
        1 & 0 & 0 & 3
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}-3\\0\\0\\1\end{pmatrix},$$
        so $$\begin{aligned}
        -3x + y - 9t &= -3 \label{eq:JNF4c} \\
        2x + y + 7t &= 0 \label{eq:JNF5c} \\
        x \quad\;\;\; + 3t &= 1. \label{eq:JNF6c}\end{aligned}$$
        Multiplying [\[eq:JNF6c\]](#eq:JNF6c){reference-type="eqref"
        reference="eq:JNF6c"} by $3$ and adding
        to [\[eq:JNF4c\]](#eq:JNF4c){reference-type="eqref"
        reference="eq:JNF4c"} gives $y = 0$.
        Multiplying [\[eq:JNF6c\]](#eq:JNF6c){reference-type="eqref"
        reference="eq:JNF6c"} by $2$ and subtracting
        from [\[eq:JNF5c\]](#eq:JNF5c){reference-type="eqref"
        reference="eq:JNF5c"} then yields $t = -2$ and hence
        $x = 1-3t = 7$. We take $z = 0$ (it can be any value) and
        $$v_{3} = \begin{pmatrix}7\\0\\0\\-2\end{pmatrix}.$$

        Finally we solve $(A-I)(v) = v_{3}$: $$\begin{pmatrix}
        -3 & 1 & 0 & -9 \\
        0 & 0 & 0 & 0 \\
        2 & 1 & 0 & 7 \\
        1 & 0 & 0 & 3
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}7\\0\\0\\-2\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        -3x &{} + y &{} - 9t &{} = 7 \\
        2x &{} + y &{} + 7t &{} = 0 \\
        x & &{} + 3t &{} = -2.
        \end{array}$$ Hence $$\begin{aligned}
        y &= (-3x+y-9t) + 3(x+3t) = 7-6 = 1 \\
        t &= (2x+y+7t) - y - 2(x+3t) = 0 - 1 + 4 = 3 \\
        \qquad\text{and}\qquad
        x &= -2 - 3t = -11.\end{aligned}$$ We take
        $$v_{4} = \begin{pmatrix}-11\\1\\0\\3\end{pmatrix}$$ since
        $z$ (arbitrary) can be taken to be $0$. Hence, with respect to
        the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}0\\0\\1\\0\end{pmatrix}, \begin{pmatrix}-3\\0\\0\\1\end{pmatrix},
          \begin{pmatrix}7\\0\\0\\-2\end{pmatrix}, \begin{pmatrix}-11\\1\\0\\3\end{pmatrix} \right\},$$
        the matrix of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        1 & 1 & 0 & 0 \\
        0 & 1 & 1 & 0 \\
        0 & 0 & 1 & 1 \\
        0 & 0 & 0 & 1
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        0 & -3 & 7 & -11 \\
        0 & 0 & 0 & 1 \\
        1 & 0 & 0 & 0 \\
        0 & 1 & -2 & 3
        \end{pmatrix}.$$

    4.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        -4 & 0 & 2 & -4 \\
        -2 & -2 & 3 & -4 \\
        0 & 0 & -2 & 0 \\
        1 & 0 & -1 & 0
        \end{pmatrix},$$ so $$\begin{aligned}
        c_{A}(x) &= \det \begin{pmatrix}
        x+4 & 0 & -2 & 4 \\
        2 & x+2 & -3 & 4 \\
        0 & 0 & x+2 & 0 \\
        -1 & 0 & 1 & x
        \end{pmatrix} \\
        &= (x+2) \det \begin{pmatrix}
        x+4 & -2 & 4 \\
        0 & x+2 & 0 \\
        -1 & 1 & x
        \end{pmatrix} \\
        &= (x+2)^{2} \det \begin{pmatrix}
        x+4 & 4 \\
        -1 & x
        \end{pmatrix} \\
        &= (x+2)^{2} (x^{2} + 4x + 4) \\
        &= (x+2)^{4}.\end{aligned}$$ We calculate successive powers of
        $$A+2I = \begin{pmatrix}
        -2 & 0 & 2 & -4 \\
        -2 & 0 & 3 & -4 \\
        0 & 0 & 0 & 0 \\
        1 & 0 & -1 & 2
        \end{pmatrix}.$$ Then $$(A+2I)^{2} = \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
        \end{pmatrix},$$ so the minimum polynomial is
        $m_{A}(x) = (x+2)^{2}$. To finish determining the Jordan normal
        form, we need to know the number of Jordan blocks occurring and
        so need to calculate $\dim E_{-2}$.

        We solve $(A+2I)(v) = \vec{0}$: $$\begin{pmatrix}
        -2 & 0 & 2 & -4 \\
        -2 & 0 & 3 & -4 \\
        0 & 0 & 0 & 0 \\
        1 & 0 & -1 & 2
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        -2x &{} + 2z &{} -4t &{} = 0 \\
        -2x &{} + 3z &{} - 4t &{} = 0 \\
        x &{} - z & {} +2t &= 0.
        \end{array}$$ This yields $x + 2t = z = 0$. Hence
        $$E_{-2} = \left\{ \begin{pmatrix}-2t\\y\\0\\t\end{pmatrix} \biggm| y,t \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}-2\\0\\0\\1\end{pmatrix}, \begin{pmatrix}0\\1\\0\\0\end{pmatrix}
        \right).$$ Thus $\dim E_{-2} = 2$ and we deduce the Jordan
        normal form of $A$ contains $2$ Jordan blocks. The Jordan normal
        form is therefore $$\begin{pmatrix}
        J_{2}(-2) & 0 \\
        0 & J_{2}(-2)
        \end{pmatrix} =
        \begin{pmatrix}
        -2 & 1 & 0 & 0 \\
        0 & -2 & 0 & 0 \\
        0 & 0 & -2 & 1 \\
        0 & 0 & 0 & -2
        \end{pmatrix}.$$

        The corresponding basis must contain two vectors
        $v_{1},v_{3}$ which span $E_{-2}$. To find the choice for
        $v_{2}$ and $v_{4}$, we solve $(A+2I)(v) \in E_{-2}$  (since we
        require $A(v_{2}) = v_{1} - 2v_{2}$ and
        $A(v_{4}) = v_{3} - 2v_{4}$): $$\begin{pmatrix}
        -2 & 0 & 2 & -4 \\
        -2 & 0 & 3 & -4 \\
        0 & 0 & 0 & 0 \\
        1 & 0 & -1 & 2
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} =
        \begin{pmatrix}-2\alpha\\\beta\\0\\\alpha\end{pmatrix}
        \label{eq:JNF*d}$$ for scalars $\alpha,\beta \in \mathbb{R}$
         (the right-hand side being an arbitrary vector in $E_{-2}$).
        Hence $$\begin{aligned}
        -2x + 2z - 4t &= -2\alpha \label{eq:JNF1d} \\
        -2x + 3z - 4t &= \beta \label{eq:JNF2d} \\
        x - z + 2t &= \alpha. \label{eq:JNF3d}\end{aligned}$$ Hence
        $z = 2\alpha + \beta$
        (subtracting [\[eq:JNF1d\]](#eq:JNF1d){reference-type="eqref"
        reference="eq:JNF1d"}
        from [\[eq:JNF2d\]](#eq:JNF2d){reference-type="eqref"
        reference="eq:JNF2d"}) and
        $x = \alpha + z - 2t = 3\alpha + \beta -
        2t$.

        If we take $\alpha = 1$ and $\beta = 0$, we should take
        $$v_{1} = \begin{pmatrix}-2\\0\\0\\1\end{pmatrix} \qquad \text{and} \qquad v_{2} =
        \begin{pmatrix}3-2t\\y\\2\\t\end{pmatrix}$$ for any values of
        $y$ and $t$. We choose $t = y = 0$ to give
        $$v_{2} = \begin{pmatrix}3\\0\\2\\0\end{pmatrix}.$$

        Similarly taking $\alpha = 0$,  $\beta = 1$,  $t = y = 0$ tells
        us that we should take
        $$v_{3} = \begin{pmatrix}0\\1\\0\\0\end{pmatrix} \qquad \text{and} \qquad v_{4} =
        \begin{pmatrix}1\\0\\1\\0\end{pmatrix}.$$

        Hence, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}-2\\0\\0\\1\end{pmatrix}, \begin{pmatrix}3\\0\\2\\0\end{pmatrix},
          \begin{pmatrix}0\\1\\0\\0\end{pmatrix}, \begin{pmatrix}1\\0\\1\\0\end{pmatrix} \right\},$$
        the matrix of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        -2 & 1 & 0 & 0 \\
        0 & -2 & 0 & 0 \\
        0 & 0 & -2 & 1 \\
        0 & 0 & 0 & -2
        \end{pmatrix}.$$ The corresponding change of basis matrix is
        $$P = \begin{pmatrix}
        -2 & 3 & 0 & 1 \\
        0 & 0 & 1 & 0 \\
        0 & 2 & 0 & 1 \\
        1 & 0 & 0 & 0
        \end{pmatrix}.$$

    5.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        -3 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & 0 & 0 & 1 \\
        0 & -3 & -3 & 3 \\
        0 & 0 & 0 & 1
        \end{pmatrix},$$ so $$\begin{aligned}
        c_{A}(x) &= \det \begin{pmatrix}
        x+3 & -2 & -\textstyle\frac{1}{2}& 2 \\
        0 & x & 0 & -1 \\
        0 & 3 & x+3 & -3 \\
        0 & 0 & 0 & x-1
        \end{pmatrix} \\
        &= (x+3) \det \begin{pmatrix}
        x & 0 & -1 \\
        3 & x+3 & -3 \\
        0 & 0 & x-1
        \end{pmatrix} \\
        &= (x-1)(x+3) \det \begin{pmatrix}
        x & 0 \\
        3 & x+3
        \end{pmatrix} \\
        &= x(x-1)(x+3)^{2}.\end{aligned}$$ Hence the minimum polynomial
        has the form $m_{A}(x) = x(x-1)(x+3)^{i}$ where
        $1 \leqslant i \leqslant 2$. Now $$A-I = \begin{pmatrix}
        -4 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & -1 & 0 & 1 \\
        0 & -3 & -4 & 3 \\
        0 & 0 & 0 & 0
        \end{pmatrix}
        \qquad \text{and} \qquad
        A+3I = \begin{pmatrix}
        0 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & 3 & 0 & 1 \\
        0 & -3 & 0 & 3 \\
        0 & 0 & 0 & 4
        \end{pmatrix},$$ so $$\begin{aligned}
        A(A-I)(A+3I) &=
        \begin{pmatrix}
        -3 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & 0 & 0 & 1 \\
        0 & -3 & -3 & 3 \\
        0 & 0 & 0 & 1
        \end{pmatrix}
        \begin{pmatrix}
        0 & -\frac{7}{2} & -2 & \frac{7}{2} \\
        0 & -3 & 0 & 3 \\
        0 & 3 & 0 & -3 \\
        0 & 0 & 0 & 0
        \end{pmatrix} \\
        &= \begin{pmatrix}
        0 & 6 & 6 & -6 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
        \end{pmatrix}.\end{aligned}$$ Hence
        $m_{A}(x) = x(x-1)(x+3)^{2}$. Consequently the Jordan normal
        form of $A$ is $$\begin{pmatrix}
        J_{1}(0) & 0 & 0 \\
        0 & J_{1}(1) & 0 \\
        0 & 0 & J_{2}(-3)
        \end{pmatrix} =
        \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & -3 & 1 \\
        0 & 0 & 0 & -3
        \end{pmatrix}.$$

        We next determine the three eigenspaces $E_{0}$, $E_{1}$
        and $E_{-3}$ (which we now know are $1$-dimensional).
        For $E_{0}$, we solve $A(v) = \vec{0}$: $$\begin{pmatrix}
        -3 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & 0 & 0 & 1 \\
        0 & -3 & -3 & 3 \\
        0 & 0 & 0 & 1
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{aligned}
        -3x + 2y + \textstyle\frac{1}{2}z - 2t &= 0 \\
        t &= 0 \\
        -3y - 3z + 3t &= 0.\end{aligned}$$ Hence $t = 0$,  $z$ may be
        arbitrary, $y = -z$ and $3x = 2y + \textstyle\frac{1}{2}z
        = -\frac{3}{2}z$, so $x = -\textstyle\frac{1}{2}z$. Hence
        $$E_{0} = \left\{ \begin{pmatrix}-\textstyle\frac{1}{2}z\\-z\\z\\0\end{pmatrix} \biggm| z \in \mathbb{R}\right\}
        = \operatorname{Span} \left( \begin{pmatrix}-\textstyle\frac{1}{2}\\-1\\1\\0\end{pmatrix} \right),$$
        so we take
        $$v_{1} = \begin{pmatrix}-\textstyle\frac{1}{2}\\-1\\1\\0\end{pmatrix}.$$

        For $E_{1}$, we solve $(A-I)(v) = \vec{0}$: $$\begin{pmatrix}
        -4 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & -1 & 0 & 1 \\
        0 & -3 & -4 & 3 \\
        0 & 0 & 0 & 0
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        -4x + 2y &{} + \textstyle\frac{1}{2}z &{} -2t &{} = 0 \\
        -y & &{} + t &{} = 0 \\
        -3y &{} - 4z &{} + 3t &{} = 0.
        \end{array}$$ Given arbitrary $t$, we see $y = t$, so
        $4z = 3y - 3t = 0$ and consequently $z = 0$. Thus
        $4x = 2y + \textstyle\frac{1}{2}z - 2t = 0$ and so $x =
        0$. Hence
        $$E_{1} = \left\{ \begin{pmatrix}0\\t\\0\\t\end{pmatrix} \biggm| t \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}0\\1\\0\\1\end{pmatrix} \right)$$
        and we take $$v_{2} = \begin{pmatrix}0\\1\\0\\1\end{pmatrix}.$$

        Finally, for $E_{-3}$, we solve $(A+3I)(v) = \vec{0}$:
        $$\begin{pmatrix}
        0 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & 3 & 0 & 1 \\
        0 & -3 & 0 & 3 \\
        0 & 0 & 0 & 4
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        2y &{} + \textstyle\frac{1}{2}z &{} - 2t &{} = 0 \\
        3y & &{} + t &{} = 0 \\
        -3y & &{} +3t &{} = 0 \\
        & & 4t &{} = 0.
        \end{array}$$ Hence $t = 0$, $y = 0$ and $z = 0$. Thus
        $$E_{-3} = \left\{ \begin{pmatrix}x\\0\\0\\0\end{pmatrix} \biggm| x \in \mathbb{R}\right\} =
        \operatorname{Span} \left( \begin{pmatrix}1\\0\\0\\0\end{pmatrix} \right)$$
        and we take $$v_{3} = \begin{pmatrix}1\\0\\0\\0\end{pmatrix}.$$
        Finally we require $A(v_{4}) = v_{3} - 3v_{4}$, so solve
        $(A+3I)(v) = v_{3}$: $$\begin{pmatrix}
        0 & 2 & \textstyle\frac{1}{2}& -2 \\
        0 & 3 & 0 & 1 \\
        0 & -3 & 0 & 3 \\
        0 & 0 & 0 & 4
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}1\\0\\0\\0\end{pmatrix},$$
        so $$\begin{array}{r@{}r@{}r@{}l}
        2y &{} + \textstyle\frac{1}{2}z &{} - 2t &{} = 1 \\
        3y & &{} + t &{} = 0 \\
        -3y & &{} + 3t &{} = 0 \\
        & & 4t &{} = 0.
        \end{array}$$ Hence $t = 0$,  $y = 0$ and
        $\textstyle\frac{1}{2}z = 1$, so $z = 2$ while $x$ can be
        arbitrary. We choose $x = 0$ and so take
        $$v_{4} = \begin{pmatrix}0\\0\\2\\0\end{pmatrix}.$$

        Hence, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}-\textstyle\frac{1}{2}\\-1\\1\\0\end{pmatrix}, \begin{pmatrix}0\\1\\0\\1\end{pmatrix},
          \begin{pmatrix}1\\0\\0\\0\end{pmatrix}, \begin{pmatrix}0\\0\\2\\0\end{pmatrix} \right\},$$
        the matrix of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 1 & 0 & 0 \\
        0 & 0 & -3 & 1 \\
        0 & 0 & 0 & -3
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        -\textstyle\frac{1}{2}& 0 & 1 & 0 \\
        -1 & 1 & 0 & 0 \\
        1 & 0 & 0 & 2 \\
        0 & 1 & 0 & 0
        \end{pmatrix}.$$

    6.  **This solution is here for reference only, you should use a
        computer to solve this type of problem in this course!**
        $$A = \begin{pmatrix}
        -2 & 2 & 0 & -6 \\
        -2 & 3 & 0 & -3 \\
        -2 & 1 & 2 & -3 \\
        2 & -1 & 0 & 5
        \end{pmatrix},$$ so $$\begin{aligned}
        c_{A}(x) &= \det \begin{pmatrix}
        x+2 & -2 & 0 & 6 \\
        2 & x-3 & 0 & 3 \\
        2 & -1 & x-2 & 3 \\
        -2 & 1 & 0 & x-5
        \end{pmatrix} \\
        &= (x-2) \det \begin{pmatrix}
        x+2 & -2 & 6 \\
        2 & x-3 & 3 \\
        -2 & 1 & x-5
        \end{pmatrix} \\
        &= (x-2) \left( (x+2) \det \begin{pmatrix}
        x-3 & 3 \\
        1 & x-5
        \end{pmatrix} + 2 \det \begin{pmatrix}
        2 & 3 \\
        -2 & x-5
        \end{pmatrix} \right. \\
        &\left. \hspace{2.5in} {} + 6 \det \begin{pmatrix}
        2 & x-3 \\
        -2 & 1
        \end{pmatrix} \right) \\
        &= (x-2) \biggl( (x+2) \bigl( (x-3)(x-5) - 3 \bigr) + 2 (2x-10+6) + 6
        (2 + 2x - 6) \biggr) \\
        &= (x-2) \bigl( (x+2) (x^{2} - 8x + 15 - 3) + 2(2x-4) + 6(2x-4) \bigr)
        \\
        &= (x-2) \bigl( (x+2) (x^{2} - 8x + 12) + 16(x-2) \bigr) \\
        &= (x-2) \bigl( (x+2)(x-2)(x-6) + 16(x-2) \bigr) \\
        &= (x-2)^{2} \bigl( (x+2)(x-6) + 16 \bigr) \\
        &= (x-2)^{2} (x^{2} - 4x - 12 + 16) \\
        &= (x-2)^{2} (x^{2} - 4x + 4) \\
        &= (x-2)^{4}.\end{aligned}$$ Now $$A-2I = \begin{pmatrix}
        -4 & 2 & 0 & -6 \\
        -2 & 1 & 0 & -3 \\
        -2 & 1 & 0 & -3 \\
        2 & -1 & 0 & 3
        \end{pmatrix},$$ so $$(A-2I)^{2} = \begin{pmatrix}
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0 \\
        0 & 0 & 0 & 0
        \end{pmatrix}.$$ Hence $m_{A}(x) = (x-2)^{2}$. To determine the
        Jordan normal form, we need to determine $\dim E_{2}$, so as to
        determine the number of Jordan blocks occurring.

        We solve $(A-2I)(v) = \vec{0}$: $$\begin{pmatrix}
        -4 & 2 & 0 & -6 \\
        -2 & 1 & 0 & -3 \\
        -2 & 1 & 0 & -3 \\
        2 & -1 & 0 & 3
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} = \begin{pmatrix}0\\0\\0\\0\end{pmatrix}$$
        and observe all four resulting equations are scalar multiples of
        $$2x - y + 3t = 0.$$ Hence $y = 2x + 3t$, while $x$, $t$ and $z$
        can be arbitrary. Thus
        $$E_{2} = \left\{ \begin{pmatrix}x\\2x+3t\\z\\t\end{pmatrix} \biggm| x,z,t \in \mathbb{R}\right\}
        = \operatorname{Span} \left( \begin{pmatrix}1\\2\\0\\0\end{pmatrix},
          \begin{pmatrix}0\\0\\1\\0\end{pmatrix}, \begin{pmatrix}0\\3\\0\\1\end{pmatrix} \right).$$
        In particular, $\dim E_{2} = 3$ and so three Jordan blocks occur
        in the Jordan normal form of $A$. This Jordan normal form is
        therefore $$\begin{pmatrix}
        J_{2}(2) & 0 & 0 \\
        0 & J_{1}(2) & 0 \\
        0 & 0 & J_{1}(2)
        \end{pmatrix} =
        \begin{pmatrix}
        2 & 1 & 0 & 0 \\
        0 & 2 & 0 & 0 \\
        0 & 0 & 2 & 0 \\
        0 & 0 & 0 & 2
        \end{pmatrix}.$$

        We require $\{ v_{1},v_{3},v_{4} \}$ to form a basis for $E_{2}$
        and then $A(v_{2}) = v_{1} + 2v_{2}$, so we solve
        $(A-2I)(v) \in E_{2}$: $$\begin{pmatrix}
        -4 & 2 & 0 & -6 \\
        -2 & 1 & 0 & -3 \\
        -2 & 1 & 0 & -3 \\
        2 & -1 & 0 & 3
        \end{pmatrix} \begin{pmatrix}x\\y\\z\\t\end{pmatrix} =
        \begin{pmatrix}\alpha\\2\alpha+3\gamma\\\beta\\\gamma\end{pmatrix},$$
        so $$\begin{array}{r@{}l}
        2(-2x+y-3t) &{} = \alpha \\
        (-2x+y-3t) &{} = 2\alpha + 3\gamma \\
        (-2x+y-3t) &{} = \beta \\
        -(-2x+y-3t) &{} = \gamma.
        \end{array}
        \label{eq:JNFf}$$ Hence, for a solution to exist, we require
        $$\textstyle\frac{1}{2}\alpha = 2\alpha+3\gamma = \beta = -\gamma.$$
        Here $\alpha$ may be arbitrary (but non-zero to achieve
        $v_{1} \neq
        \vec{0}$), so we choose $\alpha = 2$. Then $\beta = 1$,
         $\gamma = -1$ (and we check $2\alpha + 3\gamma = 4-3 = 1$, as
        required). Thus our
        equations [\[eq:JNFf\]](#eq:JNFf){reference-type="eqref"
        reference="eq:JNFf"} reduce to $$-2x + y - 3t = 1.$$ Here
        $x$, $z$ and $t$ may be arbitrary, we shall take them all to
        be $0$, so $y = 1$. Hence we choose
        $$v_{1} = \begin{pmatrix}\alpha\\2\alpha+3\gamma\\\beta\\\gamma\end{pmatrix} =
        \begin{pmatrix}2\\1\\1\\-1\end{pmatrix} \qquad \text{and} \qquad v_{2} = \begin{pmatrix}0\\1\\0\\0\end{pmatrix}.$$
        The choice of $v_{3}$ and $v_{4}$ are to produce a basis
        for $E_{2}$ when taken together with $v_{1}$, so let us choose
        $$v_{3} = \begin{pmatrix}1\\2\\0\\0\end{pmatrix} \qquad \text{and} \qquad v_{4} =
        \begin{pmatrix}0\\0\\1\\0\end{pmatrix}.$$

        Hence, with respect to the basis
        $$\mathscr{B}= \left\{ \begin{pmatrix}2\\1\\1\\-1\end{pmatrix}, \begin{pmatrix}0\\1\\0\\0\end{pmatrix},
          \begin{pmatrix}1\\2\\0\\0\end{pmatrix}, \begin{pmatrix}0\\0\\1\\0\end{pmatrix} \right\},$$
        the matrix of $A$ is in Jordan normal form:
        $$\operatorname{Mat}_{\mathscr{B},\mathscr{B}}(A) = \begin{pmatrix}
        2 & 1 & 0 & 0 \\
        0 & 2 & 0 & 0 \\
        0 & 0 & 2 & 0 \\
        0 & 0 & 0 & 2
        \end{pmatrix}.$$ The required change of basis matrix is
        $$P = \begin{pmatrix}
        2 & 0 & 1 & 0 \\
        1 & 1 & 2 & 0 \\
        1 & 0 & 0 & 1 \\
        -1 & 0 & 0 & 0
        \end{pmatrix}.$$
    :::
