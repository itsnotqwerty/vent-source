.class public final Lio/intercom/a/a/a/c/d/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/q;
.implements Lio/intercom/a/a/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/q;",
        "Lio/intercom/a/a/a/c/b/u",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final avo:Landroid/graphics/Bitmap;

.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bitmap must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/d;->avo:Landroid/graphics/Bitmap;

    const-string v0, "BitmapPool must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/e;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/d;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)Lio/intercom/a/a/a/c/d/a/d;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/intercom/a/a/a/c/d/a/d;

    invoke-direct {v0, p0, p1}, Lio/intercom/a/a/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)V

    goto :goto_0
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/d;->avo:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/d;->avo:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->l(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final initialize()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/d;->avo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final recycle()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/d;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/d;->avo:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/b/a/e;->g(Landroid/graphics/Bitmap;)V

    return-void
.end method
