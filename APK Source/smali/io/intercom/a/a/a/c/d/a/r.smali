.class public final Lio/intercom/a/a/a/c/d/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cOg:Lio/intercom/a/a/a/c/d/c/e;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/d/c/e;Lio/intercom/a/a/a/c/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/r;->cOg:Lio/intercom/a/a/a/c/d/c/e;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/a/r;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/r;->cOg:Lio/intercom/a/a/a/c/d/c/e;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/d/c/e;->u(Landroid/net/Uri;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/r;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-static {v1, v0, p2, p3}, Lio/intercom/a/a/a/c/d/a/l;->a(Lio/intercom/a/a/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/net/Uri;

    const-string v0, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
