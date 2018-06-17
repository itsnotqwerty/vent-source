.class final Lio/intercom/a/b/a/e$a;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/b/a/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field cRs:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/e$a;->cRs:Lio/intercom/a/b/a/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/e$a;->cRs:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/e$a;->cRs:Lio/intercom/a/b/a/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/e$a;->cRs:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
