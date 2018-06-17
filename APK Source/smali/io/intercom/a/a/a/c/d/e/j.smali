.class public final Lio/intercom/a/a/a/c/d/e/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Ljava/io/InputStream;",
        "Lio/intercom/a/a/a/c/d/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final cID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final cIu:Lio/intercom/a/a/a/c/b/a/b;

.field private final cOU:Lio/intercom/a/a/a/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/k",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/intercom/a/a/a/c/k;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Lio/intercom/a/a/a/c/k",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/j;->cID:Ljava/util/List;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/e/j;->cOU:Lio/intercom/a/a/a/c/k;

    iput-object p3, p0, Lio/intercom/a/a/a/c/d/e/j;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    return-void
.end method

.method private static q(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v1, 0x4000

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x4000

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamGifDecoder"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StreamGifDecoder"

    const-string v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lio/intercom/a/a/a/c/d/e/j;->q(Ljava/io/InputStream;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/j;->cOU:Lio/intercom/a/a/a/c/k;

    invoke-interface {v1, v0, p2, p3, p4}, Lio/intercom/a/a/a/c/k;->a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    sget-object v0, Lio/intercom/a/a/a/c/d/e/i;->cOT:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p2, v0}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/j;->cID:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/j;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-static {v0, p1, v1}, Lio/intercom/a/a/a/c/g;->a(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/c/f$a;->cHR:Lio/intercom/a/a/a/c/f$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
