.class public final Lio/intercom/a/a/a/c/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/a$b;,
        Lio/intercom/a/a/a/c/c/a$c;,
        Lio/intercom/a/a/a/c/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final bMQ:I


# instance fields
.field private final bMR:Landroid/content/res/AssetManager;

.field private final cMu:Lio/intercom/a/a/a/c/c/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/a$a",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    sput v0, Lio/intercom/a/a/a/c/c/a;->bMQ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lio/intercom/a/a/a/c/c/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lio/intercom/a/a/a/c/c/a$a",
            "<TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/a;->bMR:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/a;->cMu:Lio/intercom/a/a/a/c/c/a$a;

    return-void
.end method


# virtual methods
.method public final synthetic aw(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    check-cast p1, Landroid/net/Uri;

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android_asset"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 5

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lio/intercom/a/a/a/c/c/a;->bMQ:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v2, Lio/intercom/a/a/a/h/b;

    invoke-direct {v2, p1}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/a;->cMu:Lio/intercom/a/a/a/c/c/a$a;

    iget-object v4, p0, Lio/intercom/a/a/a/c/c/a;->bMR:Landroid/content/res/AssetManager;

    invoke-interface {v3, v4, v0}, Lio/intercom/a/a/a/c/c/a$a;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/intercom/a/a/a/c/a/b;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    return-object v1
.end method
