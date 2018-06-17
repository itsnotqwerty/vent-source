.class final Lb/n$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/n;->KV()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cUM:Lb/n;


# direct methods
.method constructor <init>(Lb/n;)V
    .locals 0

    iput-object p1, p0, Lb/n$1;->cUM:Lb/n;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    invoke-virtual {v0}, Lb/n;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    iget-boolean v0, v0, Lb/n;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    invoke-virtual {v0}, Lb/n;->flush()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/n$1;->cUM:Lb/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    iget-boolean v0, v0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    iget-object v0, v0, Lb/n;->bKF:Lb/c;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lb/c;->fF(I)Lb/c;

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    invoke-virtual {v0}, Lb/n;->Li()Lb/d;

    return-void
.end method

.method public final write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    iget-boolean v0, v0, Lb/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    iget-object v0, v0, Lb/n;->bKF:Lb/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/c;->e([BII)Lb/c;

    iget-object v0, p0, Lb/n$1;->cUM:Lb/n;

    invoke-virtual {v0}, Lb/n;->Li()Lb/d;

    return-void
.end method
