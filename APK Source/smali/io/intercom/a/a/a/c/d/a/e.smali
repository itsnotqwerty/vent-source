.class public abstract Lio/intercom/a/a/a/c/d/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/m",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/e;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transform(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final transform(Landroid/content/Context;Lio/intercom/a/a/a/c/b/u;II)Lio/intercom/a/a/a/c/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/high16 v2, -0x80000000

    invoke-static {p3, p4}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot apply transformation on width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v0

    iget-object v1, v0, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {p2}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-ne p3, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    :cond_1
    if-ne p4, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_2
    invoke-virtual {p0, v1, v0, p3, p4}, Lio/intercom/a/a/a/c/d/a/e;->transform(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object p2

    :cond_3
    invoke-static {v2, v1}, Lio/intercom/a/a/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)Lio/intercom/a/a/a/c/d/a/d;

    move-result-object p2

    goto :goto_0
.end method
