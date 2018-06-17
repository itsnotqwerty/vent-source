.class public Lio/intercom/android/sdk/persistence/JsonStorage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;,
        Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;
    }
.end annotation


# static fields
.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;


# instance fields
.field private final gson:Lio/intercom/a/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/persistence/JsonStorage;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/persistence/JsonStorage;->gson:Lio/intercom/a/b/a/e;

    return-void
.end method


# virtual methods
.method public getDirectoryFileCount(Ljava/io/File;)I
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public loadFilesInDirectory(Ljava/io/File;Ljava/lang/Class;Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;->NONE:Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/intercom/android/sdk/persistence/JsonStorage;->loadFilesInDirectory(Ljava/io/File;Ljava/lang/Class;Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;)V

    return-void
.end method

.method public loadFilesInDirectory(Ljava/io/File;Ljava/lang/Class;Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v4, v3

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lio/intercom/android/sdk/persistence/JsonStorage;->gson:Lio/intercom/a/b/a/e;

    invoke-virtual {v1, v0, p2}, Lio/intercom/a/b/a/e;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    :try_start_2
    invoke-interface {p4, v7, v1}, Lio/intercom/android/sdk/persistence/JsonStorage$LoadFailureHandler;->onLoadFailed(Ljava/io/File;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_4
    invoke-static {v2}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_1
    invoke-interface {p3, v5}, Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;->onLoad(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v0, v2

    goto :goto_3
.end method

.method public loadThenDelete(Ljava/io/File;Ljava/lang/Class;Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lio/intercom/android/sdk/persistence/JsonStorage;->gson:Lio/intercom/a/b/a/e;

    invoke-virtual {v1, v0, p2}, Lio/intercom/a/b/a/e;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;->onLoad(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/IoUtils;->safelyDelete(Ljava/io/File;)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    invoke-static {p1}, Lio/intercom/android/sdk/utilities/IoUtils;->safelyDelete(Ljava/io/File;)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_2
    invoke-static {p1}, Lio/intercom/android/sdk/utilities/IoUtils;->safelyDelete(Ljava/io/File;)V

    invoke-static {v3}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public saveToFileAsJson(Ljava/lang/Object;Ljava/io/File;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t delete existing file at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v2, Lio/intercom/android/sdk/persistence/JsonStorage;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t save file to disk: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t create missing parent dir at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lio/intercom/android/sdk/persistence/JsonStorage;->gson:Lio/intercom/a/b/a/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lio/intercom/a/b/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    invoke-static {v2}, Lio/intercom/android/sdk/utilities/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    :try_start_5
    sget-object v1, Lio/intercom/a/b/a/k;->cRt:Lio/intercom/a/b/a/k;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v2}, Lio/intercom/a/b/a/b/j;->b(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/intercom/a/b/a/e;->b(Ljava/io/Writer;)Lio/intercom/a/b/a/d/c;

    move-result-object v3

    iget-boolean v4, v3, Lio/intercom/a/b/a/d/c;->bgE:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Lio/intercom/a/b/a/d/c;->bgE:Z

    iget-boolean v5, v3, Lio/intercom/a/b/a/d/c;->bgC:Z

    iget-boolean v6, v0, Lio/intercom/a/b/a/e;->bgC:Z

    iput-boolean v6, v3, Lio/intercom/a/b/a/d/c;->bgC:Z

    iget-boolean v6, v3, Lio/intercom/a/b/a/d/c;->bgz:Z

    iget-boolean v0, v0, Lio/intercom/a/b/a/e;->bgz:Z

    iput-boolean v0, v3, Lio/intercom/a/b/a/d/c;->bgz:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v1, v3}, Lio/intercom/a/b/a/b/j;->a(Lio/intercom/a/b/a/i;Lio/intercom/a/b/a/d/c;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-boolean v4, v3, Lio/intercom/a/b/a/d/c;->bgE:Z

    iput-boolean v5, v3, Lio/intercom/a/b/a/d/c;->bgC:Z

    iput-boolean v6, v3, Lio/intercom/a/b/a/d/c;->bgz:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_9
    new-instance v1, Lio/intercom/a/b/a/j;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_a
    new-instance v1, Lio/intercom/a/b/a/j;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_b
    iput-boolean v4, v3, Lio/intercom/a/b/a/d/c;->bgE:Z

    iput-boolean v5, v3, Lio/intercom/a/b/a/d/c;->bgC:Z

    iput-boolean v6, v3, Lio/intercom/a/b/a/d/c;->bgz:Z

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
