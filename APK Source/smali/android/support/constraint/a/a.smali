.class public final Landroid/support/constraint/a/a;
.super Ljava/lang/Object;


# instance fields
.field dI:I

.field final dJ:Landroid/support/constraint/a/b;

.field final dK:Landroid/support/constraint/a/c;

.field private dL:I

.field private dM:Landroid/support/constraint/a/h;

.field dN:[I

.field dO:[I

.field dP:[F

.field dQ:I

.field private dR:I

.field private dS:Z


# direct methods
.method constructor <init>(Landroid/support/constraint/a/b;Landroid/support/constraint/a/c;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/constraint/a/a;->dI:I

    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/a/a;->dL:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a;->dM:Landroid/support/constraint/a/h;

    iget v0, p0, Landroid/support/constraint/a/a;->dL:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v0, p0, Landroid/support/constraint/a/a;->dL:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v0, p0, Landroid/support/constraint/a/a;->dL:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    iput v1, p0, Landroid/support/constraint/a/a;->dQ:I

    iput v1, p0, Landroid/support/constraint/a/a;->dR:I

    iput-boolean v2, p0, Landroid/support/constraint/a/a;->dS:Z

    iput-object p1, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    iput-object p2, p0, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    return-void
.end method

.method static a(Landroid/support/constraint/a/h;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/h;->fk:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/h;Z)F
    .locals 7

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Landroid/support/constraint/a/a;->dM:Landroid/support/constraint/a/h;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/a/a;->dM:Landroid/support/constraint/a/h;

    :cond_0
    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    if-ne v1, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v4, p0, Landroid/support/constraint/a/a;->dQ:I

    const/4 v1, 0x0

    move v2, v3

    :goto_1
    if-eq v4, v3, :cond_1

    iget v5, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v4

    iget v6, p1, Landroid/support/constraint/a/h;->id:I

    if-ne v5, v6, :cond_6

    iget v0, p0, Landroid/support/constraint/a/a;->dQ:I

    if-ne v4, v0, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v0, v0, v4

    iput v0, p0, Landroid/support/constraint/a/a;->dQ:I

    :goto_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->e(Landroid/support/constraint/a/b;)V

    :cond_3
    iget v0, p1, Landroid/support/constraint/a/h;->fk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/a/h;->fk:I

    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dI:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    aput v3, v0, v4

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->dS:Z

    if-eqz v0, :cond_4

    iput v4, p0, Landroid/support/constraint/a/a;->dR:I

    :cond_4
    iget-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v0, v0, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    iget-object v1, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v1, v4

    aput v1, v0, v2

    goto :goto_2

    :cond_6
    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    move v4, v5

    goto :goto_1
.end method

.method final a([ZLandroid/support/constraint/a/h;)Landroid/support/constraint/a/h;
    .locals 8

    const/4 v4, 0x0

    iget v3, p0, Landroid/support/constraint/a/a;->dQ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, v4

    move v5, v1

    move v6, v3

    :goto_0
    const/4 v1, -0x1

    if-eq v6, v1, :cond_3

    iget v1, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v5, v1, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v1, v1, v6

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v3, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v3, v3, v6

    aget-object v3, v1, v3

    if-eqz p1, :cond_0

    iget v1, v3, Landroid/support/constraint/a/h;->id:I

    aget-boolean v1, p1, v1

    if-nez v1, :cond_2

    :cond_0
    if-eq v3, p2, :cond_2

    iget v1, v3, Landroid/support/constraint/a/h;->fh:I

    sget v7, Landroid/support/constraint/a/h$a;->fn:I

    if-eq v1, v7, :cond_1

    iget v1, v3, Landroid/support/constraint/a/h;->fh:I

    sget v7, Landroid/support/constraint/a/h$a;->fo:I

    if-ne v1, v7, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v1, v1, v6

    cmpg-float v7, v1, v0

    if-gez v7, :cond_2

    move v0, v1

    move-object v2, v3

    :cond_2
    iget-object v1, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v1, v6

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v3

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final a(Landroid/support/constraint/a/h;F)V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, v7}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a;->dQ:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Landroid/support/constraint/a/a;->dQ:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    iget v2, p1, Landroid/support/constraint/a/h;->id:I

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    aput v4, v0, v1

    iget v0, p1, Landroid/support/constraint/a/h;->fk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->fk:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->d(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dI:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->dS:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v7, p0, Landroid/support/constraint/a/a;->dS:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    move v2, v3

    move v0, v4

    :goto_1
    if-eq v1, v4, :cond_5

    iget v5, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->id:I

    if-ne v5, v6, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    aput p2, v0, v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->id:I

    if-ge v5, v6, :cond_4

    move v0, v1

    :cond_4
    iget-object v5, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/support/constraint/a/a;->dR:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Landroid/support/constraint/a/a;->dS:Z

    if-eqz v2, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v2, p0, Landroid/support/constraint/a/a;->dR:I

    aget v1, v1, v2

    if-ne v1, v4, :cond_b

    iget v1, p0, Landroid/support/constraint/a/a;->dR:I

    :cond_6
    :goto_2
    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v2, v2

    if-lt v1, v2, :cond_7

    iget v2, p0, Landroid/support/constraint/a/a;->dI:I

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7

    move v2, v3

    :goto_3
    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v5, v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_c

    move v1, v2

    :cond_7
    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v2, v2

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    iget v2, p0, Landroid/support/constraint/a/a;->dL:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/constraint/a/a;->dL:I

    iput-boolean v3, p0, Landroid/support/constraint/a/a;->dS:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/support/constraint/a/a;->dR:I

    iget-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    iget v3, p0, Landroid/support/constraint/a/a;->dL:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v3, p0, Landroid/support/constraint/a/a;->dL:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v3, p0, Landroid/support/constraint/a/a;->dL:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    :cond_8
    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v3, p1, Landroid/support/constraint/a/h;->id:I

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    aput p2, v2, v1

    if-eq v0, v4, :cond_d

    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    iget-object v3, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v3, v0

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    aput v1, v2, v0

    :goto_4
    iget v0, p1, Landroid/support/constraint/a/h;->fk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->fk:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->d(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dI:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->dS:Z

    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    :cond_9
    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    iput-boolean v7, p0, Landroid/support/constraint/a/a;->dS:Z

    :cond_a
    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v7, p0, Landroid/support/constraint/a/a;->dS:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v2, p0, Landroid/support/constraint/a/a;->dQ:I

    aput v2, v0, v1

    iput v1, p0, Landroid/support/constraint/a/a;->dQ:I

    goto :goto_4
.end method

.method final a(Landroid/support/constraint/a/h;FZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    cmpl-float v0, p2, v7

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a;->dQ:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Landroid/support/constraint/a/a;->dQ:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    iget v2, p1, Landroid/support/constraint/a/h;->id:I

    aput v2, v0, v1

    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    aput v4, v0, v1

    iget v0, p1, Landroid/support/constraint/a/h;->fk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->fk:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->d(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dI:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->dS:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v8, p0, Landroid/support/constraint/a/a;->dS:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    move v2, v3

    move v0, v4

    :goto_1
    if-eq v1, v4, :cond_8

    iget v5, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v2, v5, :cond_8

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->id:I

    if-ne v5, v6, :cond_6

    iget-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/a/a;->dQ:I

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/constraint/a/a;->dQ:I

    :goto_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->e(Landroid/support/constraint/a/b;)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/constraint/a/a;->dS:Z

    if-eqz v0, :cond_4

    iput v1, p0, Landroid/support/constraint/a/a;->dR:I

    :cond_4
    iget v0, p1, Landroid/support/constraint/a/h;->fk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/support/constraint/a/h;->fk:I

    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dI:I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    iget-object v3, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v3, v1

    aput v3, v2, v0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v1

    iget v6, p1, Landroid/support/constraint/a/h;->id:I

    if-ge v5, v6, :cond_7

    move v0, v1

    :cond_7
    iget-object v5, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget v1, p0, Landroid/support/constraint/a/a;->dR:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Landroid/support/constraint/a/a;->dS:Z

    if-eqz v2, :cond_9

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v2, p0, Landroid/support/constraint/a/a;->dR:I

    aget v1, v1, v2

    if-ne v1, v4, :cond_d

    iget v1, p0, Landroid/support/constraint/a/a;->dR:I

    :cond_9
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v2, v2

    if-lt v1, v2, :cond_a

    iget v2, p0, Landroid/support/constraint/a/a;->dI:I

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v5, v5

    if-ge v2, v5, :cond_a

    move v2, v3

    :goto_4
    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v5, v5

    if-ge v2, v5, :cond_a

    iget-object v5, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_e

    move v1, v2

    :cond_a
    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v2, v2

    if-lt v1, v2, :cond_b

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    iget v2, p0, Landroid/support/constraint/a/a;->dL:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/constraint/a/a;->dL:I

    iput-boolean v3, p0, Landroid/support/constraint/a/a;->dS:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/support/constraint/a/a;->dR:I

    iget-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    iget v3, p0, Landroid/support/constraint/a/a;->dL:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v3, p0, Landroid/support/constraint/a/a;->dL:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v3, p0, Landroid/support/constraint/a/a;->dL:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    :cond_b
    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    iget v3, p1, Landroid/support/constraint/a/h;->id:I

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->dP:[F

    aput p2, v2, v1

    if-eq v0, v4, :cond_f

    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    iget-object v3, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v3, v0

    aput v3, v2, v1

    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    aput v1, v2, v0

    :goto_5
    iget v0, p1, Landroid/support/constraint/a/h;->fk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/support/constraint/a/h;->fk:I

    iget-object v0, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/h;->d(Landroid/support/constraint/a/b;)V

    iget v0, p0, Landroid/support/constraint/a/a;->dI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dI:I

    iget-boolean v0, p0, Landroid/support/constraint/a/a;->dS:Z

    if-nez v0, :cond_c

    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    :cond_c
    iget v0, p0, Landroid/support/constraint/a/a;->dR:I

    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-boolean v8, p0, Landroid/support/constraint/a/a;->dS:Z

    iget-object v0, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a;->dR:I

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Landroid/support/constraint/a/a;->dN:[I

    array-length v1, v1

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Landroid/support/constraint/a/a;->dO:[I

    iget v2, p0, Landroid/support/constraint/a/a;->dQ:I

    aput v2, v0, v1

    iput v1, p0, Landroid/support/constraint/a/a;->dQ:I

    goto :goto_5
.end method

.method public final b(Landroid/support/constraint/a/h;)F
    .locals 4

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v2, v2, v1

    iget v3, p1, Landroid/support/constraint/a/h;->id:I

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v0, v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final clear()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v2, p0, Landroid/support/constraint/a/a;->dQ:I

    move v0, v1

    :goto_0
    if-eq v2, v5, :cond_1

    iget v3, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v4, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {v3, v4}, Landroid/support/constraint/a/h;->e(Landroid/support/constraint/a/b;)V

    :cond_0
    iget-object v3, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v2, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Landroid/support/constraint/a/a;->dQ:I

    iput v5, p0, Landroid/support/constraint/a/a;->dR:I

    iput-boolean v1, p0, Landroid/support/constraint/a/a;->dS:Z

    iput v1, p0, Landroid/support/constraint/a/a;->dI:I

    return-void
.end method

.method final e(I)Landroid/support/constraint/a/h;
    .locals 3

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v2, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v2, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v1, v2, v1

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final f(I)F
    .locals 3

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v2, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v2, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v0, v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v2, ""

    iget v1, p0, Landroid/support/constraint/a/a;->dQ:I

    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a;->dP:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v4, p0, Landroid/support/constraint/a/a;->dN:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
