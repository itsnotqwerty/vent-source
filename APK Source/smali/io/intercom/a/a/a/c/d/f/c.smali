.class public final Lio/intercom/a/a/a/c/d/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/d/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/d/f/d",
        "<",
        "Lio/intercom/a/a/a/c/d/e/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/c;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lio/intercom/a/a/a/c/d/b/b;

    invoke-static {v0}, Lio/intercom/a/a/a/i/a;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/d/b/b;-><init>([B)V

    return-object v1
.end method
