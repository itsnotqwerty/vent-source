.class public final Landroid/support/constraint/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/e$a;
    }
.end annotation


# static fields
.field private static eb:I

.field public static eq:Landroid/support/constraint/a/f;


# instance fields
.field public final dK:Landroid/support/constraint/a/c;

.field ec:I

.field private ed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public ee:Landroid/support/constraint/a/e$a;

.field private ef:I

.field private eg:I

.field public eh:[Landroid/support/constraint/a/b;

.field public ei:Z

.field private ej:[Z

.field ek:I

.field public el:I

.field private em:I

.field private en:[Landroid/support/constraint/a/h;

.field private eo:I

.field private ep:[Landroid/support/constraint/a/b;

.field private final er:Landroid/support/constraint/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Landroid/support/constraint/a/e;->eb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/constraint/a/e;->ec:I

    iput-object v2, p0, Landroid/support/constraint/a/e;->ed:Ljava/util/HashMap;

    const/16 v0, 0x20

    iput v0, p0, Landroid/support/constraint/a/e;->ef:I

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    iput v0, p0, Landroid/support/constraint/a/e;->eg:I

    iput-object v2, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iput-boolean v1, p0, Landroid/support/constraint/a/e;->ei:Z

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/a/e;->ej:[Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/e;->ek:I

    iput v1, p0, Landroid/support/constraint/a/e;->el:I

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    iput v0, p0, Landroid/support/constraint/a/e;->em:I

    sget v0, Landroid/support/constraint/a/e;->eb:I

    new-array v0, v0, [Landroid/support/constraint/a/h;

    iput-object v0, p0, Landroid/support/constraint/a/e;->en:[Landroid/support/constraint/a/h;

    iput v1, p0, Landroid/support/constraint/a/e;->eo:I

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    new-array v0, v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/e;->ep:[Landroid/support/constraint/a/b;

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    new-array v0, v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    invoke-direct {p0}, Landroid/support/constraint/a/e;->ao()V

    new-instance v0, Landroid/support/constraint/a/c;

    invoke-direct {v0}, Landroid/support/constraint/a/c;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    new-instance v0, Landroid/support/constraint/a/d;

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/d;-><init>(Landroid/support/constraint/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/e;->ee:Landroid/support/constraint/a/e$a;

    new-instance v0, Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/b;-><init>(Landroid/support/constraint/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/e;->er:Landroid/support/constraint/a/e$a;

    return-void
.end method

.method public static a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;FZ)Landroid/support/constraint/a/b;
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    :cond_0
    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, p1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p4

    invoke-virtual {v1, p2, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p3, p4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    return-object v0
.end method

.method private final a(Landroid/support/constraint/a/b;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, -0x1

    iget v0, p0, Landroid/support/constraint/a/e;->el:I

    if-lez v0, :cond_3

    iget-object v4, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget-object v5, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iget v1, v4, Landroid/support/constraint/a/a;->dQ:I

    move v0, v2

    :goto_0
    if-eq v1, v10, :cond_2

    iget v3, v4, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v3, :cond_2

    iget-object v3, v4, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v6, v4, Landroid/support/constraint/a/a;->dN:[I

    aget v6, v6, v1

    aget-object v3, v3, v6

    iget v6, v3, Landroid/support/constraint/a/h;->fd:I

    if-eq v6, v10, :cond_1

    iget-object v0, v4, Landroid/support/constraint/a/a;->dP:[F

    aget v6, v0, v1

    invoke-virtual {v4, v3, v11}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    iget v0, v3, Landroid/support/constraint/a/h;->fd:I

    aget-object v7, v5, v0

    iget-boolean v0, v7, Landroid/support/constraint/a/b;->dX:Z

    if-nez v0, :cond_0

    iget-object v0, v7, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    check-cast v0, Landroid/support/constraint/a/a;

    iget v3, v0, Landroid/support/constraint/a/a;->dQ:I

    move v1, v2

    :goto_1
    if-eq v3, v10, :cond_0

    iget v8, v0, Landroid/support/constraint/a/a;->dI:I

    if-ge v1, v8, :cond_0

    iget-object v8, v4, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v8, v8, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v9, v0, Landroid/support/constraint/a/a;->dN:[I

    aget v9, v9, v3

    aget-object v8, v8, v9

    iget-object v9, v0, Landroid/support/constraint/a/a;->dP:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-virtual {v4, v8, v9, v11}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;FZ)V

    iget-object v8, v0, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/support/constraint/a/b;->dU:F

    iget v1, v7, Landroid/support/constraint/a/b;->dU:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    iput v0, p1, Landroid/support/constraint/a/b;->dU:F

    iget-object v0, v7, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/h;->e(Landroid/support/constraint/a/b;)V

    iget v1, v4, Landroid/support/constraint/a/a;->dQ:I

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, v4, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v0, v0, Landroid/support/constraint/a/a;->dI:I

    if-nez v0, :cond_3

    iput-boolean v11, p1, Landroid/support/constraint/a/b;->dX:Z

    :cond_3
    return-void
.end method

.method public static am()Landroid/support/constraint/a/f;
    .locals 1

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    return-object v0
.end method

.method private an()V
    .locals 6

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/constraint/a/e;->ef:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/e;->ef:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->ef:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/h;

    iput-object v0, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/a/e;->ej:[Z

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    iput v0, p0, Landroid/support/constraint/a/e;->eg:I

    iget v0, p0, Landroid/support/constraint/a/e;->ef:I

    iput v0, p0, Landroid/support/constraint/a/e;->em:I

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->ev:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->ev:J

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->eH:J

    iget v1, p0, Landroid/support/constraint/a/e;->ef:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eH:J

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->eH:J

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eV:J

    :cond_0
    return-void
.end method

.method private ao()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->dY:Landroid/support/constraint/a/g$a;

    invoke-interface {v2, v1}, Landroid/support/constraint/a/g$a;->j(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final c(Landroid/support/constraint/a/e$a;)I
    .locals 12

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->ez:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->ez:J

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/constraint/a/e;->ek:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Landroid/support/constraint/a/e;->ej:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_c

    iget-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v0, v0, v1

    iget-object v2, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/a/h;->fd:I

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v8, v2, Landroid/support/constraint/a/f;->eB:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/support/constraint/a/f;->eB:J

    :cond_2
    invoke-virtual {v0, v7}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    iget-object v2, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iput v1, v2, Landroid/support/constraint/a/h;->fd:I

    iget-object v1, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/h;->f(Landroid/support/constraint/a/b;)V

    move v0, v4

    :goto_1
    if-nez v5, :cond_4

    sget-object v1, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->eA:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/support/constraint/a/f;->eA:J

    :cond_3
    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Landroid/support/constraint/a/e;->ek:I

    mul-int/lit8 v0, v0, 0x2

    if-lt v4, v0, :cond_5

    move v0, v4

    :cond_4
    :goto_2
    return v0

    :cond_5
    invoke-interface {p1}, Landroid/support/constraint/a/e$a;->al()Landroid/support/constraint/a/h;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/e;->ej:[Z

    invoke-interface {p1}, Landroid/support/constraint/a/e$a;->al()Landroid/support/constraint/a/h;

    move-result-object v1

    iget v1, v1, Landroid/support/constraint/a/h;->id:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_6
    iget-object v0, p0, Landroid/support/constraint/a/e;->ej:[Z

    invoke-interface {p1, v0}, Landroid/support/constraint/a/e$a;->a([Z)Landroid/support/constraint/a/h;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v0, p0, Landroid/support/constraint/a/e;->ej:[Z

    iget v1, v7, Landroid/support/constraint/a/h;->id:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/constraint/a/e;->ej:[Z

    iget v1, v7, Landroid/support/constraint/a/h;->id:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_8
    if-eqz v7, :cond_d

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_3
    iget v3, p0, Landroid/support/constraint/a/e;->el:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v8, v3, v0

    iget-object v3, v8, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v3, v3, Landroid/support/constraint/a/h;->fh:I

    sget v6, Landroid/support/constraint/a/h$a;->fl:I

    if-eq v3, v6, :cond_9

    iget-boolean v3, v8, Landroid/support/constraint/a/b;->dX:Z

    if-nez v3, :cond_9

    iget-object v9, v8, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v3, v9, Landroid/support/constraint/a/a;->dQ:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_b

    iget v6, v9, Landroid/support/constraint/a/a;->dQ:I

    const/4 v3, 0x0

    :goto_4
    const/4 v10, -0x1

    if-eq v6, v10, :cond_b

    iget v10, v9, Landroid/support/constraint/a/a;->dI:I

    if-ge v3, v10, :cond_b

    iget-object v10, v9, Landroid/support/constraint/a/a;->dN:[I

    aget v10, v10, v6

    iget v11, v7, Landroid/support/constraint/a/h;->id:I

    if-ne v10, v11, :cond_a

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_9

    iget-object v3, v8, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v3, v7}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_9

    iget v6, v8, Landroid/support/constraint/a/b;->dU:F

    neg-float v6, v6

    div-float v3, v6, v3

    cmpg-float v6, v3, v2

    if-gez v6, :cond_9

    move v1, v0

    move v2, v3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v10, v9, Landroid/support/constraint/a/a;->dO:[I

    aget v6, v10, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    const/4 v1, 0x1

    move v0, v4

    move v5, v1

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x1

    move v0, v4

    move v5, v1

    goto/16 :goto_1

    :cond_e
    move v0, v4

    move v5, v1

    goto/16 :goto_1
.end method

.method private final c(Landroid/support/constraint/a/b;)V
    .locals 3

    iget-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/e;->el:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->dY:Landroid/support/constraint/a/g$a;

    iget-object v1, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iget v2, p0, Landroid/support/constraint/a/e;->el:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/support/constraint/a/g$a;->j(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/e;->el:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v1, p0, Landroid/support/constraint/a/e;->el:I

    iput v1, v0, Landroid/support/constraint/a/h;->fd:I

    iget v0, p0, Landroid/support/constraint/a/e;->el:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/e;->el:I

    iget-object v0, p1, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/h;->f(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method private h(I)Landroid/support/constraint/a/h;
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->dZ:Landroid/support/constraint/a/g$a;

    invoke-interface {v0}, Landroid/support/constraint/a/g$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/h;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/constraint/a/h;

    invoke-direct {v0, p1}, Landroid/support/constraint/a/h;-><init>(I)V

    iput p1, v0, Landroid/support/constraint/a/h;->fh:I

    move-object v1, v0

    :goto_0
    iget v0, p0, Landroid/support/constraint/a/e;->eo:I

    sget v2, Landroid/support/constraint/a/e;->eb:I

    if-lt v0, v2, :cond_0

    sget v0, Landroid/support/constraint/a/e;->eb:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Landroid/support/constraint/a/e;->eb:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->en:[Landroid/support/constraint/a/h;

    sget v2, Landroid/support/constraint/a/e;->eb:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/h;

    iput-object v0, p0, Landroid/support/constraint/a/e;->en:[Landroid/support/constraint/a/h;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/e;->en:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->eo:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/support/constraint/a/e;->eo:I

    aput-object v1, v0, v2

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/support/constraint/a/h;->reset()V

    iput p1, v0, Landroid/support/constraint/a/h;->fh:I

    move-object v1, v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/Object;)I
    .locals 2

    check-cast p0, Landroid/support/constraint/a/a/c;

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/support/constraint/a/h;->ff:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/constraint/a/b;II)V
    .locals 3

    invoke-virtual {p0, p3}, Landroid/support/constraint/a/e;->g(I)Landroid/support/constraint/a/h;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    int-to-float v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    return-void
.end method

.method public final a(Landroid/support/constraint/a/h;I)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/support/constraint/a/h;->fd:I

    iget v1, p1, Landroid/support/constraint/a/h;->fd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroid/support/constraint/a/b;->dX:Z

    if-eqz v1, :cond_0

    int-to-float v1, p2

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v1, v1, Landroid/support/constraint/a/a;->dI:I

    if-nez v1, :cond_1

    iput-boolean v3, v0, Landroid/support/constraint/a/b;->dX:Z

    int-to-float v1, p2

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    if-gez p2, :cond_2

    mul-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_2
    int-to-float v1, p2

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, p1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    iput-object p1, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    int-to-float v1, p2

    iput v1, p1, Landroid/support/constraint/a/h;->ff:F

    int-to-float v1, p2

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    iput-boolean v3, v0, Landroid/support/constraint/a/b;->dX:Z

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V
    .locals 5

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    if-ne p2, p5, :cond_2

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p1, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p6, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v1, p2, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    :cond_0
    :goto_0
    const/4 v1, 0x6

    if-eq p8, v1, :cond_1

    invoke-virtual {v0, p0, p8}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    return-void

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p1, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p2, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p5, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p6, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    if-gtz p3, :cond_3

    if-lez p7, :cond_0

    :cond_3
    neg-int v1, p3

    add-int/2addr v1, p7

    int-to-float v1, v1

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_5

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p1, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p2, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    int-to-float v1, p3

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    goto :goto_0

    :cond_5
    cmpl-float v1, p4, v3

    if-ltz v1, :cond_6

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p5, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, p6, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    int-to-float v1, p7

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    goto :goto_0

    :cond_6
    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    sub-float v2, v3, p4

    mul-float/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    sub-float v2, v3, p4

    mul-float/2addr v2, v4

    invoke-virtual {v1, p2, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    mul-float v2, v4, p4

    invoke-virtual {v1, p5, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    mul-float v2, v3, p4

    invoke-virtual {v1, p6, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    if-gtz p3, :cond_7

    if-lez p7, :cond_0

    :cond_7
    neg-int v1, p3

    int-to-float v1, v1

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    int-to-float v2, p7

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    goto :goto_0
.end method

.method public final a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->aq()Landroid/support/constraint/a/h;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/a/h;->fe:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    const/4 v2, 0x6

    if-eq p4, v2, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public final ap()Landroid/support/constraint/a/b;
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->dY:Landroid/support/constraint/a/g$a;

    invoke-interface {v0}, Landroid/support/constraint/a/g$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    invoke-direct {v0, v1}, Landroid/support/constraint/a/b;-><init>(Landroid/support/constraint/a/c;)V

    :goto_0
    invoke-static {}, Landroid/support/constraint/a/h;->at()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget-object v1, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1}, Landroid/support/constraint/a/a;->clear()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/constraint/a/b;->dU:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/a/b;->dX:Z

    goto :goto_0
.end method

.method public final aq()Landroid/support/constraint/a/h;
    .locals 6

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->eF:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eF:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/e;->eg:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/a/e;->an()V

    :cond_1
    sget v0, Landroid/support/constraint/a/h$a;->fn:I

    invoke-direct {p0, v0}, Landroid/support/constraint/a/e;->h(I)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/e;->ec:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->ec:I

    iget v1, p0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->ek:I

    iget v1, p0, Landroid/support/constraint/a/e;->ec:I

    iput v1, v0, Landroid/support/constraint/a/h;->id:I

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->ec:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public final ar()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/a/e;->el:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v1, v1, Landroid/support/constraint/a/b;->dU:F

    iput v1, v2, Landroid/support/constraint/a/h;->ff:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/support/constraint/a/b;)V
    .locals 17

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->ex:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->ex:J

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/support/constraint/a/b;->dX:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->ey:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->ey:J

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/e;->el:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/e;->em:I

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/e;->eg:I

    if-lt v2, v3, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/a/e;->an()V

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/support/constraint/a/b;->dX:Z

    if-nez v2, :cond_1c

    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/constraint/a/b;->dU:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v2, v2, Landroid/support/constraint/a/a;->dI:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/constraint/a/b;->dU:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/constraint/a/b;->dU:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Landroid/support/constraint/a/b;->dU:F

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v3, v4, Landroid/support/constraint/a/a;->dQ:I

    const/4 v2, 0x0

    :goto_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    iget v5, v4, Landroid/support/constraint/a/a;->dI:I

    if-ge v2, v5, :cond_6

    iget-object v5, v4, Landroid/support/constraint/a/a;->dP:[F

    aget v6, v5, v3

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v6, v7

    aput v6, v5, v3

    iget-object v5, v4, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v8, v14, Landroid/support/constraint/a/a;->dQ:I

    const/4 v5, 0x0

    move v12, v5

    move v13, v8

    :goto_3
    const/4 v5, -0x1

    if-eq v13, v5, :cond_f

    iget v5, v14, Landroid/support/constraint/a/a;->dI:I

    if-ge v12, v5, :cond_f

    iget-object v5, v14, Landroid/support/constraint/a/a;->dP:[F

    aget v5, v5, v13

    iget-object v8, v14, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v8, v8, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v15, v14, Landroid/support/constraint/a/a;->dN:[I

    aget v15, v15, v13

    aget-object v8, v8, v15

    const/4 v15, 0x0

    cmpg-float v15, v5, v15

    if-gez v15, :cond_9

    const v15, -0x457ced91    # -0.001f

    cmpl-float v15, v5, v15

    if-lez v15, :cond_7

    iget-object v5, v14, Landroid/support/constraint/a/a;->dP:[F

    const/4 v15, 0x0

    aput v15, v5, v13

    const/4 v5, 0x0

    iget-object v15, v14, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {v8, v15}, Landroid/support/constraint/a/h;->e(Landroid/support/constraint/a/b;)V

    :cond_7
    :goto_4
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_8

    iget v15, v8, Landroid/support/constraint/a/h;->fh:I

    sget v16, Landroid/support/constraint/a/h$a;->fl:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    if-nez v7, :cond_a

    invoke-static {v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;)Z

    move-result v3

    move v6, v5

    move-object v7, v8

    :cond_8
    :goto_5
    iget-object v5, v14, Landroid/support/constraint/a/a;->dO:[I

    aget v8, v5, v13

    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move v13, v8

    goto :goto_3

    :cond_9
    const v15, 0x3a83126f    # 0.001f

    cmpg-float v15, v5, v15

    if-gez v15, :cond_7

    iget-object v5, v14, Landroid/support/constraint/a/a;->dP:[F

    const/4 v15, 0x0

    aput v15, v5, v13

    const/4 v5, 0x0

    iget-object v15, v14, Landroid/support/constraint/a/a;->dJ:Landroid/support/constraint/a/b;

    invoke-virtual {v8, v15}, Landroid/support/constraint/a/h;->e(Landroid/support/constraint/a/b;)V

    goto :goto_4

    :cond_a
    cmpl-float v15, v6, v5

    if-lez v15, :cond_b

    invoke-static {v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;)Z

    move-result v3

    move v6, v5

    move-object v7, v8

    goto :goto_5

    :cond_b
    if-nez v3, :cond_8

    invoke-static {v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v3, 0x1

    move v6, v5

    move-object v7, v8

    goto :goto_5

    :cond_c
    if-nez v7, :cond_8

    const/4 v15, 0x0

    cmpg-float v15, v5, v15

    if-gez v15, :cond_8

    if-nez v9, :cond_d

    invoke-static {v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;)Z

    move-result v2

    move v4, v5

    move-object v9, v8

    goto :goto_5

    :cond_d
    cmpl-float v15, v4, v5

    if-lez v15, :cond_e

    invoke-static {v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;)Z

    move-result v2

    move v4, v5

    move-object v9, v8

    goto :goto_5

    :cond_e
    if-nez v2, :cond_8

    invoke-static {v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v2, 0x1

    move v4, v5

    move-object v9, v8

    goto :goto_5

    :cond_f
    if-eqz v7, :cond_18

    :goto_6
    if-nez v7, :cond_19

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget v3, v3, Landroid/support/constraint/a/a;->dI:I

    if-nez v3, :cond_10

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/support/constraint/a/b;->dX:Z

    :cond_10
    if-eqz v2, :cond_1b

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v2, :cond_11

    sget-object v2, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v2, Landroid/support/constraint/a/f;->eG:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->eG:J

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/e;->eg:I

    if-lt v2, v3, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/a/e;->an()V

    :cond_12
    sget v2, Landroid/support/constraint/a/h$a;->fn:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/constraint/a/e;->h(I)Landroid/support/constraint/a/h;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/e;->ec:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/a/e;->ec:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/constraint/a/e;->ek:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/e;->ec:I

    iput v2, v3, Landroid/support/constraint/a/h;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/e;->ec:I

    aput-object v3, v2, v4

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/e;->er:Landroid/support/constraint/a/e$a;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/support/constraint/a/e$a;->a(Landroid/support/constraint/a/e$a;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/e;->er:Landroid/support/constraint/a/e$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/e$a;)I

    iget v4, v3, Landroid/support/constraint/a/h;->fd:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    if-ne v4, v3, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/support/constraint/a/a;->a([ZLandroid/support/constraint/a/h;)Landroid/support/constraint/a/h;

    move-result-object v3

    if-eqz v3, :cond_14

    sget-object v4, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v4, :cond_13

    sget-object v4, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v6, v4, Landroid/support/constraint/a/f;->eB:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/support/constraint/a/f;->eB:J

    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    :cond_14
    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/support/constraint/a/b;->dX:Z

    if-nez v3, :cond_15

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/constraint/a/h;->f(Landroid/support/constraint/a/b;)V

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/e;->el:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/constraint/a/e;->el:I

    :cond_16
    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v3, v3, Landroid/support/constraint/a/h;->fh:I

    sget v4, Landroid/support/constraint/a/h$a;->fl:I

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p1

    iget v3, v0, Landroid/support/constraint/a/b;->dU:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1a

    :cond_17
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_0

    :goto_a
    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_18
    move-object v7, v9

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    move v2, v10

    goto/16 :goto_7

    :cond_1a
    const/4 v3, 0x0

    goto :goto_9

    :cond_1b
    move v2, v11

    goto :goto_8

    :cond_1c
    move v2, v11

    goto :goto_a
.end method

.method public final b(Landroid/support/constraint/a/e$a;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->eL:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eL:J

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->eM:J

    iget v1, p0, Landroid/support/constraint/a/e;->ek:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eM:J

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    sget-object v1, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v1, Landroid/support/constraint/a/f;->eN:J

    iget v1, p0, Landroid/support/constraint/a/e;->el:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eN:J

    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/support/constraint/a/b;

    invoke-direct {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/support/constraint/a/e;->el:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v2, v2, Landroid/support/constraint/a/h;->fh:I

    sget v3, Landroid/support/constraint/a/h$a;->fl:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/constraint/a/b;->dU:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-nez v11, :cond_b

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->eC:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eC:J

    :cond_1
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_3
    iget v5, p0, Landroid/support/constraint/a/e;->el:I

    if-ge v0, v5, :cond_8

    iget-object v5, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v12, v5, v0

    iget-object v5, v12, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v5, v5, Landroid/support/constraint/a/h;->fh:I

    sget v6, Landroid/support/constraint/a/h$a;->fl:I

    if-eq v5, v6, :cond_7

    iget-boolean v5, v12, Landroid/support/constraint/a/b;->dX:Z

    if-nez v5, :cond_7

    iget v5, v12, Landroid/support/constraint/a/b;->dU:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    const/4 v5, 0x1

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    :goto_4
    iget v1, p0, Landroid/support/constraint/a/e;->ek:I

    if-ge v5, v1, :cond_6

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    aget-object v13, v1, v5

    iget-object v1, v12, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v1, v13}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v14

    const/4 v1, 0x0

    cmpg-float v1, v14, v1

    if-lez v1, :cond_d

    const/4 v10, 0x0

    move v1, v6

    move v3, v7

    move v4, v8

    :goto_5
    const/4 v2, 0x7

    if-ge v10, v2, :cond_5

    iget-object v2, v13, Landroid/support/constraint/a/h;->fg:[F

    aget v2, v2, v10

    div-float v6, v2, v14

    cmpg-float v2, v6, v9

    if-gez v2, :cond_2

    if-eq v10, v4, :cond_3

    :cond_2
    if-le v10, v4, :cond_c

    :cond_3
    move v1, v5

    move v2, v0

    move v4, v10

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move v3, v2

    move v9, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v2, v1

    :goto_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    goto :goto_4

    :cond_6
    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    if-eq v2, v0, :cond_a

    iget-object v0, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v0, v0, v2

    iget-object v3, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/a/h;->fd:I

    sget-object v3, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v3, :cond_9

    sget-object v3, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v4, v3, Landroid/support/constraint/a/f;->eB:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/support/constraint/a/f;->eB:J

    :cond_9
    iget-object v3, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/b;->c(Landroid/support/constraint/a/h;)V

    iget-object v1, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iput v2, v1, Landroid/support/constraint/a/h;->fd:I

    iget-object v1, v0, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/h;->f(Landroid/support/constraint/a/b;)V

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x1

    move v11, v0

    goto/16 :goto_2

    :cond_b
    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/e$a;)I

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ar()V

    return-void

    :cond_c
    move v2, v3

    move v6, v9

    goto :goto_6

    :cond_d
    move v2, v6

    move v3, v7

    move v4, v8

    goto :goto_7

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method public final b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->aq()Landroid/support/constraint/a/h;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/a/h;->fe:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;I)Landroid/support/constraint/a/b;

    const/4 v2, 0x6

    if-eq p4, v2, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a;->b(Landroid/support/constraint/a/h;)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public final c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-gez p3, :cond_0

    mul-int/lit8 p3, p3, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float v2, p3

    iput v2, v1, Landroid/support/constraint/a/b;->dU:F

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, v1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    :goto_0
    const/4 v0, 0x6

    if-eq p4, v0, :cond_2

    invoke-virtual {v1, p0, p4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/e;I)Landroid/support/constraint/a/b;

    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    return-object v1

    :cond_3
    iget-object v0, v1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p1, v4}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v0, v1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    invoke-virtual {v0, p2, v3}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    goto :goto_0
.end method

.method public final c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    return-void
.end method

.method public final g(I)Landroid/support/constraint/a/h;
    .locals 6

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/constraint/a/e;->eq:Landroid/support/constraint/a/f;

    iget-wide v2, v0, Landroid/support/constraint/a/f;->eE:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/constraint/a/f;->eE:J

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/e;->eg:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/support/constraint/a/e;->an()V

    :cond_1
    sget v0, Landroid/support/constraint/a/h$a;->fo:I

    invoke-direct {p0, v0}, Landroid/support/constraint/a/e;->h(I)Landroid/support/constraint/a/h;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/e;->ec:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->ec:I

    iget v1, p0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->ek:I

    iget v1, p0, Landroid/support/constraint/a/e;->ec:I

    iput v1, v0, Landroid/support/constraint/a/h;->id:I

    iput p1, v0, Landroid/support/constraint/a/h;->fe:I

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->ec:I

    aput-object v0, v1, v2

    iget-object v1, p0, Landroid/support/constraint/a/e;->ee:Landroid/support/constraint/a/e$a;

    invoke-interface {v1, v0}, Landroid/support/constraint/a/e$a;->d(Landroid/support/constraint/a/h;)V

    return-object v0
.end method

.method public final h(Ljava/lang/Object;)Landroid/support/constraint/a/h;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/support/constraint/a/e;->eg:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Landroid/support/constraint/a/e;->an()V

    :cond_2
    instance-of v1, p1, Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    check-cast p1, Landroid/support/constraint/a/a/c;

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :cond_3
    iget v1, v0, Landroid/support/constraint/a/h;->id:I

    if-eq v1, v3, :cond_4

    iget v1, v0, Landroid/support/constraint/a/h;->id:I

    iget v2, p0, Landroid/support/constraint/a/e;->ec:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget v2, v0, Landroid/support/constraint/a/h;->id:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    :cond_4
    iget v1, v0, Landroid/support/constraint/a/h;->id:I

    if-eq v1, v3, :cond_5

    invoke-virtual {v0}, Landroid/support/constraint/a/h;->reset()V

    :cond_5
    iget v1, p0, Landroid/support/constraint/a/e;->ec:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->ec:I

    iget v1, p0, Landroid/support/constraint/a/e;->ek:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/e;->ek:I

    iget v1, p0, Landroid/support/constraint/a/e;->ec:I

    iput v1, v0, Landroid/support/constraint/a/h;->id:I

    sget v1, Landroid/support/constraint/a/h$a;->fl:I

    iput v1, v0, Landroid/support/constraint/a/h;->fh:I

    iget-object v1, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v1, v1, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget v2, p0, Landroid/support/constraint/a/e;->ec:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public final reset()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v2, v2, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/constraint/a/h;->reset()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->dZ:Landroid/support/constraint/a/g$a;

    iget-object v2, p0, Landroid/support/constraint/a/e;->en:[Landroid/support/constraint/a/h;

    iget v3, p0, Landroid/support/constraint/a/e;->eo:I

    invoke-interface {v0, v2, v3}, Landroid/support/constraint/a/g$a;->a([Ljava/lang/Object;I)V

    iput v1, p0, Landroid/support/constraint/a/e;->eo:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->dK:Landroid/support/constraint/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/constraint/a/e;->ed:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/e;->ed:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v1, p0, Landroid/support/constraint/a/e;->ec:I

    iget-object v0, p0, Landroid/support/constraint/a/e;->ee:Landroid/support/constraint/a/e$a;

    invoke-interface {v0}, Landroid/support/constraint/a/e$a;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/e;->ek:I

    move v0, v1

    :goto_1
    iget v2, p0, Landroid/support/constraint/a/e;->el:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/e;->eh:[Landroid/support/constraint/a/b;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Landroid/support/constraint/a/b;->dV:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/constraint/a/e;->ao()V

    iput v1, p0, Landroid/support/constraint/a/e;->el:I

    return-void
.end method
