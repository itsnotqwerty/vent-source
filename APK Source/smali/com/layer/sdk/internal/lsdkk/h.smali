.class public Lcom/layer/sdk/internal/lsdkk/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/h$a;
    }
.end annotation


# direct methods
.method public static a([Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x800

    :try_start_0
    new-array v5, v1, [B

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    if-eqz v1, :cond_2

    new-instance v6, Ljava/io/FileInputStream;

    aget-object v1, p0, v0

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v7, 0x800

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/util/zip/ZipEntry;

    aget-object v7, p0, v0

    aget-object v8, p0, v0

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x800

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Lcom/layer/sdk/internal/lsdkk/h$a;)Ljava/lang/Exception;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    invoke-interface {p1, p0}, Lcom/layer/sdk/internal/lsdkk/h$a;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    :cond_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v7

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v3, v7

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x800

    const/4 v5, 0x0

    new-array v4, v3, [B

    move-wide v0, p2

    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    const-wide/16 v6, 0x800

    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reached the end of the InputStream, but expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " more bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    long-to-int v2, v0

    goto :goto_1

    :cond_2
    if-lez v2, :cond_0

    int-to-long v6, v2

    sub-long/2addr v0, v6

    invoke-virtual {p1, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/h;->a(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static b(Ljava/io/File;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/h;->b(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/layer/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
