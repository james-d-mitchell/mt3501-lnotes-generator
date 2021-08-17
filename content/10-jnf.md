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
A linear transformation $T : V \to V$ (of a vector space $V$) has
***Jordan normal form*** $A$ if there exists a basis $\mathscr{B}$
for $V$ such that
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
vector space and $T : V \to V$ be a linear transformation such that
polynomial $c_{T}(x) = (x - \lambda_1) ^
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
*Proof.* Suppose that $T: \mathbb{C} ^ n \to \mathbb{C} ^ n$ and
$\mathscr{B}$ is a basis for $\mathbb{C} ^ n$ such that
$\operatorname{Mat}_{\mathscr{B}, \mathscr{B}}(T) = A$. Then by
[Theorem 10.1.3]({{< ref "10-jnf#thm-JNF" >}}) there
exists a basis $\mathscr{C}$ for $\mathbb{C} ^ n$ such that
$\operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(T)$ is in Jordan normal
form. Hence if
$P = \operatorname{Mat}_{\mathscr{C}, \mathscr{B}}(\operatorname{id)_{\mathbb{C} ^ n}}$
is the change of basis matrix from
[Theorem 4.3.1]({{< ref "04-linear-transf#thm-change-basis" >}}), then $P ^ {-1} A P
    = \operatorname{Mat}_{\mathscr{C}, \mathscr{C}}(T)$. ◻
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
finite-dimensional vector space, let $T: V\to V$ be a linear
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
Let $V = \mathbb{R}^{4}$ and let $T : V \to V$ be the linear
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
    (x-2)^{i}(x+2)^{j}$ where $1 \leq i,j \leq 2$. Since
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
$V = \mathbb{R}^{4}$ and let $T : V \to V$ be the linear transformation
given by the matrix $$C = \begin{pmatrix}
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
$T : \mathbb{R}^{4} \to \mathbb{R}^{4}$ with matrix $C$ is
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
Let $T : \mathbb{R}^{4} \to \mathbb{R}^{4}$ be the linear transformation
given by the matrix $$D = \begin{pmatrix}
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
    x^{i}(x+3)^{j}$ where $1 \leq i,j \leq 2$. Since
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
Let $V = \mathbb{R}^{5}$ and let $T : V \to V$ be the linear
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
$m_{T}(x) = (x-1)^{i} (x+2)$ where $1 \leq i \leq 4$ by
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
<https://moody.st-andrews.ac.uk/moodle/mod/lti/view.php?id=801479>

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

2.  []{#problem-10-02 label="problem-10-02"}

    ::: {.question}
    Determine all possible Jordan normal forms for a linear
    transformation $T \colon V \to V$ whose characteristic polynomial is
    $c_{T}(x) =
          (x-2)^{3}(x-5)^{2}$.
    :::

3.  []{#problem-10-03 label="problem-10-03"}

    ::: {.question}
    Determine all possible Jordan normal forms for a $5 \times 5$ matrix
    whose minimum polynomial is $(x-3)^{2}$.
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

5.  []{#problem-10-05 label="problem-10-05"}

    ::: {.questionjupyter}
    For each matrix $A$ appearing in Problem 4, find an invertible
    matrix $P$ such that $P^{-1}AP$ is in Jordan normal form.
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
