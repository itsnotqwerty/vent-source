.class public final Lio/intercom/a/a/a/c/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/d",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lio/intercom/a/a/a/i/a;->b(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ByteBufferEncoder"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ByteBufferEncoder"

    const-string v3, "Failed to write data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lio/intercom/a/a/a/c/j;)Z
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lio/intercom/a/a/a/c/c/c;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
