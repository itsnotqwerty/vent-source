.class final Lokhttp3/t$1;
.super Lokhttp3/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/y$a;)I
    .locals 1

    iget v0, p1, Lokhttp3/y$a;->code:I

    return v0
.end method

.method public final a(Lokhttp3/h;Lokhttp3/a;Lokhttp3/internal/b/g;)Ljava/net/Socket;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lokhttp3/h;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p1, Lokhttp3/h;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/b/c;

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/b/c;->a(Lokhttp3/a;Lokhttp3/aa;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/b/c;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lokhttp3/internal/b/g;->MR()Lokhttp3/internal/b/c;

    move-result-object v3

    if-eq v0, v3, :cond_1

    sget-boolean v1, Lokhttp3/internal/b/g;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p3, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v1, p3, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    if-nez v1, :cond_3

    iget-object v1, p3, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget-object v1, v1, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v5, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    iget-object v1, p3, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget-object v1, v1, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {p3, v5, v4, v4}, Lokhttp3/internal/b/g;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v0, p3, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget-object v0, v0, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lokhttp3/h;Lokhttp3/a;Lokhttp3/internal/b/g;Lokhttp3/aa;)Lokhttp3/internal/b/c;
    .locals 3

    sget-boolean v0, Lokhttp3/h;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p1, Lokhttp3/h;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/b/c;

    invoke-virtual {v0, p2, p4}, Lokhttp3/internal/b/c;->a(Lokhttp3/a;Lokhttp3/aa;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lokhttp3/internal/b/g;->a(Lokhttp3/internal/b/c;Z)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lokhttp3/h;)Lokhttp3/internal/b/d;
    .locals 1

    iget-object v0, p1, Lokhttp3/h;->cYG:Lokhttp3/internal/b/d;

    return-object v0
.end method

.method public final a(Lokhttp3/i;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 5

    iget-object v0, p1, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lokhttp3/g;->ORDER_BY_NAME:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lokhttp3/internal/c;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lokhttp3/internal/c;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lokhttp3/internal/c;->intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lokhttp3/g;->ORDER_BY_NAME:Ljava/util/Comparator;

    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lokhttp3/internal/c;->indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz p3, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lokhttp3/internal/c;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lokhttp3/i$a;

    invoke-direct {v2, p1}, Lokhttp3/i$a;-><init>(Lokhttp3/i;)V

    invoke-virtual {v2, v0}, Lokhttp3/i$a;->g([Ljava/lang/String;)Lokhttp3/i$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/i$a;->h([Ljava/lang/String;)Lokhttp3/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/i$a;->Mc()Lokhttp3/i;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lokhttp3/i;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lokhttp3/i;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final a(Lokhttp3/p$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lokhttp3/p$a;->fr(Ljava/lang/String;)Lokhttp3/p$a;

    return-void
.end method

.method public final a(Lokhttp3/p$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lokhttp3/p$a;->Y(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;

    return-void
.end method

.method public final a(Lokhttp3/a;Lokhttp3/a;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lokhttp3/a;->a(Lokhttp3/a;)Z

    move-result v0

    return v0
.end method

.method public final a(Lokhttp3/h;Lokhttp3/internal/b/c;)Z
    .locals 1

    sget-boolean v0, Lokhttp3/h;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p2, Lokhttp3/internal/b/c;->noNewStreams:Z

    if-nez v0, :cond_1

    iget v0, p1, Lokhttp3/h;->maxIdleConnections:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p1, Lokhttp3/h;->connections:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lokhttp3/h;Lokhttp3/internal/b/c;)V
    .locals 2

    sget-boolean v0, Lokhttp3/h;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p1, Lokhttp3/h;->cleanupRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/h;->cleanupRunning:Z

    sget-object v0, Lokhttp3/h;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Lokhttp3/h;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p1, Lokhttp3/h;->connections:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
