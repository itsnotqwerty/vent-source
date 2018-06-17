.class final Lio/intercom/a/a/a/c/c/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/d$a;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final HT()Lio/intercom/a/a/a/c/a;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/a;->cHC:Lio/intercom/a/a/a/c/a;

    return-object v0
.end method

.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/d$a;->file:Ljava/io/File;

    invoke-static {v0}, Lio/intercom/a/a/a/i/a;->o(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ByteBufferFileLoader"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ByteBufferFileLoader"

    const-string v2, "Failed to obtain ByteBuffer for file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->i(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final cleanup()V
    .locals 0

    return-void
.end method
