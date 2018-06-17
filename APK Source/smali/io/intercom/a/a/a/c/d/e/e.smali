.class public final Lio/intercom/a/a/a/c/d/e/e;
.super Lio/intercom/a/a/a/c/d/c/b;

# interfaces
.implements Lio/intercom/a/a/a/c/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/c/d/c/b",
        "<",
        "Lio/intercom/a/a/a/c/d/e/c;",
        ">;",
        "Lio/intercom/a/a/a/c/b/q;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/d/e/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/c/d/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/intercom/a/a/a/c/d/e/c;

    return-object v0
.end method

.method public final getSize()I
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/e;->cOs:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v1}, Lio/intercom/a/a/a/b/a;->HL()I

    move-result v1

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jo()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jo()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jo()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lio/intercom/a/a/a/i/i;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final initialize()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/e;->cOs:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/c;->Jj()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final recycle()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/e;->cOs:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/c;->stop()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/e;->cOs:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    iput-boolean v4, v0, Lio/intercom/a/a/a/c/d/e/c;->cKL:Z

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jq()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->requestManager:Lio/intercom/a/a/a/j;

    iget-object v2, v0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    iput-object v3, v0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    :cond_0
    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cON:Lio/intercom/a/a/a/c/d/e/g$a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->requestManager:Lio/intercom/a/a/a/j;

    iget-object v2, v0, Lio/intercom/a/a/a/c/d/e/g;->cON:Lio/intercom/a/a/a/c/d/e/g$a;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    iput-object v3, v0, Lio/intercom/a/a/a/c/d/e/g;->cON:Lio/intercom/a/a/a/c/d/e/g$a;

    :cond_1
    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->requestManager:Lio/intercom/a/a/a/j;

    iget-object v2, v0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    iput-object v3, v0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    :cond_2
    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v1}, Lio/intercom/a/a/a/b/a;->clear()V

    iput-boolean v4, v0, Lio/intercom/a/a/a/c/d/e/g;->cOM:Z

    return-void
.end method
