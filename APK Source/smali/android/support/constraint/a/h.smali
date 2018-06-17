.class public final Landroid/support/constraint/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/h$a;
    }
.end annotation


# static fields
.field private static eY:I

.field private static eZ:I

.field private static fa:I

.field private static fb:I

.field private static fc:I


# instance fields
.field fd:I

.field public fe:I

.field public ff:F

.field fg:[F

.field fh:I

.field fi:[Landroid/support/constraint/a/b;

.field fj:I

.field public fk:I

.field public id:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/a/h;->eY:I

    sput v0, Landroid/support/constraint/a/h;->eZ:I

    sput v0, Landroid/support/constraint/a/h;->fa:I

    sput v0, Landroid/support/constraint/a/h;->fb:I

    sput v0, Landroid/support/constraint/a/h;->fc:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/constraint/a/h;->id:I

    iput v0, p0, Landroid/support/constraint/a/h;->fd:I

    iput v1, p0, Landroid/support/constraint/a/h;->fe:I

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/a/h;->fg:[F

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    iput v1, p0, Landroid/support/constraint/a/h;->fj:I

    iput v1, p0, Landroid/support/constraint/a/h;->fk:I

    iput p1, p0, Landroid/support/constraint/a/h;->fh:I

    return-void
.end method

.method static at()V
    .locals 1

    sget v0, Landroid/support/constraint/a/h;->eZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/a/h;->eZ:I

    return-void
.end method


# virtual methods
.method public final d(Landroid/support/constraint/a/b;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/a/h;->fj:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/h;->fj:I

    iget-object v1, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    iget-object v1, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/b;

    iput-object v0, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    iget v1, p0, Landroid/support/constraint/a/h;->fj:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/h;->fj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/h;->fj:I

    goto :goto_1
.end method

.method public final e(Landroid/support/constraint/a/b;)V
    .locals 7

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/constraint/a/h;->fj:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_2

    :goto_1
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    add-int v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/h;->fj:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/h;->fj:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final f(Landroid/support/constraint/a/b;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v2, 0x0

    iget v5, p0, Landroid/support/constraint/a/h;->fj:I

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    aget-object v0, v0, v4

    iget-object v6, v0, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    iget-object v0, p0, Landroid/support/constraint/a/h;->fi:[Landroid/support/constraint/a/b;

    aget-object v7, v0, v4

    iget v1, v6, Landroid/support/constraint/a/a;->dQ:I

    move v0, v2

    :goto_1
    if-eq v1, v11, :cond_2

    iget v3, v6, Landroid/support/constraint/a/a;->dI:I

    if-ge v0, v3, :cond_2

    iget-object v3, v6, Landroid/support/constraint/a/a;->dN:[I

    aget v3, v3, v1

    iget-object v8, p1, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    iget v8, v8, Landroid/support/constraint/a/h;->id:I

    if-ne v3, v8, :cond_1

    iget-object v0, v6, Landroid/support/constraint/a/a;->dP:[F

    aget v8, v0, v1

    iget-object v0, p1, Landroid/support/constraint/a/b;->dT:Landroid/support/constraint/a/h;

    invoke-virtual {v6, v0, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;Z)F

    iget-object v0, p1, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    check-cast v0, Landroid/support/constraint/a/a;

    iget v3, v0, Landroid/support/constraint/a/a;->dQ:I

    move v1, v2

    :goto_2
    if-eq v3, v11, :cond_0

    iget v9, v0, Landroid/support/constraint/a/a;->dI:I

    if-ge v1, v9, :cond_0

    iget-object v9, v6, Landroid/support/constraint/a/a;->dK:Landroid/support/constraint/a/c;

    iget-object v9, v9, Landroid/support/constraint/a/c;->ea:[Landroid/support/constraint/a/h;

    iget-object v10, v0, Landroid/support/constraint/a/a;->dN:[I

    aget v10, v10, v3

    aget-object v9, v9, v10

    iget-object v10, v0, Landroid/support/constraint/a/a;->dP:[F

    aget v10, v10, v3

    mul-float/2addr v10, v8

    invoke-virtual {v6, v9, v10, v2}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;FZ)V

    iget-object v9, v0, Landroid/support/constraint/a/a;->dO:[I

    aget v3, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget v0, v7, Landroid/support/constraint/a/b;->dU:F

    iget v1, p1, Landroid/support/constraint/a/b;->dU:F

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    iput v0, v7, Landroid/support/constraint/a/b;->dU:F

    iget v1, v6, Landroid/support/constraint/a/a;->dQ:I

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v3, v6, Landroid/support/constraint/a/a;->dO:[I

    aget v1, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    iput v2, p0, Landroid/support/constraint/a/h;->fj:I

    return-void
.end method

.method public final reset()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/h;->mName:Ljava/lang/String;

    sget v0, Landroid/support/constraint/a/h$a;->fp:I

    iput v0, p0, Landroid/support/constraint/a/h;->fh:I

    iput v1, p0, Landroid/support/constraint/a/h;->fe:I

    iput v2, p0, Landroid/support/constraint/a/h;->id:I

    iput v2, p0, Landroid/support/constraint/a/h;->fd:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/h;->ff:F

    iput v1, p0, Landroid/support/constraint/a/h;->fj:I

    iput v1, p0, Landroid/support/constraint/a/h;->fk:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/h;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
