.class public final Lio/intercom/a/a/a/c/b/b/g;
.super Lio/intercom/a/a/a/i/e;

# interfaces
.implements Lio/intercom/a/a/a/c/b/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/a/a/i/e",
        "<",
        "Lio/intercom/a/a/a/c/h;",
        "Lio/intercom/a/a/a/c/b/u",
        "<*>;>;",
        "Lio/intercom/a/a/a/c/b/b/h;"
    }
.end annotation


# instance fields
.field private cLR:Lio/intercom/a/a/a/c/b/b/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/intercom/a/a/a/i/e;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 1

    invoke-super {p0, p1, p2}, Lio/intercom/a/a/a/i/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/u;

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/c/b/b/h$a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/g;->cLR:Lio/intercom/a/a/a/c/b/b/h$a;

    return-void
.end method

.method protected final synthetic av(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lio/intercom/a/a/a/c/b/u;

    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->getSize()I

    move-result v0

    return v0
.end method

.method public final synthetic b(Lio/intercom/a/a/a/c/h;)Lio/intercom/a/a/a/c/b/u;
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/a/a/a/i/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/u;

    return-object v0
.end method

.method public final fh(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/b/g;->Iw()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/b/g;->JR()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/a/a/c/b/b/g;->U(J)V

    goto :goto_0
.end method

.method protected final synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lio/intercom/a/a/a/c/b/u;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/g;->cLR:Lio/intercom/a/a/a/c/b/b/h$a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/g;->cLR:Lio/intercom/a/a/a/c/b/b/h$a;

    invoke-interface {v0, p2}, Lio/intercom/a/a/a/c/b/b/h$a;->b(Lio/intercom/a/a/a/c/b/u;)V

    :cond_0
    return-void
.end method
