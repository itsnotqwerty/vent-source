.class final Lio/intercom/a/a/a/c/b/j$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/i/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/i/a/a$a",
        "<",
        "Lio/intercom/a/a/a/c/b/g",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic cKp:Lio/intercom/a/a/a/c/b/j$a;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/j$a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/j$a$1;->cKp:Lio/intercom/a/a/a/c/b/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lio/intercom/a/a/a/c/b/g;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/j$a$1;->cKp:Lio/intercom/a/a/a/c/b/j$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/j$a;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/j$a$1;->cKp:Lio/intercom/a/a/a/c/b/j$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/j$a;->cJm:Landroid/support/v4/g/k$a;

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/b/g;-><init>(Lio/intercom/a/a/a/c/b/g$d;Landroid/support/v4/g/k$a;)V

    return-object v0
.end method
