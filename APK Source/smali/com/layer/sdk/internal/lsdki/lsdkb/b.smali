.class public Lcom/layer/sdk/internal/lsdki/lsdkb/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;)V
    .locals 2

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkb/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/layer/sdk/internal/lsdki/lsdkb/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    .locals 2

    const-class v1, Lcom/layer/sdk/internal/lsdki/lsdkb/b;

    monitor-enter v1

    :try_start_0
    invoke-interface {p2, p0, p1, p3}, Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    invoke-interface {p2, p0, p3}, Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
