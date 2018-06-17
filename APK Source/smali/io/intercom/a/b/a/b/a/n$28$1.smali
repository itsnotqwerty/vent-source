.class final Lio/intercom/a/b/a/b/a/n$28$1;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/a/n$28;->a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic bjS:Ljava/lang/Class;

.field final synthetic cTv:Lio/intercom/a/b/a/b/a/n$28;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/a/n$28;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/n$28$1;->cTv:Lio/intercom/a/b/a/b/a/n$28;

    iput-object p2, p0, Lio/intercom/a/b/a/b/a/n$28$1;->bjS:Ljava/lang/Class;

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/a;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/n$28$1;->cTv:Lio/intercom/a/b/a/b/a/n$28;

    iget-object v0, v0, Lio/intercom/a/b/a/b/a/n$28;->cSi:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/n$28$1;->bjS:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lio/intercom/a/b/a/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/b/a/b/a/n$28$1;->bjS:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/c;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/n$28$1;->cTv:Lio/intercom/a/b/a/b/a/n$28;

    iget-object v0, v0, Lio/intercom/a/b/a/b/a/n$28;->cSi:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
