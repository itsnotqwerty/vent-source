.class public final Lio/intercom/a/a/a/c/d/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Lio/intercom/a/a/a/b/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/h;->cFr:Lio/intercom/a/a/a/c/b/a/e;

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

    check-cast p1, Lio/intercom/a/a/a/b/a;

    invoke-interface {p1}, Lio/intercom/a/a/a/b/a;->HM()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/h;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)Lio/intercom/a/a/a/c/d/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
