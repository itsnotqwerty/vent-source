.class public final Lio/intercom/a/a/a/c/c/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/o",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
    .locals 3
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

    new-instance v0, Lio/intercom/a/a/a/c/c/a/b;

    const-class v1, Lio/intercom/a/a/a/c/c/g;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lio/intercom/a/a/a/c/c/r;->b(Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/c/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/c/a/b;-><init>(Lio/intercom/a/a/a/c/c/n;)V

    return-object v0
.end method
