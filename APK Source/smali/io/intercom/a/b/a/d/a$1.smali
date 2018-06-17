.class final Lio/intercom/a/b/a/d/a$1;
.super Lio/intercom/a/b/a/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lio/intercom/a/b/a/d/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lio/intercom/a/b/a/b/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/a/b/a/b/a/e;

    sget-object v0, Lio/intercom/a/b/a/d/b;->cTA:Lio/intercom/a/b/a/d/b;

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/b/a/e;->a(Lio/intercom/a/b/a/d/b;)V

    invoke-virtual {p1}, Lio/intercom/a/b/a/b/a/e;->vw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/intercom/a/b/a/b/a/e;->push(Ljava/lang/Object;)V

    new-instance v1, Lio/intercom/a/b/a/n;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/intercom/a/b/a/b/a/e;->push(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lio/intercom/a/b/a/d/a;->bkh:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->vJ()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    iput v0, p1, Lio/intercom/a/b/a/d/a;->bkh:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    iput v0, p1, Lio/intercom/a/b/a/d/a;->bkh:I

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    iput v0, p1, Lio/intercom/a/b/a/d/a;->bkh:I

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->vy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
