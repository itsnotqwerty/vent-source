.class public final Lio/intercom/a/a/a/c/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public cFu:Lio/intercom/a/a/a/e;

.field public cGh:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscode;>;"
        }
    .end annotation
.end field

.field public cGk:Ljava/lang/Object;

.field final cIO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            ">;"
        }
    .end annotation
.end field

.field public cIX:Lio/intercom/a/a/a/c/h;

.field public cIZ:Lio/intercom/a/a/a/c/j;

.field final cJa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n$a",
            "<*>;>;"
        }
    .end annotation
.end field

.field public cJb:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public cJc:Lio/intercom/a/a/a/c/b/g$d;

.field public cJd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field cJe:Z

.field cJf:Z

.field public cJg:Lio/intercom/a/a/a/g;

.field public cJh:Z

.field public cJi:Z

.field public diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

.field public height:I

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cJa:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final A(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;)",
            "Lio/intercom/a/a/a/c/b/s",
            "<TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/f;->cJb:Ljava/lang/Class;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/f;->cGh:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;

    move-result-object v0

    return-object v0
.end method

.method final B(Ljava/lang/Class;)Lio/intercom/a/a/a/c/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lio/intercom/a/a/a/c/m",
            "<TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cJd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/m;

    if-nez v0, :cond_1

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/f;->cJd:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/m;

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cJd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/f;->cJh:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing transformation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lio/intercom/a/a/a/c/d/b;->IU()Lio/intercom/a/a/a/c/d/b;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method final HZ()Lio/intercom/a/a/a/c/b/b/a;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/g$d;->HZ()Lio/intercom/a/a/a/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method final Ia()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n$a",
            "<*>;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/f;->cJe:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/f;->cJe:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cJa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/f;->cGk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/h;->ap(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/f;->cGk:Ljava/lang/Object;

    iget v5, p0, Lio/intercom/a/a/a/c/b/f;->width:I

    iget v6, p0, Lio/intercom/a/a/a/c/b/f;->height:I

    iget-object v7, p0, Lio/intercom/a/a/a/c/b/f;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-interface {v0, v4, v5, v6, v7}, Lio/intercom/a/a/a/c/c/n;->b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/f;->cJa:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cJa:Ljava/util/List;

    return-object v0
.end method

.method final Ib()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/f;->cJf:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/f;->cJf:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/f;->Ia()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    iget-object v6, v0, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    iget-object v6, v0, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    :goto_1
    iget-object v6, v0, Lio/intercom/a/a/a/c/c/n$a;->cMV:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    iget-object v7, v0, Lio/intercom/a/a/a/c/c/n$a;->cMV:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    iget-object v7, v0, Lio/intercom/a/a/a/c/c/n$a;->cMV:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    return-object v0
.end method

.method final m(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/h$c;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/h;->ap(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final z(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/intercom/a/a/a/c/b/f;->A(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
