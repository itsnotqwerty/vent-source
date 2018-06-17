.class public final Lio/intercom/a/a/a/c/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/a/a/c$a;,
        Lio/intercom/a/a/a/c/a/a/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private asq:Ljava/io/InputStream;

.field private final cIx:Landroid/net/Uri;

.field private final cIy:Lio/intercom/a/a/a/c/a/a/e;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lio/intercom/a/a/a/c/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/a/a/c;->cIx:Landroid/net/Uri;

    iput-object p2, p0, Lio/intercom/a/a/a/c/a/a/c;->cIy:Lio/intercom/a/a/a/c/a/a/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lio/intercom/a/a/a/c/a/a/d;)Lio/intercom/a/a/a/c/a/a/c;
    .locals 4

    invoke-static {p0}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v0

    iget-object v0, v0, Lio/intercom/a/a/a/c;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    new-instance v1, Lio/intercom/a/a/a/c/a/a/e;

    invoke-static {p0}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v2

    iget-object v2, v2, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    invoke-virtual {v2}, Lio/intercom/a/a/a/h;->Hz()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v2, p2, v0, v3}, Lio/intercom/a/a/a/c/a/a/e;-><init>(Ljava/util/List;Lio/intercom/a/a/a/c/a/a/d;Lio/intercom/a/a/a/c/b/a/b;Landroid/content/ContentResolver;)V

    new-instance v0, Lio/intercom/a/a/a/c/a/a/c;

    invoke-direct {v0, p1, v1}, Lio/intercom/a/a/a/c/a/a/c;-><init>(Landroid/net/Uri;Lio/intercom/a/a/a/c/a/a/e;)V

    return-object v0
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
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/c;->cIy:Lio/intercom/a/a/a/c/a/a/e;

    iget-object v1, p0, Lio/intercom/a/a/a/c/a/a/c;->cIx:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/a/a/e;->s(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/c;->cIy:Lio/intercom/a/a/a/c/a/a/e;

    iget-object v2, p0, Lio/intercom/a/a/a/c/a/a/c;->cIx:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/c/a/a/e;->r(Landroid/net/Uri;)I

    move-result v0

    move v2, v0

    :goto_0
    if-eq v2, v3, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/a/e;

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/a/e;-><init>(Ljava/io/InputStream;I)V

    :goto_1
    iput-object v0, p0, Lio/intercom/a/a/a/c/a/a/c;->asq:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/c;->asq:Ljava/io/InputStream;

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaStoreThumbFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MediaStoreThumbFetcher"

    const-string v2, "Failed to find thumbnail file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->i(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final cleanup()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/c;->asq:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/a/c;->asq:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
