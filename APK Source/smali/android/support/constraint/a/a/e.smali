.class public final Landroid/support/constraint/a/a/e;
.super Landroid/support/constraint/a/a/n;


# instance fields
.field public bB:I

.field public hm:Z

.field protected hn:Landroid/support/constraint/a/e;

.field private ho:Landroid/support/constraint/a/a/m;

.field hp:I

.field hq:I

.field hr:I

.field hs:I

.field ht:I

.field hu:I

.field hv:[Landroid/support/constraint/a/a/d;

.field hw:[Landroid/support/constraint/a/a/d;

.field public hx:Z

.field public hy:Z

.field hz:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/constraint/a/a/n;-><init>()V

    iput-boolean v1, p0, Landroid/support/constraint/a/a/e;->hm:Z

    new-instance v0, Landroid/support/constraint/a/e;

    invoke-direct {v0}, Landroid/support/constraint/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    iput v1, p0, Landroid/support/constraint/a/a/e;->ht:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->hu:I

    new-array v0, v2, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    new-array v0, v2, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/constraint/a/a/e;->bB:I

    iput-boolean v1, p0, Landroid/support/constraint/a/a/e;->hx:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/a/e;->hy:Z

    iput v1, p0, Landroid/support/constraint/a/a/e;->hz:I

    return-void
.end method

.method private b([Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    aput-boolean v2, p1, v7

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->aO()V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->aO()V

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v4, v4, v2

    sget v5, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/support/constraint/a/a/d;->gL:I

    if-ge v4, v5, :cond_0

    aput-boolean v6, p1, v7

    :cond_0
    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v4, v4, v6

    sget v5, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/support/constraint/a/a/d;->gM:I

    if-ge v4, v0, :cond_1

    aput-boolean v6, p1, v7

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method final a(Landroid/support/constraint/a/a/d;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_4

    :goto_0
    iget-object v1, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    if-eq v1, p1, :cond_0

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object p1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Landroid/support/constraint/a/a/e;->ht:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/e;->ht:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    iget v1, p0, Landroid/support/constraint/a/a/e;->ht:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/e;->ht:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/e;->ht:I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    :goto_3
    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v1, v1, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v2, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    if-eq v1, p1, :cond_5

    iget-object v1, p1, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object p1, v1, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    goto :goto_3

    :cond_5
    :goto_4
    iget v1, p0, Landroid/support/constraint/a/a/e;->hu:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget v0, p0, Landroid/support/constraint/a/a/e;->hu:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/d;

    iput-object v0, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    iget v1, p0, Landroid/support/constraint/a/a/e;->hu:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/e;->hu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/e;->hu:I

    goto :goto_2
.end method

.method public final aQ()V
    .locals 20

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/e;->gC:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/e;->gD:I

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/constraint/a/a/e;->hx:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/constraint/a/a/e;->hy:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ho:Landroid/support/constraint/a/a/m;

    if-nez v2, :cond_0

    new-instance v2, Landroid/support/constraint/a/a/m;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/constraint/a/a/m;-><init>(Landroid/support/constraint/a/a/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/constraint/a/a/e;->ho:Landroid/support/constraint/a/a/m;

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->ho:Landroid/support/constraint/a/a/m;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/d;->getX()I

    move-result v2

    iput v2, v4, Landroid/support/constraint/a/a/m;->gC:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/d;->getY()I

    move-result v2

    iput v2, v4, Landroid/support/constraint/a/a/m;->gD:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v2

    iput v2, v4, Landroid/support/constraint/a/a/m;->db:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v2

    iput v2, v4, Landroid/support/constraint/a/a/m;->dc:I

    iget-object v2, v4, Landroid/support/constraint/a/a/m;->hY:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v2, v4, Landroid/support/constraint/a/a/m;->hY:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/m$a;

    iget-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v6

    iput-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    if-eqz v6, :cond_1

    iget-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iput-object v6, v2, Landroid/support/constraint/a/a/m$a;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    invoke-virtual {v6}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    iput v6, v2, Landroid/support/constraint/a/a/m$a;->fy:I

    iget-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget v6, v6, Landroid/support/constraint/a/a/c;->fA:I

    iput v6, v2, Landroid/support/constraint/a/a/m$a;->hZ:I

    iget-object v6, v2, Landroid/support/constraint/a/a/m$a;->hD:Landroid/support/constraint/a/a/c;

    iget v6, v6, Landroid/support/constraint/a/a/c;->fC:I

    iput v6, v2, Landroid/support/constraint/a/a/m$a;->ia:I

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/support/constraint/a/a/m$a;->fx:Landroid/support/constraint/a/a/c;

    const/4 v6, 0x0

    iput v6, v2, Landroid/support/constraint/a/a/m$a;->fy:I

    sget v6, Landroid/support/constraint/a/a/c$b;->fJ:I

    iput v6, v2, Landroid/support/constraint/a/a/m$a;->hZ:I

    const/4 v6, 0x0

    iput v6, v2, Landroid/support/constraint/a/a/m$a;->ia:I

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->hp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->setX(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->hq:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->setY(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->aL()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->bB:I

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->l(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->aS()V

    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->l(I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->bB:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->i(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->aR()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/a/e;->ei:Z

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/a/a/e;->ht:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/a/a/e;->hu:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    instance-of v5, v2, Landroid/support/constraint/a/a/n;

    if-eqz v5, :cond_5

    check-cast v2, Landroid/support/constraint/a/a/n;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/n;->aQ()V

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/a/a/e;->gC:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/a/a/e;->gD:I

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/a/e;->ei:Z

    goto :goto_3

    :cond_8
    const/4 v5, 0x1

    const/4 v2, 0x0

    move v6, v2

    :goto_5
    if-eqz v5, :cond_21

    add-int/lit8 v6, v6, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    invoke-virtual {v2}, Landroid/support/constraint/a/e;->reset()V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/e;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    instance-of v0, v2, Landroid/support/constraint/a/a/e;

    move/from16 v16, v0

    if-eqz v16, :cond_d

    iget-object v0, v2, Landroid/support/constraint/a/a/d;->gy:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    iget-object v0, v2, Landroid/support/constraint/a/a/d;->gy:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    sget v18, Landroid/support/constraint/a/a/d$a;->hi:I

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    sget v18, Landroid/support/constraint/a/a/d$a;->hh:I

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/d;->j(I)V

    :cond_9
    sget v18, Landroid/support/constraint/a/a/d$a;->hi:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    sget v18, Landroid/support/constraint/a/a/d$a;->hh:I

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/d;->k(I)V

    :cond_a
    invoke-virtual {v2, v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/e;)V

    sget v18, Landroid/support/constraint/a/a/d$a;->hi:I

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/d;->j(I)V

    :cond_b
    sget v16, Landroid/support/constraint/a/a/d$a;->hi:I

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/d;->k(I)V

    :cond_c
    :goto_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Landroid/support/constraint/a/a/h;->a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/d;)V

    invoke-virtual {v2, v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    move v3, v5

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EXCEPTION : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_9
    if-eqz v3, :cond_19

    sget-object v2, Landroid/support/constraint/a/a/h;->hL:[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/a/a/e;->b([Z)V

    :cond_e
    :goto_a
    const/4 v3, 0x0

    const/16 v2, 0x8

    if-ge v6, v2, :cond_27

    sget-object v2, Landroid/support/constraint/a/a/h;->hL:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_27

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v5, v2

    :goto_b
    if-ge v5, v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    iget v0, v2, Landroid/support/constraint/a/a/d;->gC:I

    move/from16 v16, v0

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v0, v2, Landroid/support/constraint/a/a/d;->gD:I

    move/from16 v16, v0

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_b

    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->ht:I

    if-lez v2, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;I)V

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->hu:I

    if-lez v2, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_11
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_12

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v0, v2, Landroid/support/constraint/a/f;->ew:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v2, Landroid/support/constraint/a/f;->ew:J

    :cond_12
    iget-boolean v2, v7, Landroid/support/constraint/a/e;->ei:Z

    if-eqz v2, :cond_18

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_13

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v0, v2, Landroid/support/constraint/a/f;->eJ:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v2, Landroid/support/constraint/a/f;->eJ:J

    :cond_13
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_c
    iget v8, v7, Landroid/support/constraint/a/e;->el:I

    if-ge v5, v8, :cond_14

    iget-object v8, v7, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v8, v8, v5

    iget-boolean v8, v8, Landroid/support/constraint/a/b;->dX:Z

    if-nez v8, :cond_15

    const/4 v2, 0x0

    :cond_14
    if-nez v2, :cond_16

    iget-object v2, v7, Landroid/support/constraint/a/e;->ee:Landroid/support/constraint/a/e$a;

    invoke-virtual {v7, v2}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/e$a;)V

    goto/16 :goto_9

    :catch_1
    move-exception v2

    goto/16 :goto_8

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_17

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v0, v2, Landroid/support/constraint/a/f;->eI:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v2, Landroid/support/constraint/a/f;->eI:J

    :cond_17
    invoke-virtual {v7}, Landroid/support/constraint/a/e;->ar()V

    goto/16 :goto_9

    :cond_18
    iget-object v2, v7, Landroid/support/constraint/a/e;->ee:Landroid/support/constraint/a/e$a;

    invoke-virtual {v7, v2}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/e$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->aO()V

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/a/a/d;

    iget-object v5, v2, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    sget v7, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v5, v7, :cond_1a

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getWidth()I

    move-result v5

    iget v7, v2, Landroid/support/constraint/a/a/d;->gL:I

    if-ge v5, v7, :cond_1a

    sget-object v2, Landroid/support/constraint/a/a/h;->hL:[Z

    const/4 v3, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    goto/16 :goto_a

    :cond_1a
    iget-object v5, v2, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    sget v7, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v5, v7, :cond_1b

    invoke-virtual {v2}, Landroid/support/constraint/a/a/d;->getHeight()I

    move-result v5

    iget v2, v2, Landroid/support/constraint/a/a/d;->gM:I

    if-ge v5, v2, :cond_1b

    sget-object v2, Landroid/support/constraint/a/a/h;->hL:[Z

    const/4 v3, 0x2

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    goto/16 :goto_a

    :cond_1b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->bw:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/e;->bx:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    sget v7, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v14, v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v7

    if-ge v7, v2, :cond_26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x0

    sget v4, Landroid/support/constraint/a/a/d$a;->hi:I

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v4, v3

    :goto_e
    sget v3, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v13, v3, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v3

    if-ge v3, v5, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x1

    sget v4, Landroid/support/constraint/a/a/d$a;->hi:I

    aput v4, v2, v3

    const/4 v4, 0x1

    const/4 v2, 0x1

    :cond_1d
    :goto_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/e;->bw:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v5

    if-le v3, v5, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x0

    sget v4, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v4, v2, v3

    const/4 v4, 0x1

    const/4 v2, 0x1

    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/e;->bx:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x1

    sget v4, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v2, 0x1

    :goto_10
    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_1f

    if-lez v11, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v4

    if-le v4, v11, :cond_1f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/constraint/a/a/e;->hx:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v4, 0x0

    sget v5, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    const/4 v2, 0x1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_20

    if-lez v12, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v4

    if-le v4, v12, :cond_20

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/constraint/a/a/e;->hy:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v4, 0x1

    sget v5, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    const/4 v2, 0x1

    :cond_20
    move v5, v2

    move v4, v3

    goto/16 :goto_5

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->bw:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/e;->bx:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/e;->ho:Landroid/support/constraint/a/a/m;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/support/constraint/a/a/m;->b(Landroid/support/constraint/a/a/d;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/e;->hp:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/e;->hr:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->setWidth(I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/e;->hq:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/e;->hs:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->setHeight(I)V

    :goto_11
    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x0

    aput v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v3, 0x1

    aput v13, v2, v3

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    iget-object v2, v2, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/c;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->aW()Landroid/support/constraint/a/a/e;

    move-result-object v2

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/e;->aK()V

    :cond_23
    return-void

    :cond_24
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/constraint/a/a/e;->gC:I

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/constraint/a/a/e;->gD:I

    goto :goto_11

    :cond_25
    move v3, v4

    goto/16 :goto_10

    :cond_26
    move v2, v3

    goto/16 :goto_e

    :cond_27
    move v2, v3

    goto/16 :goto_f
.end method

.method public final aR()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v1

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v0, v3, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    invoke-virtual {v1, v3, v2}, Landroid/support/constraint/a/a/j;->a(Landroid/support/constraint/a/a/j;F)V

    return-void
.end method

.method public final aS()V
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/e;->av()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->av()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget v1, Landroid/support/constraint/a/a/d$a;->hi:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->fY:Landroid/support/constraint/a/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->fY:Landroid/support/constraint/a/a/k;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/k;->p(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/e;->gy:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget v1, Landroid/support/constraint/a/a/d$a;->hi:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->fZ:Landroid/support/constraint/a/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->fZ:Landroid/support/constraint/a/a/k;

    invoke-virtual {v0, p2}, Landroid/support/constraint/a/a/k;->p(I)V

    :cond_1
    return-void
.end method

.method public final i(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/constraint/a/a/n;->i(I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->ib:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->i(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(I)Z
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/e;->bB:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/e;->hn:Landroid/support/constraint/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/e;->reset()V

    iput v1, p0, Landroid/support/constraint/a/a/e;->hp:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->hr:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->hq:I

    iput v1, p0, Landroid/support/constraint/a/a/e;->hs:I

    invoke-super {p0}, Landroid/support/constraint/a/a/n;->reset()V

    return-void
.end method
