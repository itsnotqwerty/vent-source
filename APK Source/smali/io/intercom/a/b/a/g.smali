.class public final Lio/intercom/a/b/a/g;
.super Lio/intercom/a/b/a/i;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/i;",
        "Ljava/lang/Iterable",
        "<",
        "Lio/intercom/a/b/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/b/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/b/a/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/i;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lio/intercom/a/b/a/k;->cRt:Lio/intercom/a/b/a/k;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lio/intercom/a/b/a/g;

    if-eqz v0, :cond_1

    check-cast p1, Lio/intercom/a/b/a/g;

    iget-object v0, p1, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->getAsBoolean()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsDouble()D
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsInt()I
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->getAsInt()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsLong()J
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->getAsLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lio/intercom/a/b/a/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final ve()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->ve()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final vf()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/g;->bgS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->vf()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
