.class public Lcom/layer/sdk/internal/lsdke/lsdkb/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdke/lsdkb/a$a;,
        Lcom/layer/sdk/internal/lsdke/lsdkb/a$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/d;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/d;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkb/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/a;

    invoke-virtual {p1, p0}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown migration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkb/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V

    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/database/SQLException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdke/lsdkb/a$b;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/layer/sdk/internal/lsdke/lsdkb/a$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
