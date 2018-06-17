.class public Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field private apV:Ljava/io/FileInputStream;

.field private apW:J

.field private apX:J

.field private final file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apX:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    return-void
.end method

.method public mark(I)V
    .locals 4

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apX:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apX:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->alS:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input stream marked at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apX:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    return v0
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apX:J

    :goto_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->alS:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset to mark point "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apX:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->jH()V

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apV:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;->apW:J

    return-wide v0
.end method
