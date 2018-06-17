.class public final Lio/intercom/a/a/a/c/d/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/m",
        "<",
        "Lio/intercom/a/a/a/c/d/e/c;",
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


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/m;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/intercom/a/a/a/c/d/e/f;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/d/e/f;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

    iget-object v1, p1, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

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

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

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
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;II)",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    invoke-static {p1}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v1

    iget-object v1, v1, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/c;->Jj()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lio/intercom/a/a/a/c/d/a/d;

    invoke-direct {v3, v2, v1}, Lio/intercom/a/a/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

    invoke-interface {v1, p1, v3, p3, p4}, Lio/intercom/a/a/a/c/m;->transform(Landroid/content/Context;Lio/intercom/a/a/a/c/b/u;II)Lio/intercom/a/a/a/c/b/u;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    :cond_0
    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    invoke-virtual {v0, v2, v1}, Lio/intercom/a/a/a/c/d/e/g;->a(Lio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/f;->cNZ:Lio/intercom/a/a/a/c/m;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/m;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
