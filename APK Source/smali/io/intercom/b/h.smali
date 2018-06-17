.class public abstract Lio/intercom/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/s;


# instance fields
.field private final delegate:Lio/intercom/b/s;


# direct methods
.method public constructor <init>(Lio/intercom/b/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/b/h;->delegate:Lio/intercom/b/s;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/b/h;->delegate:Lio/intercom/b/s;

    invoke-interface {v0}, Lio/intercom/b/s;->close()V

    return-void
.end method

.method public final delegate()Lio/intercom/b/s;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/h;->delegate:Lio/intercom/b/s;

    return-object v0
.end method

.method public read(Lio/intercom/b/c;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/b/h;->delegate:Lio/intercom/b/s;

    invoke-interface {v0, p1, p2, p3}, Lio/intercom/b/s;->read(Lio/intercom/b/c;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/h;->delegate:Lio/intercom/b/s;

    invoke-interface {v0}, Lio/intercom/b/s;->timeout()Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/b/h;->delegate:Lio/intercom/b/s;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
