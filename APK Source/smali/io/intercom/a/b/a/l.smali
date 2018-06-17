.class public final Lio/intercom/a/b/a/l;
.super Lio/intercom/a/b/a/i;


# instance fields
.field public final cRu:Lio/intercom/a/b/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/g",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/a/b/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/b/a/i;-><init>()V

    new-instance v0, Lio/intercom/a/b/a/b/g;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/g;-><init>()V

    iput-object v0, p0, Lio/intercom/a/b/a/l;->cRu:Lio/intercom/a/b/a/b/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lio/intercom/a/b/a/i;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lio/intercom/a/b/a/k;->cRt:Lio/intercom/a/b/a/k;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/l;->cRu:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lio/intercom/a/b/a/l;

    if-eqz v0, :cond_1

    check-cast p1, Lio/intercom/a/b/a/l;

    iget-object v0, p1, Lio/intercom/a/b/a/l;->cRu:Lio/intercom/a/b/a/b/g;

    iget-object v1, p0, Lio/intercom/a/b/a/l;->cRu:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/b/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/b/a/l;->cRu:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0}, Lio/intercom/a/b/a/b/g;->hashCode()I

    move-result v0

    return v0
.end method
