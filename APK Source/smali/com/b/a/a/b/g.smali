.class public final Lcom/b/a/a/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/b/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/b/g$b;,
        Lcom/b/a/a/b/g$a;,
        Lcom/b/a/a/b/g$d;,
        Lcom/b/a/a/b/g$c;
    }
.end annotation


# static fields
.field private static final bIr:Ljava/util/logging/Logger;

.field private static final bKp:Lb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/a/b/g$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/g;->bIr:Ljava/util/logging/Logger;

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/b/g;->bKp:Lb/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(IBS)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-le p2, p0, :cond_1

    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/b/g;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static synthetic a(Lb/e;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lb/e;->KX()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lb/e;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lb/e;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lb/d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lb/d;->fL(I)Lb/d;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lb/d;->fL(I)Lb/d;

    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lb/d;->fL(I)Lb/d;

    return-void
.end method

.method private static varargs f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/b/a/a/b/g;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zN()Lb/f;
    .locals 1

    sget-object v0, Lcom/b/a/a/b/g;->bKp:Lb/f;

    return-object v0
.end method

.method static synthetic zO()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/b/a/a/b/g;->bIr:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final a(Lb/e;Z)Lcom/b/a/a/b/b;
    .locals 1

    new-instance v0, Lcom/b/a/a/b/g$c;

    invoke-direct {v0, p1, p2}, Lcom/b/a/a/b/g$c;-><init>(Lb/e;Z)V

    return-object v0
.end method

.method public final a(Lb/d;Z)Lcom/b/a/a/b/c;
    .locals 1

    new-instance v0, Lcom/b/a/a/b/g$d;

    invoke-direct {v0, p1, p2}, Lcom/b/a/a/b/g$d;-><init>(Lb/d;Z)V

    return-object v0
.end method
