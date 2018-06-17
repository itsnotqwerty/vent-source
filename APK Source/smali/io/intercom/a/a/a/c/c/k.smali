.class public final Lio/intercom/a/a/a/c/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/k$a;,
        Lio/intercom/a/a/a/c/c/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
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

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/k;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic aw(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lio/intercom/a/a/a/c/a/a/b;->o(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 4

    check-cast p1, Landroid/net/Uri;

    new-instance v0, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v1, Lio/intercom/a/a/a/h/b;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/intercom/a/a/a/c/c/k$b;

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/k;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lio/intercom/a/a/a/c/c/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    return-object v0
.end method
