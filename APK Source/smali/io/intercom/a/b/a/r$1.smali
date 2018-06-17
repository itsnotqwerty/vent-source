.class final Lio/intercom/a/b/a/r$1;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/r;->Kc()Lio/intercom/a/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic cRy:Lio/intercom/a/b/a/r;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/r;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/r$1;->cRy:Lio/intercom/a/b/a/r;

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 2
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

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/r$1;->cRy:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/r$1;->cRy:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
