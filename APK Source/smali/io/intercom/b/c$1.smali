.class public final Lio/intercom/b/c$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cTX:Lio/intercom/b/c;


# direct methods
.method public constructor <init>(Lio/intercom/b/c;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/b/c$1;->cTX:Lio/intercom/b/c;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/intercom/b/c$1;->cTX:Lio/intercom/b/c;

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

    iget-object v0, p0, Lio/intercom/b/c$1;->cTX:Lio/intercom/b/c;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    return-void
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Lio/intercom/b/c$1;->cTX:Lio/intercom/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/b/c;->b([BII)Lio/intercom/b/c;

    return-void
.end method
