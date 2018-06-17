.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$i;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$t$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$b;,
        Landroid/support/v7/widget/LinearLayoutManager$a;,
        Landroid/support/v7/widget/LinearLayoutManager$d;,
        Landroid/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private aca:Landroid/support/v7/widget/LinearLayoutManager$c;

.field acb:Landroid/support/v7/widget/az;

.field private acc:Z

.field private acd:Z

.field ace:Z

.field private acf:Z

.field private acg:Z

.field ach:I

.field aci:I

.field private acj:Z

.field ack:Landroid/support/v7/widget/LinearLayoutManager$d;

.field final acm:Landroid/support/v7/widget/LinearLayoutManager$a;

.field private final acn:Landroid/support/v7/widget/LinearLayoutManager$b;

.field private aco:I

.field hE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acd:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acn:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aco:I

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->X(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$i;-><init>()V

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acd:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acn:Landroid/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aco:I

    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->orientation:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i$b;->afp:Z

    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->X(Z)V

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$i$b;->afq:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->W(Z)V

    return-void
.end method

.method private S(II)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private T(II)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private U(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0x4104

    const/16 v0, 0x4004

    :goto_2
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->afd:Landroid/support/v7/widget/bu;

    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/bu;->h(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x1041

    const/16 v0, 0x1001

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->afe:Landroid/support/v7/widget/bu;

    invoke-virtual {v2, p1, p2, v1, v0}, Landroid/support/v7/widget/bu;->h(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private X(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->F(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acd:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acd:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method private Y(Z)Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private Z(Z)Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    sub-int v1, v2, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/az;->bD(I)V

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I
    .locals 8

    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    if-eq v0, v7, :cond_1

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-gez v0, :cond_0

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acn:Landroid/support/v7/widget/LinearLayoutManager$b;

    :cond_2
    iget-boolean v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abM:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_8

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$c;->b(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_8

    iput v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->Pw:Z

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->act:Z

    iput-boolean v6, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->Px:Z

    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->Pw:Z

    if-nez v3, :cond_8

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->act:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    if-nez v3, :cond_4

    iget-boolean v3, p3, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v3, :cond_5

    :cond_4
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    sub-int/2addr v0, v3

    :cond_5
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    if-eq v3, v7, :cond_7

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-gez v3, :cond_6

    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V

    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$b;->Px:Z

    if-eqz v3, :cond_2

    :cond_8
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    sub-int v0, v1, v0

    return v0
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$u;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hk()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abM:Z

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v4}, Landroid/support/v7/widget/az;->getEndPadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hn()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hz()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-eqz p3, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hm()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v5}, Landroid/support/v7/widget/az;->hy()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->S(II)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;II)V
    .locals 1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-le p3, p2, :cond_2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abF:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abM:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3}, Landroid/support/v7/widget/az;->getEnd()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/az;->aJ(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/az;->aJ(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_a

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v4

    if-gt v4, v2, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/az;->aI(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_9

    :cond_8
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v5

    if-gt v5, v2, :cond_b

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/az;->aI(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_c

    :cond_b
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;II)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/az;->bD(I)V

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->T(II)V

    return-void
.end method

.method private c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abF:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v4

    add-int/2addr v1, v4

    if-gez v1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/az;->bD(I)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acx:I

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$u;->afJ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hA()I

    move-result v0

    :cond_0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hi()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->gF()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acd:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acd:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hk()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hm()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hn()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private ho()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->U(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hp()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->U(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->Y(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->Z(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/az;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->Y(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->Z(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/az;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private l(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->Y(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->Z(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->acg:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/az;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$i;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->F(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/support/v7/widget/az;->a(Landroid/support/v7/widget/RecyclerView$i;I)Landroid/support/v7/widget/az;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->acb:Landroid/support/v7/widget/az;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public W(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->F(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    move-object v4, v3

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hi()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->bB(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    const v0, 0x3eaaaaab

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hA()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v3, v0, v6, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abF:Z

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x1

    invoke-direct {p0, p3, v0, p4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    if-ne v3, v5, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hp()Landroid/view/View;

    move-result-object v0

    :goto_1
    move-object v2, v0

    :goto_2
    if-ne v3, v5, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hm()Landroid/view/View;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ho()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ho()Landroid/view/View;

    move-result-object v0

    :goto_4
    move-object v2, v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hp()Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hn()Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_0
.end method

.method public final a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    if-lez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public final a(ILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->hu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    move v4, v0

    :goto_0
    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    move v2, v1

    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->aco:I

    if-ge v2, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-interface {p2, v3, v1}, Landroid/support/v7/widget/RecyclerView$i$a;->C(II)V

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hi()V

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    if-ne v0, v2, :cond_2

    if-eqz v4, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_3
    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 0

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/LinearLayoutManager$b;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$c;->a(Landroid/support/v7/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->Pw:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    if-nez v1, :cond_6

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    if-ne v1, v10, :cond_4

    move v1, v7

    :goto_1
    if-ne v3, v1, :cond_5

    invoke-super {p0, v8, v10, v2}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->aQ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    iget v9, v1, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v1, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v6, v9

    add-int/2addr v3, v6

    iget v6, v1, Landroid/support/v7/widget/RecyclerView$j;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v9

    invoke-static {v4, v5, v3, v6, v9}, Landroid/support/v7/widget/RecyclerView$i;->b(IIIIZ)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v9

    add-int/2addr v6, v9

    iget v9, v1, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v6, v9

    iget v9, v1, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v6, v9

    add-int/2addr v2, v6

    iget v6, v1, Landroid/support/v7/widget/RecyclerView$j;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v9

    invoke-static {v4, v5, v2, v6, v9}, Landroid/support/v7/widget/RecyclerView$i;->b(IIIIZ)I

    move-result v2

    invoke-virtual {p0, v8, v3, v2, v1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v8, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-ne v1, v7, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->gF()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    if-ne v3, v10, :cond_a

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    sub-int v5, v4, v5

    move v4, v1

    move v6, v2

    :goto_4
    invoke-static {v8, v6, v5, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/view/View;IIII)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->act:Z

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->Px:Z

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto/16 :goto_1

    :cond_5
    invoke-super {p0, v8, v2, v2}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_6
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    if-ne v1, v10, :cond_7

    move v1, v7

    :goto_5
    if-ne v3, v1, :cond_8

    invoke-super {p0, v8, v10, v7}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    invoke-super {p0, v8, v2, v7}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_3

    :cond_a
    iget v5, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    add-int/2addr v3, v4

    move v4, v1

    move v6, v2

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v5

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/az;->aL(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v5

    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->oO:I

    if-ne v2, v10, :cond_c

    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    sub-int v6, v3, v4

    move v3, v1

    move v4, v2

    goto :goto_4

    :cond_c
    iget v6, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget v3, p4, Landroid/support/v7/widget/LinearLayoutManager$b;->acs:I

    add-int/2addr v2, v3

    move v3, v1

    move v4, v2

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->reset()V

    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 3

    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$c;->acu:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Landroid/support/v7/widget/RecyclerView$i$a;->C(II)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/au;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/au;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acj:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$p;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$p;->clear()V

    :cond_0
    return-void
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(IIZZ)Landroid/view/View;
    .locals 3

    const/16 v0, 0x140

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/16 v2, 0x6003

    :goto_0
    if-eqz p4, :cond_2

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->afd:Landroid/support/v7/widget/bu;

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/bu;->h(IIII)Landroid/view/View;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->afe:Landroid/support/v7/widget/bu;

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/support/v7/widget/bu;->h(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final bA(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    return-void
.end method

.method final bB(I)I
    .locals 4

    const/4 v0, -0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->gF()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->gF()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-eq v3, v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final by(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->by(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final bz(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v2

    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 11

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$p;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->hu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abF:Z

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hi()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, v1, Landroid/support/v7/widget/LinearLayoutManager$a;->acr:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v1, :cond_24

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->reset()V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v2

    if-ltz v2, :cond_1a

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1a

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1b

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->s(Landroid/view/View;I)V

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_5

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager$a;->ht()V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$a;->acr:Z

    :cond_6
    :goto_5
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acx:I

    if-ltz v0, :cond_26

    const/4 v2, 0x0

    move v0, v1

    :goto_6
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->getEndPadding()I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_7

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->by(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3}, Landroid/support/v7/widget/az;->hz()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    sub-int/2addr v2, v3

    :goto_7
    if-lez v2, :cond_28

    add-int/2addr v1, v2

    :cond_7
    :goto_8
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    :goto_9
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$p;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hk()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abM:Z

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v3, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acw:Z

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, v2, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-lez v0, :cond_39

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    invoke-direct {p0, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->T(II)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    :goto_a
    move v1, v2

    move v3, v0

    :goto_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v0

    add-int v2, v3, v0

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v1

    add-int v3, v2, v1

    add-int/2addr v1, v0

    :cond_9
    :goto_c
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->agd:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->he()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_a
    :goto_d
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hA()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/az;->ads:I

    :goto_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acc:Z

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    if-ltz v0, :cond_c

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_d

    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_d
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->mPosition:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;->hu()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    goto :goto_f

    :cond_f
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_18

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->by(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hA()I

    move-result v2

    if-le v1, v2, :cond_10

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager$a;->ht()V

    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    goto :goto_10

    :cond_11
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hz()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    goto :goto_10

    :cond_12
    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hx()I

    move-result v1

    add-int/2addr v0, v1

    :goto_11
    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    :goto_12
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_13
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v0

    goto :goto_11

    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ach:I

    if-ge v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_13
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    :cond_15
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager$a;->ht()V

    goto :goto_12

    :cond_16
    const/4 v0, 0x0

    goto :goto_13

    :cond_17
    const/4 v0, 0x0

    goto :goto_14

    :cond_18
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    goto/16 :goto_10

    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    goto/16 :goto_10

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1b
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acc:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    if-ne v0, v1, :cond_22

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-nez v0, :cond_1f

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_22

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$a;->t(Landroid/view/View;I)V

    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->he()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1}, Landroid/support/v7/widget/az;->hy()I

    move-result v1

    if-ge v0, v1, :cond_20

    :cond_1c
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_1d

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acq:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hz()I

    move-result v0

    :goto_17
    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager$a;->acp:I

    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_1e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :cond_1f
    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$u;->getItemCount()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;III)Landroid/view/View;

    move-result-object v0

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    goto :goto_16

    :cond_21
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v0}, Landroid/support/v7/widget/az;->hy()I

    move-result v0

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_24
    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    if-ge v1, v2, :cond_25

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    if-gt v1, v2, :cond_6

    :cond_25
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager$a;->s(Landroid/view/View;I)V

    goto/16 :goto_5

    :cond_26
    const/4 v0, 0x0

    move v2, v1

    goto/16 :goto_6

    :cond_27
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3}, Landroid/support/v7/widget/az;->hy()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->aci:I

    sub-int v2, v3, v2

    goto/16 :goto_7

    :cond_28
    sub-int/2addr v0, v2

    goto/16 :goto_8

    :cond_29
    const/4 v2, -0x1

    goto/16 :goto_9

    :cond_2a
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eqz v2, :cond_2b

    const/4 v2, -0x1

    goto/16 :goto_9

    :cond_2b
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_2c
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-lez v2, :cond_2d

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    add-int/2addr v1, v2

    :cond_2d
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$c;->abI:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abH:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    if-lez v1, :cond_38

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->S(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->EK:I

    move v1, v0

    move v3, v2

    goto/16 :goto_b

    :cond_2e
    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v0

    add-int v2, v3, v0

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Z)I

    move-result v1

    add-int v3, v2, v1

    add-int/2addr v1, v0

    goto/16 :goto_c

    :cond_2f
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p1, Landroid/support/v7/widget/RecyclerView$p;->afD:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_18
    if-ge v6, v8, :cond_33

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v2

    if-ge v2, v9, :cond_30

    const/4 v2, 0x1

    :goto_19
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    if-eq v2, v10, :cond_31

    const/4 v2, -0x1

    :goto_1a
    const/4 v10, -0x1

    if-ne v2, v10, :cond_32

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v0

    add-int v2, v5, v0

    move v0, v4

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    move v4, v0

    move v5, v2

    goto :goto_18

    :cond_30
    const/4 v2, 0x0

    goto :goto_19

    :cond_31
    const/4 v2, 0x1

    goto :goto_1a

    :cond_32
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/az;->aK(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v2, v5

    goto :goto_1b

    :cond_33
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    if-lez v5, :cond_34

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hm()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->T(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager$c;->aF(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    :cond_34
    if-lez v4, :cond_35

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hn()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->S(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acv:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->abG:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$c;->aF(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/LinearLayoutManager$c;Landroid/support/v7/widget/RecyclerView$u;Z)I

    :cond_35
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$c;->acy:Ljava/util/List;

    goto/16 :goto_d

    :cond_36
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acm:Landroid/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$a;->reset()V

    goto/16 :goto_e

    :cond_37
    move v0, v4

    move v2, v5

    goto :goto_1b

    :cond_38
    move v1, v0

    move v3, v2

    goto/16 :goto_b

    :cond_39
    move v0, v1

    goto/16 :goto_a
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final g(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method protected final gF()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public hb()Landroid/support/v7/widget/RecyclerView$j;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(II)V

    return-object v0
.end method

.method public he()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->acc:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acf:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hg()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hh()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->hE:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hj()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->aca:Landroid/support/v7/widget/LinearLayoutManager$c;

    :cond_0
    return-void
.end method

.method final hl()Z
    .locals 6

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final hq()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final hr()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final hs()I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final i(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hq()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$d;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->ack:Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>(Landroid/support/v7/widget/LinearLayoutManager$d;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$d;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$d;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hj()V

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->acc:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->ace:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acB:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hn()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hz()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/az;->aH(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->hm()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/az;->aG(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->acb:Landroid/support/v7/widget/az;

    invoke-virtual {v2}, Landroid/support/v7/widget/az;->hy()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acA:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$d;->acz:I

    goto :goto_0
.end method
