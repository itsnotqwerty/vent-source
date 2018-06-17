.class public final Lio/intercom/a/a/a/c/b/r;
.super Ljava/lang/Object;


# instance fields
.field private final cKQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final cKR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/r;->cKQ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/r;->cKR:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;)V"
        }
    .end annotation

    iget-boolean v0, p2, Lio/intercom/a/a/a/c/b/k;->cJu:Z

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/c/b/r;->bv(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final bv(Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/r;->cKR:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/r;->cKQ:Ljava/util/Map;

    goto :goto_0
.end method
