.class public final Lio/intercom/a/a/a/c/d/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/l",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cJH:Lio/intercom/a/a/a/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/a/e;",
            "Lio/intercom/a/a/a/c/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/b;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/a/b;->cJH:Lio/intercom/a/a/a/c/l;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/io/File;Lio/intercom/a/a/a/c/j;)Z
    .locals 4

    check-cast p1, Lio/intercom/a/a/a/c/b/u;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/b;->cJH:Lio/intercom/a/a/a/c/l;

    new-instance v2, Lio/intercom/a/a/a/c/d/a/d;

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/a/a/a/c/d/a/b;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-direct {v2, v0, v3}, Lio/intercom/a/a/a/c/d/a/d;-><init>(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)V

    invoke-interface {v1, v2, p2, p3}, Lio/intercom/a/a/a/c/l;->a(Ljava/lang/Object;Ljava/io/File;Lio/intercom/a/a/a/c/j;)Z

    move-result v0

    return v0
.end method

.method public final b(Lio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/b;->cJH:Lio/intercom/a/a/a/c/l;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/l;->b(Lio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c;

    move-result-object v0

    return-object v0
.end method
