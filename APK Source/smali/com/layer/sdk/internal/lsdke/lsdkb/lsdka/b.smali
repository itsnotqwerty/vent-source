.class public Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find schema path: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;C)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    add-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b()Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    instance-of v5, v1, Ljava/net/JarURLConnection;

    if-eqz v5, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/net/JarURLConnection;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/c;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a:Landroid/content/Context;

    invoke-direct {v6, v7, v0}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b:Ljava/lang/String;

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-static {v0, v5}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a(Ljava/lang/String;C)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v5, v1

    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_1

    aget-object v6, v1, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v7, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/c;

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkb/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method
