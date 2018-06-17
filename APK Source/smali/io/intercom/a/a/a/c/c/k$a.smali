.class public final Lio/intercom/a/a/a/c/c/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/o",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/k$a;->context:Landroid/content/Context;

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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/k;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/k$a;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/c/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
