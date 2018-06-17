.class public final Lcom/vent/ae;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ae$f;,
        Lcom/vent/ae$d;,
        Lcom/vent/ae$e;,
        Lcom/vent/ae$b;,
        Lcom/vent/ae$c;,
        Lcom/vent/ae$a;
    }
.end annotation


# static fields
.field private static cdA:I

.field static cdc:Ljava/io/File;

.field static cdd:Ljava/io/File;

.field static final cde:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/ae$c;",
            ">;"
        }
    .end annotation
.end field

.field private static cdf:Lcom/vent/ae$d;

.field static cdg:Landroid/os/Handler;

.field static cdh:Ljava/util/concurrent/CountDownLatch;

.field static cdi:Landroid/os/Handler;

.field static volatile cdj:I

.field static cdk:I

.field static cdl:I

.field static cdm:I

.field private static cdn:Landroid/database/sqlite/SQLiteDatabase;

.field private static cdo:I

.field private static cdp:I

.field static cdq:Landroid/database/sqlite/SQLiteStatement;

.field private static cdr:Z

.field private static cds:Ljava/util/Random;

.field static volatile cdt:I

.field static volatile cdu:I

.field static volatile cdv:I

.field static volatile cdw:I

.field static volatile cdx:I

.field static volatile cdy:I

.field static volatile cdz:I

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    const/16 v0, 0x1d4c

    sput v0, Lcom/vent/ae;->cdA:I

    return-void
.end method

.method public static Dc()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ae;->cdr:Z

    return-void
.end method

