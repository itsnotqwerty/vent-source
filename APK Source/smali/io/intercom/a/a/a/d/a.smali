.class final Lio/intercom/a/a/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/d/h;


# instance fields
.field private cOA:Z

.field private final cPa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/intercom/a/a/a/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private cPb:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/d/a;->cPa:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/d/i;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/d/a;->cPa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lio/intercom/a/a/a/d/a;->cPb:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/intercom/a/a/a/d/i;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/d/a;->cOA:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/intercom/a/a/a/d/i;->onStart()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lio/intercom/a/a/a/d/i;->onStop()V

    goto :goto_0
.end method

.method public final b(Lio/intercom/a/a/a/d/i;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/d/a;->cPa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/d/a;->cPb:Z

    iget-object v0, p0, Lio/intercom/a/a/a/d/a;->cPa:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/d/i;

    invoke-interface {v0}, Lio/intercom/a/a/a/d/i;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onStart()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/d/a;->cOA:Z

    iget-object v0, p0, Lio/intercom/a/a/a/d/a;->cPa:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/d/i;

    invoke-interface {v0}, Lio/intercom/a/a/a/d/i;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onStop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/d/a;->cOA:Z

    iget-object v0, p0, Lio/intercom/a/a/a/d/a;->cPa:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/d/i;

    invoke-interface {v0}, Lio/intercom/a/a/a/d/i;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
