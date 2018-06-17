.class public final Lokhttp3/internal/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/c/b$a;
    }
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/c/b;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/r$a;)Lokhttp3/y;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v10, 0x0

    check-cast p1, Lokhttp3/internal/c/g;

    iget-object v3, p1, Lokhttp3/internal/c/g;->dal:Lokhttp3/internal/c/c;

    iget-object v4, p1, Lokhttp3/internal/c/g;->dak:Lokhttp3/internal/b/g;

    iget-object v0, p1, Lokhttp3/internal/c/g;->dai:Lokhttp3/internal/b/c;

    check-cast v0, Lokhttp3/internal/b/c;

    iget-object v5, p1, Lokhttp3/internal/c/g;->cZt:Lokhttp3/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lokhttp3/n;->Mp()V

    invoke-interface {v3, v5}, Lokhttp3/internal/c/c;->d(Lokhttp3/w;)V

    invoke-static {}, Lokhttp3/n;->Mq()V

    iget-object v1, v5, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/internal/c/f;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v5, Lokhttp3/w;->cZp:Lokhttp3/x;

    if-eqz v1, :cond_a

    const-string v1, "100-continue"

    const-string v8, "Expect"

    invoke-virtual {v5, v8}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Lokhttp3/internal/c/c;->flushRequest()V

    invoke-static {}, Lokhttp3/n;->Mt()V

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Lokhttp3/internal/c/c;->bz(Z)Lokhttp3/y$a;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_5

    invoke-static {}, Lokhttp3/n;->Mr()V

    iget-object v0, v5, Lokhttp3/w;->cZp:Lokhttp3/x;

    invoke-virtual {v0}, Lokhttp3/x;->contentLength()J

    move-result-wide v8

    new-instance v0, Lokhttp3/internal/c/b$a;

    invoke-interface {v3, v5, v8, v9}, Lokhttp3/internal/c/c;->a(Lokhttp3/w;J)Ld/r;

    move-result-object v8

    invoke-direct {v0, v8}, Lokhttp3/internal/c/b$a;-><init>(Ld/r;)V

    invoke-static {v0}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object v0

    iget-object v8, v5, Lokhttp3/w;->cZp:Lokhttp3/x;

    invoke-virtual {v8, v0}, Lokhttp3/x;->a(Ld/d;)V

    invoke-interface {v0}, Ld/d;->close()V

    invoke-static {}, Lokhttp3/n;->Ms()V

    move-object v0, v1

    :goto_1
    invoke-interface {v3}, Lokhttp3/internal/c/c;->finishRequest()V

    if-nez v0, :cond_0

    invoke-static {}, Lokhttp3/n;->Mt()V

    invoke-interface {v3, v10}, Lokhttp3/internal/c/c;->bz(Z)Lokhttp3/y$a;

    move-result-object v0

    :cond_0
    iput-object v5, v0, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    invoke-virtual {v4}, Lokhttp3/internal/b/g;->MR()Lokhttp3/internal/b/c;

    move-result-object v1

    iget-object v1, v1, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    iput-object v1, v0, Lokhttp3/y$a;->cWs:Lokhttp3/o;

    iput-wide v6, v0, Lokhttp3/y$a;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lokhttp3/y$a;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v1

    iget v0, v1, Lokhttp3/y;->code:I

    const/16 v8, 0x64

    if-ne v0, v8, :cond_1

    invoke-interface {v3, v10}, Lokhttp3/internal/c/c;->bz(Z)Lokhttp3/y$a;

    move-result-object v0

    iput-object v5, v0, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    invoke-virtual {v4}, Lokhttp3/internal/b/g;->MR()Lokhttp3/internal/b/c;

    move-result-object v1

    iget-object v1, v1, Lokhttp3/internal/b/c;->cWs:Lokhttp3/o;

    iput-object v1, v0, Lokhttp3/y$a;->cWs:Lokhttp3/o;

    iput-wide v6, v0, Lokhttp3/y$a;->sentRequestAtMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lokhttp3/y$a;->receivedResponseAtMillis:J

    invoke-virtual {v0}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v1

    iget v0, v1, Lokhttp3/y;->code:I

    :cond_1
    invoke-static {}, Lokhttp3/n;->Mu()V

    iget-boolean v5, p0, Lokhttp3/internal/c/b;->forWebSocket:Z

    if-eqz v5, :cond_7

    const/16 v5, 0x65

    if-ne v0, v5, :cond_7

    invoke-virtual {v1}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v1

    sget-object v3, Lokhttp3/internal/c;->cZH:Lokhttp3/z;

    iput-object v3, v1, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v1

    :goto_2
    const-string v3, "close"

    iget-object v5, v1, Lokhttp3/y;->cZt:Lokhttp3/w;

    const-string v6, "Connection"

    invoke-virtual {v5, v6}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "close"

    const-string v5, "Connection"

    invoke-virtual {v1, v5, v2}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v4}, Lokhttp3/internal/b/g;->noNewStreams()V

    :cond_3
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_4

    const/16 v2, 0xcd

    if-ne v0, v2, :cond_8

    :cond_4
    iget-object v2, v1, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v2}, Lokhttp3/z;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v1}, Lokhttp3/z;->contentLength()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v0}, Lokhttp3/internal/b/c;->isMultiplexed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lokhttp3/internal/b/g;->noNewStreams()V

    :cond_6
    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v5

    invoke-interface {v3, v1}, Lokhttp3/internal/c/c;->e(Lokhttp3/y;)Lokhttp3/z;

    move-result-object v1

    iput-object v1, v5, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    invoke-virtual {v5}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v1

    goto :goto_2

    :cond_8
    return-object v1

    :cond_9
    move-object v1, v2

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto/16 :goto_1
.end method
