.class public final Lio/intercom/a/a/a/c/d/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/m",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNZ:Lio/intercom/a/a/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final cOa:Z


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/m;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/m;->cNZ:Lio/intercom/a/a/a/c/m;

    iput-boolean p2, p0, Lio/intercom/a/a/a/c/d/a/m;->cOa:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/intercom/a/a/a/c/d/a/m;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/d/a/m;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/m;->cNZ:Lio/intercom/a/a/a/c/m;

    iget-object v1, p1, Lio/intercom/a/a/a/c/d/a/m;->cNZ:Lio/intercom/a/a/a/c/m;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/m;->cNZ:Lio/intercom/a/a/a/c/m;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public final transform(Landroid/content/Context;Lio/intercom/a/a/a/c/b/u;II)Lio/intercom/a/a/a/c/b/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v0

    iget-object v1, v0, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {p2}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, p3, p4}, Lio/intercom/a/a/a/c/d/a/l;->a(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Lio/intercom/a/a/a/c/b/u;

    move-result-object v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/intercom/a/a/a/c/d/a/m;->cOa:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to convert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to a Bitmap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/m;->cNZ:Lio/intercom/a/a/a/c/m;

    invoke-interface {v0, p1, v1, p3, p4}, Lio/intercom/a/a/a/c/m;->transform(Landroid/content/Context;Lio/intercom/a/a/a/c/b/u;II)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lio/intercom/a/a/a/c/d/a/p;->a(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;

    move-result-object p2

    goto :goto_0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/m;->cNZ:Lio/intercom/a/a/a/c/m;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
