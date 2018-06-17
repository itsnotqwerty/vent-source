.class final Lio/intercom/a/b/a/b/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lio/intercom/a/b/a/c/a;->bkb:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Lio/intercom/a/b/a/b/a/c;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/a/c;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
