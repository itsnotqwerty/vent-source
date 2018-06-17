.class Landroid/support/c/a/i$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field qD:I

.field protected rv:[Landroid/support/v4/a/b$b;

.field rw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    iget-object v0, p1, Landroid/support/c/a/i$d;->rw:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/c/a/i$d;->rw:Ljava/lang/String;

    iget v0, p1, Landroid/support/c/a/i$d;->qD:I

    iput v0, p0, Landroid/support/c/a/i$d;->qD:I

    iget-object v0, p1, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    invoke-static {v0}, Landroid/support/v4/a/b;->a([Landroid/support/v4/a/b$b;)[Landroid/support/v4/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    invoke-static {v0, p1}, Landroid/support/v4/a/b$b;->a([Landroid/support/v4/a/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public cf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/support/v4/a/b$b;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i$d;->rw:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroid/support/v4/a/b$b;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    invoke-static {v0, p1}, Landroid/support/v4/a/b;->a([Landroid/support/v4/a/b$b;[Landroid/support/v4/a/b$b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v4/a/b;->a([Landroid/support/v4/a/b$b;)[Landroid/support/v4/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/support/c/a/i$d;->rv:[Landroid/support/v4/a/b$b;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, v3, v0

    aget-object v4, p1, v0

    iget-char v4, v4, Landroid/support/v4/a/b$b;->BG:C

    iput-char v4, v2, Landroid/support/v4/a/b$b;->BG:C

    move v2, v1

    :goto_1
    aget-object v4, p1, v0

    iget-object v4, v4, Landroid/support/v4/a/b$b;->BH:[F

    array-length v4, v4

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v0

    iget-object v4, v4, Landroid/support/v4/a/b$b;->BH:[F

    aget-object v5, p1, v0

    iget-object v5, v5, Landroid/support/v4/a/b$b;->BH:[F

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
