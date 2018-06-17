.class final Lcom/c/a/b;
.super Lcom/c/a/y;


# static fields
.field private static final bMQ:I


# instance fields
.field private final bMR:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    sput v0, Lcom/c/a/b;->bMQ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/c/a/y;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b;->bMR:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/c/a/b;->bMR:Landroid/content/res/AssetManager;

    iget-object v1, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/c/a/b;->bMQ:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/c/a/y$a;

    sget-object v2, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    invoke-direct {v1, v0, v2}, Lcom/c/a/y$a;-><init>(Ljava/io/InputStream;Lcom/c/a/t$d;)V

    return-object v1
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_asset"

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
