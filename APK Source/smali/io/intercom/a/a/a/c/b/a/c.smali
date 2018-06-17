.class final Lio/intercom/a/a/a/c/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/a/c$a;,
        Lio/intercom/a/a/a/c/b/a/c$b;
    }
.end annotation


# instance fields
.field private final cLg:Lio/intercom/a/a/a/c/b/a/c$b;

.field private final cLh:Lio/intercom/a/a/a/c/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/a/h",
            "<",
            "Lio/intercom/a/a/a/c/b/a/c$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/a/c$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/c$b;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/c;->cLg:Lio/intercom/a/a/a/c/b/a/c$b;

    new-instance v0, Lio/intercom/a/a/a/c/b/a/h;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/h;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/c;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    return-void
.end method

.method static c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final Ix()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/c;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/a/h;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/c;->cLg:Lio/intercom/a/a/a/c/b/a/c$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/a/a/a/c/b/a/c$b;->d(IILandroid/graphics/Bitmap$Config;)Lio/intercom/a/a/a/c/b/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/c;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v1, v0, p1}, Lio/intercom/a/a/a/c/b/a/h;->a(Lio/intercom/a/a/a/c/b/a/m;Ljava/lang/Object;)V

    return-void
.end method

.method public final get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/c;->cLg:Lio/intercom/a/a/a/c/b/a/c$b;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/c$b;->d(IILandroid/graphics/Bitmap$Config;)Lio/intercom/a/a/a/c/b/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/c;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/c/b/a/h;->b(Lio/intercom/a/a/a/c/b/a/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final h(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/c/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {p1}, Lio/intercom/a/a/a/i/i;->l(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributeStrategy:\n  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/c;->cLh:Lio/intercom/a/a/a/c/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
