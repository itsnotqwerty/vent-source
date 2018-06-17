.class public final Lio/intercom/b/l;
.super Ljava/lang/Object;


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/intercom/b/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/intercom/b/l;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KM()Lio/intercom/b/r;
    .locals 1

    new-instance v0, Lio/intercom/b/l$3;

    invoke-direct {v0}, Lio/intercom/b/l$3;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;)Lio/intercom/b/r;
    .locals 1

    new-instance v0, Lio/intercom/b/t;

    invoke-direct {v0}, Lio/intercom/b/t;-><init>()V

    invoke-static {p0, v0}, Lio/intercom/b/l;->a(Ljava/io/OutputStream;Lio/intercom/b/t;)Lio/intercom/b/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lio/intercom/b/t;)Lio/intercom/b/r;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lio/intercom/b/l$1;

    invoke-direct {v0, p1, p0}, Lio/intercom/b/l$1;-><init>(Lio/intercom/b/t;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lio/intercom/b/t;)Lio/intercom/b/s;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lio/intercom/b/l$2;

    invoke-direct {v0, p1, p0}, Lio/intercom/b/l$2;-><init>(Lio/intercom/b/t;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static appendingSink(Ljava/io/File;)Lio/intercom/b/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lio/intercom/b/l;->a(Ljava/io/OutputStream;)Lio/intercom/b/r;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lio/intercom/b/r;)Lio/intercom/b/d;
    .locals 1

    new-instance v0, Lio/intercom/b/m;

    invoke-direct {v0, p0}, Lio/intercom/b/m;-><init>(Lio/intercom/b/r;)V

    return-object v0
.end method

.method public static b(Lio/intercom/b/s;)Lio/intercom/b/e;
    .locals 1

    new-instance v0, Lio/intercom/b/n;

    invoke-direct {v0, p0}, Lio/intercom/b/n;-><init>(Lio/intercom/b/s;)V

    return-object v0
.end method

.method public static c(Ljava/net/Socket;)Lio/intercom/b/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s output stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lio/intercom/b/l;->e(Ljava/net/Socket;)Lio/intercom/b/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lio/intercom/b/l;->a(Ljava/io/OutputStream;Lio/intercom/b/t;)Lio/intercom/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/b/a;->sink(Lio/intercom/b/r;)Lio/intercom/b/r;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/net/Socket;)Lio/intercom/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s input stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lio/intercom/b/l;->e(Ljava/net/Socket;)Lio/intercom/b/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lio/intercom/b/l;->a(Ljava/io/InputStream;Lio/intercom/b/t;)Lio/intercom/b/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/b/a;->source(Lio/intercom/b/s;)Lio/intercom/b/s;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/net/Socket;)Lio/intercom/b/a;
    .locals 1

    new-instance v0, Lio/intercom/b/l$4;

    invoke-direct {v0, p0}, Lio/intercom/b/l$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static s(Ljava/io/InputStream;)Lio/intercom/b/s;
    .locals 1

    new-instance v0, Lio/intercom/b/t;

    invoke-direct {v0}, Lio/intercom/b/t;-><init>()V

    invoke-static {p0, v0}, Lio/intercom/b/l;->a(Ljava/io/InputStream;Lio/intercom/b/t;)Lio/intercom/b/s;

    move-result-object v0

    return-object v0
.end method

.method public static sink(Ljava/io/File;)Lio/intercom/b/r;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lio/intercom/b/l;->a(Ljava/io/OutputStream;)Lio/intercom/b/r;

    move-result-object v0

    return-object v0
.end method

.method public static source(Ljava/io/File;)Lio/intercom/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lio/intercom/b/l;->s(Ljava/io/InputStream;)Lio/intercom/b/s;

    move-result-object v0

    return-object v0
.end method
