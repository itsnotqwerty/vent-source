.class public Lcom/amazonaws/regions/RegionUtils;
.super Ljava/lang/Object;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;

.field private static aoV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public static T(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 3

    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->jP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/regions/Region;

    iget-object v2, v0, Lcom/amazonaws/regions/Region;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized init()V
    .locals 5

    const-class v1, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "com.amazonaws.regions.RegionUtils.fileOverride"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "com.amazonaws.regions.RegionUtils.fileOverride"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->alS:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using local override of the regions file ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to initiate regions data..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Lcom/amazonaws/regions/RegionMetadataParser;

    invoke-direct {v2}, Lcom/amazonaws/regions/RegionMetadataParser;-><init>()V

    invoke-static {v0}, Lcom/amazonaws/regions/RegionMetadataParser;->e(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->aoV:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->aoV:Ljava/util/List;

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->alS:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->alS:Lorg/apache/commons/logging/Log;

    const-string v2, "Initializing the regions with default regions"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/amazonaws/regions/RegionDefaults;->jP()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->aoV:Ljava/util/List;

    :cond_3
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->aoV:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize the regions."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->alS:Lorg/apache/commons/logging/Log;

    const-string v3, "Failed to parse regional endpoints"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t find regions override file specified"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized jP()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->aoV:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->init()V

    :cond_0
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->aoV:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
