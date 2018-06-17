.class final Lio/intercom/a/b/a/b/g$b;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic cRM:Lio/intercom/a/b/a/b/g;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/g;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/g$b;->cRM:Lio/intercom/a/b/a/b/g;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/b/a/b/g$b;->cRM:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0}, Lio/intercom/a/b/a/b/g;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/b/a/b/g$b;->cRM:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/b/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/b/a/b/g$b$1;

    invoke-direct {v0, p0}, Lio/intercom/a/b/a/b/g$b$1;-><init>(Lio/intercom/a/b/a/b/g$b;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/b/a/b/g$b;->cRM:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/b/g;->aE(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/b/a/b/g$b;->cRM:Lio/intercom/a/b/a/b/g;

    iget v0, v0, Lio/intercom/a/b/a/b/g;->size:I

    return v0
.end method
