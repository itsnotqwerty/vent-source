.class final Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkc/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic bqE:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

.field final synthetic bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

.field final synthetic bqw:Ljava/io/File;

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/io/File;JJLcom/layer/sdk/internal/lsdkc/lsdka/a$a;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqw:Ljava/io/File;

    iput-wide p3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->b:J

    iput-wide p5, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->c:J

    iput-object p7, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqE:Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x6

    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/b;->zp()Lb/e;

    move-result-object v0

    invoke-interface {v0}, Lb/e;->h()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    :try_start_1
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/a;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqw:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->b:J

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->c:J

    new-instance v6, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;

    invoke-direct {v6, p0}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3$1;-><init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;)V

    invoke-direct/range {v0 .. v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/a;-><init>(Ljava/io/OutputStream;JJLcom/layer/sdk/internal/lsdki/lsdkc/a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessagePart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v3, v3, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v3, v3, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const v1, 0x8000

    new-array v1, v1, [B

    invoke-static {v8, v0, v1}, Lcom/layer/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x2

    :try_start_5
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessagePart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v3, v3, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resuming download from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$3;->bqF:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iget-object v3, v3, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->bqA:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v8

    :goto_3
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    throw v1

    :catch_0
    move-exception v1

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    goto :goto_3
.end method
