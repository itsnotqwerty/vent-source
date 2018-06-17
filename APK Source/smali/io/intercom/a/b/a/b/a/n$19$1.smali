.class final Lio/intercom/a/b/a/b/a/n$19$1;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/a/n$19;->a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cTt:Lio/intercom/a/b/a/r;

.field final synthetic cTu:Lio/intercom/a/b/a/b/a/n$19;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/a/n$19;Lio/intercom/a/b/a/r;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/n$19$1;->cTu:Lio/intercom/a/b/a/b/a/n$19;

    iput-object p2, p0, Lio/intercom/a/b/a/b/a/n$19$1;->cTt:Lio/intercom/a/b/a/r;

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/n$19$1;->cTt:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/n$19$1;->cTt:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
