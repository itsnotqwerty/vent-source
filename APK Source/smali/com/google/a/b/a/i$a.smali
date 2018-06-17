.class public final Lcom/google/a/b/a/i$a;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/i;
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
        "Lcom/google/a/u",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final bhW:Lcom/google/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final biv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/b/a/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/b/i;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/i",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/b/a/i$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/a/i$a;->bhW:Lcom/google/a/b/i;

    iput-object p2, p0, Lcom/google/a/b/a/i$a;->biv:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/a/d/b;->bku:Lcom/google/a/d/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/i$a;->bhW:Lcom/google/a/b/i;

    invoke-interface {v0}, Lcom/google/a/b/i;->vo()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->beginObject()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/b/a/i$a;->biv:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/a/i$b;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/google/a/b/a/i$b;->bix:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/a/b/a/i$b;->a(Lcom/google/a/d/a;Ljava/lang/Object;)V
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
    invoke-virtual {p1}, Lcom/google/a/d/a;->endObject()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/c;->vD()Lcom/google/a/d/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/a/b/a/i$a;->biv:Ljava/util/Map;

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

    check-cast v0, Lcom/google/a/b/a/i$b;

    invoke-virtual {v0, p2}, Lcom/google/a/b/a/i$b;->ag(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/a/b/a/i$b;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/a/d/c;->do(Ljava/lang/String;)Lcom/google/a/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b/a/i$b;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/a/d/c;->vE()Lcom/google/a/d/c;

    goto :goto_0
.end method
