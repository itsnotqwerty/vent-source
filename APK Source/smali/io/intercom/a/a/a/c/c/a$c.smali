.class public final Lio/intercom/a/a/a/c/c/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/a$a;
.implements Lio/intercom/a/a/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/a$a",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lio/intercom/a/a/a/c/c/o",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final bMR:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/a$c;->bMR:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/r;",
            ")",
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/a$c;->bMR:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, p0}, Lio/intercom/a/a/a/c/c/a;-><init>(Landroid/content/res/AssetManager;Lio/intercom/a/a/a/c/c/a$a;)V

    return-object v0
.end method

.method public final b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lio/intercom/a/a/a/c/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/a/a/a/c/a/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/a/k;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/c/a/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
