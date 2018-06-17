.class public final Lio/intercom/a/b/a/b/a/i$a;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/b/a/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final biv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/a/b/a/b/a/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private final cRZ:Lio/intercom/a/b/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/h",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/h;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/h",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/a/b/a/b/a/i$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/i$a;->cRZ:Lio/intercom/a/b/a/b/h;

    iput-object p2, p0, Lio/intercom/a/b/a/b/a/i$a;->biv:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/i$a;->cRZ:Lio/intercom/a/b/a/b/h;

    invoke-interface {v0}, Lio/intercom/a/b/a/b/h;->vo()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginObject()V

    :goto_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/a/b/a/b/a/i$a;->biv:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/b/a/i$b;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lio/intercom/a/b/a/b/a/i$b;->bix:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lio/intercom/a/b/a/b/a/i$b;->a(Lio/intercom/a/b/a/d/a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endObject()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kl()Lio/intercom/a/b/a/d/c;

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/i$a;->biv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/b/a/i$b;

    invoke-virtual {v0, p2}, Lio/intercom/a/b/a/b/a/i$b;->ag(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lio/intercom/a/b/a/b/a/i$b;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/b/a/i$b;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Km()Lio/intercom/a/b/a/d/c;

    goto :goto_0
.end method
