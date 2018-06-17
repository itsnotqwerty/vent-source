.class public final Lio/intercom/a/a/a/c/c/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNw:Lio/intercom/a/a/a/c/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Lio/intercom/a/a/a/c/c/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Lio/intercom/a/a/a/c/c/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/a/e;->cNw:Lio/intercom/a/a/a/c/c/n;

    return-void
.end method


# virtual methods
.method public final bridge synthetic aw(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 2

    check-cast p1, Ljava/net/URL;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/a/e;->cNw:Lio/intercom/a/a/a/c/c/n;

    new-instance v1, Lio/intercom/a/a/a/c/c/g;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/c/c/g;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lio/intercom/a/a/a/c/c/n;->b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;

    move-result-object v0

    return-object v0
.end method
