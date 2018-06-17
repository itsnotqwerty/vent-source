.class public final Lio/intercom/a/a/a/c/d/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/l",
        "<",
        "Lio/intercom/a/a/a/c/d/e/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lio/intercom/a/a/a/c/b/u;Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Lio/intercom/a/a/a/c/d/e/c;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/c;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lio/intercom/a/a/a/i/a;->b(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "GifEncoder"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GifEncoder"

    const-string v3, "Failed to encode GIF drawable data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lio/intercom/a/a/a/c/j;)Z
    .locals 1

    check-cast p1, Lio/intercom/a/a/a/c/b/u;

    invoke-static {p1, p2}, Lio/intercom/a/a/a/c/d/e/d;->a(Lio/intercom/a/a/a/c/b/u;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public final b(Lio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/c;->cHN:Lio/intercom/a/a/a/c/c;

    return-object v0
.end method
