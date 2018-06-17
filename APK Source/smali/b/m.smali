.class public final Lb/m;
.super Ljava/lang/Object;


# static fields
.field private static final bIr:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lb/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lb/m;->bIr:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Lo()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lb/m;->bIr:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static a(Ljava/net/Socket;Lb/k;)Lb/r;
    .locals 3
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
    invoke-static {p0}, Lb/m;->h(Ljava/net/Socket;)Lb/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Lb/m$1;

    invoke-direct {v2, p1, v0, v1}, Lb/m$1;-><init>(Lb/k;Lb/t;Ljava/io/OutputStream;)V

    new-instance v1, Lb/a$1;

    invoke-direct {v1, v0, v2}, Lb/a$1;-><init>(Lb/a;Lb/r;)V

    return-object v1
.end method

.method public static b(Lb/r;)Lb/d;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/n;

    invoke-direct {v0, p0}, Lb/n;-><init>(Lb/r;)V

    return-object v0
.end method

.method public static b(Lb/s;)Lb/e;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/o;

    invoke-direct {v0, p0}, Lb/o;-><init>(Lb/s;)V

    return-object v0
.end method

.method public static b(Ljava/net/Socket;Lb/k;)Lb/s;
    .locals 3
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
    invoke-static {p0}, Lb/m;->h(Ljava/net/Socket;)Lb/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Lb/m$2;

    invoke-direct {v2, p1, v0, v1}, Lb/m$2;-><init>(Lb/k;Lb/t;Ljava/io/InputStream;)V

    new-instance v1, Lb/a$2;

    invoke-direct {v1, v0, v2}, Lb/a$2;-><init>(Lb/a;Lb/s;)V

    return-object v1
.end method

.method public static f(Ljava/net/Socket;)Lb/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb/m;->a(Ljava/net/Socket;Lb/k;)Lb/r;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/net/Socket;)Lb/s;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb/m;->b(Ljava/net/Socket;Lb/k;)Lb/s;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/net/Socket;)Lb/a;
    .locals 1

    new-instance v0, Lb/m$3;

    invoke-direct {v0, p0}, Lb/m$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
