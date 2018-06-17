.class final Lio/intercom/a/a/a/c/d/c/d;
.super Lio/intercom/a/a/a/c/d/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/c/d/c/b",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/c/d/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static n(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/d/c/d;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/c/d/c/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/c/d;->cOs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/c/d;->cOs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/c/d;->cOs:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 0

    return-void
.end method
