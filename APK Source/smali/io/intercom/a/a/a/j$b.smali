.class final Lio/intercom/a/a/a/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final cGz:Lio/intercom/a/a/a/d/n;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/d/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/j$b;->cGz:Lio/intercom/a/a/a/d/n;

    return-void
.end method


# virtual methods
.method public final bu(Z)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/j$b;->cGz:Lio/intercom/a/a/a/d/n;

    iget-object v0, v1, Lio/intercom/a/a/a/d/n;->cPu:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->pause()V

    iget-boolean v3, v1, Lio/intercom/a/a/a/d/n;->cPw:Z

    if-nez v3, :cond_1

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->begin()V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lio/intercom/a/a/a/d/n;->cPv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
