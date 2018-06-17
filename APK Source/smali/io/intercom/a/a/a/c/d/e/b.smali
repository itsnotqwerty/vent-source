.class public final Lio/intercom/a/a/a/c/d/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/b/a$a;


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cFw:Lio/intercom/a/a/a/c/b/a/b;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/b;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    return-void
.end method


# virtual methods
.method public final B([B)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {v0, p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/e;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final f(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/e;->g(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final fd(I)[B
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    if-nez v0, :cond_0

    new-array v0, p1, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lio/intercom/a/a/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public final fe(I)[I
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    if-nez v0, :cond_0

    new-array v0, p1, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lio/intercom/a/a/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public final h([I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/b;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method