.method static Dd()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/vent/ae;->eA(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/c;->h(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static De()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/vent/ae;->eA(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Lcom/vent/ae;->eA(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static Df()V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget v0, Lcom/vent/ae;->cdj:I

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "imagecache"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v12, v0

    sget v0, Lcom/vent/ae;->cdA:I

    if-le v12, v0, :cond_0

    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "imagecache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fileid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time asc"

    const-string v8, "20"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/support/v4/g/b;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/support/v4/g/b;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {v1}, Lcom/vent/d/c;->i(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Landroid/support/v4/g/b;

    const/16 v0, 0xf

    invoke-direct {v3, v0}, Landroid/support/v4/g/b;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/vent/ae;->cde:Ljava/util/Map;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v10

    move v2, v9

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$c;

    iget v13, v0, Lcom/vent/ae$c;->cdF:I

    if-ne v13, v6, :cond_b

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dk()Z

    move-result v13

    if-nez v13, :cond_4

    if-nez v1, :cond_a

    move v2, v10

    :cond_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    sub-int v0, v12, v0

    sget v1, Lcom/vent/ae;->cdA:I

    add-int/lit8 v1, v1, -0xf

    if-le v0, v1, :cond_5

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, v0, Lcom/vent/ae$c;->cdL:Z

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v9

    :goto_4
    move v1, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$c;

    invoke-virtual {v0}, Lcom/vent/ae$c;->destroy()V

    goto :goto_5

    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v11

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "fileid in ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    if-eqz v1, :cond_9

    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "imagecache"

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    sget v0, Lcom/vent/ae;->cdx:I

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/vent/ae;->cdx:I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {v3}, Ljava/util/Set;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_a
    move v0, v1

    move v2, v10

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_4
.end method

.method static Dg()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v1, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    :cond_0
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sput-object v1, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static Dh()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/vent/ae;->cdc:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/vent/ae$b;->Dj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    :try_start_2
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select avg(fileid) from imagecache order by fileid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select avg(time) from imagecache order by time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select max(length(imageurl)) from imagecache order by imageurl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    invoke-static {}, Lcom/vent/ae;->De()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILcom/vent/ae$a;)I
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/vent/ae;->aG(Landroid/content/Context;)V

    if-nez p2, :cond_0

    sget p2, Lcom/vent/ae;->cdo:I

    :cond_0
    if-nez p3, :cond_1

    sget p3, Lcom/vent/ae;->cdp:I

    :cond_1
    invoke-static {p1, p2, p3, v1}, Lcom/vent/ae$c;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vent/ae;->cde:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dl()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p4}, Lcom/vent/ae$c;->a(Lcom/vent/ae$a;)V

    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {p4, v0}, Lcom/vent/ae$a;->e(Lcom/vent/ae$c;)V

    invoke-interface {p4}, Lcom/vent/ae$a;->Di()V

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIZLcom/vent/ae$a;)I
    .locals 6

    const/16 v1, 0xc8

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/vent/ae;->aG(Landroid/content/Context;)V

    if-nez p2, :cond_0

    sget p2, Lcom/vent/ae;->cdo:I

    :cond_0
    if-nez p3, :cond_1

    sget p3, Lcom/vent/ae;->cdp:I

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/vent/ae$c;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/vent/ae;->cde:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$c;

    if-eqz v0, :cond_2

    iget-boolean v5, v0, Lcom/vent/ae$c;->cdL:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lcom/vent/ae$c;->cdK:Z

    if-nez v5, :cond_3

    invoke-virtual {v0, p5}, Lcom/vent/ae$c;->a(Lcom/vent/ae$a;)V

    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {p5, v0}, Lcom/vent/ae$a;->e(Lcom/vent/ae$c;)V

    iget-boolean v0, v0, Lcom/vent/ae$c;->cdJ:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/vent/ae;->cdt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ae;->cdt:I

    invoke-interface {p5}, Lcom/vent/ae$a;->Di()V

    move v0, v2

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/vent/ae$c;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/vent/ae$c;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {v4, p5}, Lcom/vent/ae$c;->a(Lcom/vent/ae$a;)V

    invoke-interface {p5, v4}, Lcom/vent/ae$a;->e(Lcom/vent/ae$c;)V

    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    iget-object v5, v4, Lcom/vent/ae$c;->cdE:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Lcom/vent/ae$a;->Di()V

    move v0, v2

    goto :goto_1

    :cond_6
    if-nez p4, :cond_8

    iget v0, v4, Lcom/vent/ae$c;->cdB:I

    if-eqz v0, :cond_9

    iget v0, v4, Lcom/vent/ae$c;->cdB:I

    :goto_2
    iget v2, v4, Lcom/vent/ae$c;->cdC:I

    if-eqz v2, :cond_7

    iget v1, v4, Lcom/vent/ae$c;->cdC:I

    :cond_7
    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, v4, Lcom/vent/ae$c;->cdH:I

    sget v0, Lcom/vent/ae;->cdj:I

    iget v1, v4, Lcom/vent/ae$c;->cdH:I

    add-int/2addr v0, v1

    sput v0, Lcom/vent/ae;->cdj:I

    :cond_8
    if-eqz p1, :cond_b

    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/vent/ae$c;->filename:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    if-eqz p4, :cond_a

    iput-boolean v3, v4, Lcom/vent/ae$c;->cdJ:Z

    invoke-virtual {v4}, Lcom/vent/ae$c;->Dm()V

    :goto_4
    move v0, v3

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    goto :goto_3

    :cond_a
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4

    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method static a(Lcom/vent/ae$c;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "imagecache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "fileid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "time"

    aput-object v4, v2, v3

    const-string v3, "imageurl=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/vent/ae$c;->cdF:I

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/vent/ae$c;->time:I

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/vent/ae$c;->cdF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iput v9, p0, Lcom/vent/ae$c;->time:I

    :try_start_1
    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget v2, p0, Lcom/vent/ae$c;->time:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    sget-object v0, Lcom/vent/ae;->cdq:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vent/ae$c;->cdF:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget v0, p0, Lcom/vent/ae$c;->cdF:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vent/ae$c;->cdF:I

    invoke-static {v0}, Lcom/vent/ae;->eB(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method static a(ZLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static aG(Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x15

    const-wide/32 v8, 0x6400000

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vent/ae;->started:Z

    if-nez v0, :cond_e

    sput-boolean v4, Lcom/vent/ae;->started:Z

    sput-object v1, Lcom/vent/ae;->cdf:Lcom/vent/ae$d;

    sput-object v1, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    sput-object v1, Lcom/vent/ae;->cdi:Landroid/os/Handler;

    sput v2, Lcom/vent/ae;->cdl:I

    sput v2, Lcom/vent/ae;->cdj:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    long-to-int v0, v6

    div-int/lit8 v0, v0, 0xc

    const/high16 v3, 0x1000000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v3, 0x100000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/vent/ae;->cdk:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/vent/ae;->cds:Ljava/util/Random;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/vent/ae;->cdo:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/vent/ae;->cdp:I

    sget-boolean v0, Lcom/vent/ae;->cdr:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    sput-boolean v2, Lcom/vent/ae;->cdr:Z

    :cond_0
    sget-boolean v0, Lcom/vent/ae;->cdr:Z

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v1, "bmpcache failed getExternalDir"

    invoke-static {v1}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    const/16 v1, 0x9c4

    sput v1, Lcom/vent/ae;->cdA:I

    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v5, "bmpcache"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/vent/ae;->cdc:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/vent/ae;->cdc:Ljava/io/File;

    const-string v6, "bmpcache.db"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/vent/ae;->cdd:Ljava/io/File;

    sget-object v1, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v3, :cond_b

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "bmpcache"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    new-instance v1, Ljava/io/File;

    const-string v3, "bmpcache.db"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v2}, Lcom/vent/ae;->eA(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, "bmpcache.db"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/vent/ae;->cdd:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v1, Ljava/io/File;

    const-string v3, "bmpcache"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lcom/vent/ae;->De()V

    if-eqz v3, :cond_d

    array-length v5, v3

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_d

    aget-object v0, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0xa

    invoke-static {v2, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/vent/ae;->eB(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v0, "bmpcache failed make cachedir on sdcard"

    invoke-static {v0}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    move-object v0, v1

    move v3, v2

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Lcom/vent/d/c;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v1

    move v3, v2

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-gez v3, :cond_9

    move-object v0, v1

    move v3, v2

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_b
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "bmpcache"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    :goto_5
    :try_start_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "bmpcache"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    sget-object v0, Lcom/vent/ae;->cdf:Lcom/vent/ae$d;

    if-nez v0, :cond_e

    new-instance v0, Lcom/vent/ae$e;

    invoke-direct {v0}, Lcom/vent/ae$e;-><init>()V

    sput-object v0, Lcom/vent/ae;->cdi:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/vent/ae;->cdh:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/vent/ae$d;

    invoke-direct {v0}, Lcom/vent/ae$d;-><init>()V

    sput-object v0, Lcom/vent/ae;->cdf:Lcom/vent/ae$d;

    invoke-virtual {v0}, Lcom/vent/ae$d;->start()V

    :try_start_6
    sget-object v0, Lcom/vent/ae;->cdh:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    sget-object v0, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_f
    move-object v0, v1

    move v3, v2

    goto/16 :goto_0
.end method

.method static b(Lcom/vent/ae$c;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget v3, Lcom/vent/ae;->cdv:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vent/ae;->cdv:I

    new-instance v6, Ljava/io/File;

    iget-object v3, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lokhttp3/w$a;

    invoke-direct {v3}, Lokhttp3/w$a;-><init>()V

    const-string v4, "GET"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lokhttp3/w$a;->a(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;

    move-result-object v3

    new-instance v4, Lokhttp3/d$a;

    invoke-direct {v4}, Lokhttp3/d$a;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lokhttp3/d$a;->noStore:Z

    invoke-virtual {v4}, Lokhttp3/d$a;->LZ()Lokhttp3/d;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "Cache-Control"

    invoke-virtual {v3, v4}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v3

    :goto_1
    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v3, v4, v5}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v3

    iget-object v4, p0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lokhttp3/w$a;->fy(Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v3

    sget-object v4, Lcom/vent/az;->cgQ:Lokhttp3/t;

    invoke-virtual {v3}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lokhttp3/v;->a(Lokhttp3/t;Lokhttp3/w;Z)Lokhttp3/v;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/e;->Ma()Lokhttp3/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    iget-object v7, v3, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-nez v7, :cond_5

    move-object v5, v0

    :goto_2
    iget v4, v3, Lokhttp3/y;->code:I

    const/16 v8, 0xc8

    if-lt v4, v8, :cond_6

    iget v4, v3, Lokhttp3/y;->code:I

    const/16 v8, 0x12c

    if-ge v4, v8, :cond_6

    move v4, v2

    :goto_3
    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    iget-object v4, v5, Lokhttp3/s;->type:Ljava/lang/String;

    const-string v8, "image"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v5, Lokhttp3/s;->type:Ljava/lang/String;

    const-string v8, "application"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v5, Lokhttp3/s;->subtype:Ljava/lang/String;

    const-string v5, "octet-stream"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v7, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    sget v4, Lcom/vent/ae;->cdy:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/vent/ae;->cdy:I

    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v7}, Lokhttp3/z;->LY()Ld/e;

    move-result-object v0

    invoke-interface {v0}, Ld/e;->Ks()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/vent/d/c;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_8

    move v5, v2

    move-object v0, v4

    :goto_5
    if-eqz v5, :cond_3

    move v1, v2

    :cond_3
    move-object v2, v3

    :goto_6
    invoke-static {v0}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    sget v0, Lcom/vent/ae;->cdy:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ae;->cdy:I

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v5, "Cache-Control"

    invoke-virtual {v3, v5, v4}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    :try_start_4
    invoke-virtual {v7}, Lokhttp3/z;->LX()Lokhttp3/s;

    move-result-object v4

    move-object v5, v4

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v4, v0

    :goto_7
    move-object v0, v4

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v2, v0

    move-object v4, v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :cond_8
    move v5, v1

    move-object v0, v4

    goto :goto_5

    :cond_9
    move v5, v1

    goto :goto_5
.end method

.method static bc(Z)V
    .locals 6

    const/16 v1, 0x64

    if-eqz p0, :cond_4

    sget v0, Lcom/vent/ae;->cdk:I

    div-int/lit8 v0, v0, 0xa

    move v2, v0

    :goto_0
    if-eqz p0, :cond_5

    const/16 v0, 0xa

    :goto_1
    sget v3, Lcom/vent/ae;->cdj:I

    if-gt v3, v2, :cond_0

    sget-object v3, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    :cond_0
    sget v1, Lcom/vent/ae;->cdj:I

    mul-int/lit8 v1, v2, 0x5a

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v0, v0, 0x5a

    div-int/lit8 v2, v0, 0x64

    sget-object v3, Lcom/vent/ae;->cde:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$c;

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dk()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/vent/ae$c;->cdL:Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/vent/ae$c;->destroy()V

    sget v0, Lcom/vent/ae;->cdj:I

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_2
    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/vent/ae;->cdj:I

    :cond_3
    return-void

    :cond_4
    sget v0, Lcom/vent/ae;->cdk:I

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static c(Lcom/vent/ae$c;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/vent/ae;->cdw:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ae;->cdw:I

    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v0, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/vent/ae$c;->cdB:I

    iget v2, p0, Lcom/vent/ae$c;->cdC:I

    new-instance v0, Landroid/support/d/a;

    iget-object v3, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/support/d/a;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    invoke-virtual {v0, v3}, Landroid/support/d/a;->s(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v2

    move v3, v1

    :goto_1
    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v2

    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v6

    if-gt v1, v3, :cond_1

    if-le v2, v0, :cond_3

    :cond_1
    iget v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v10, v6

    iget v11, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v11, v6

    if-le v10, v3, :cond_2

    if-gt v11, v0, :cond_8

    :cond_2
    mul-int/2addr v0, v3

    mul-int v3, v10, v11

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/2addr v1, v2

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_3

    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    if-nez v4, :cond_4

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eq v0, v8, :cond_5

    :cond_4
    packed-switch v4, :pswitch_data_1

    :cond_5
    :goto_2
    :pswitch_1
    iget-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, v9, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_6
    iget-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_7
    move v0, v8

    goto/16 :goto_0

    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v0, v1

    move v3, v2

    goto :goto_1

    :pswitch_3
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v0, v2

    move v3, v1

    goto :goto_1

    :pswitch_4
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v0, v1

    move v3, v2

    goto :goto_1

    :cond_8
    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    move v0, v7

    goto/16 :goto_0

    :pswitch_5
    :try_start_1
    iget-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method static d(Lcom/vent/ae$c;)V
    .locals 7

    const v4, 0xa8c0

    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/vent/ae$c;->time:I

    add-int/2addr v1, v4

    sget-object v2, Lcom/vent/ae;->cds:Ljava/util/Random;

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    sget-object v1, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/vent/ae$c;->time:I

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "time"

    sget-object v3, Lcom/vent/ae;->cds:Ljava/util/Random;

    const v4, 0x15180

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/vent/ae;->cdn:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "imagecache"

    const-string v3, "fileid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/vent/ae$c;->cdF:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static dW(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/vent/ae;->started:Z

    if-eqz v0, :cond_2

    sget-object v1, Lcom/vent/ae;->cde:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    sget v0, Lcom/vent/ae;->cdj:I

    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$c;

    iget-object v3, v0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/vent/ae$c;->Dk()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/vent/ae$c;->cdL:Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/vent/ae$c;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method

.method public static done()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/vent/ae;->cdf:Lcom/vent/ae$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :try_start_0
    sget-object v0, Lcom/vent/ae;->cdf:Lcom/vent/ae$d;

    invoke-virtual {v0}, Lcom/vent/ae$d;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sput-object v2, Lcom/vent/ae;->cdf:Lcom/vent/ae$d;

    sput-object v2, Lcom/vent/ae;->cdg:Landroid/os/Handler;

    sput-object v2, Lcom/vent/ae;->cdi:Landroid/os/Handler;

    sput-boolean v3, Lcom/vent/ae;->started:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static eA(I)Ljava/io/File;
    .locals 5

    rem-int/lit8 v0, p0, 0x64

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vent/ae;->cdc:Ljava/io/File;

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static eB(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v1, p0, 0x64

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vent/ae;->cdc:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
