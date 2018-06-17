.class final Lio/intercom/a/a/a/c/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/n",
        "<TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final cIT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<TModel;TData;>;>;"
        }
    .end annotation
.end field

.field private final cNb:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/g/k$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<TModel;TData;>;>;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/q;->cIT:Ljava/util/List;

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/q;->cNb:Landroid/support/v4/g/k$a;

    return-void
.end method


# virtual methods
.method public final aw(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q;->cIT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/c/n;->aw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lio/intercom/a/a/a/c/j;",
            ")",
            "Lio/intercom/a/a/a/c/c/n$a",
            "<TData;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q;->cIT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q;->cIT:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/c/n;->aw(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lio/intercom/a/a/a/c/c/n;->b(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/c/n$a;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v0, v6, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v1, v6, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/c/n$a;

    new-instance v2, Lio/intercom/a/a/a/c/c/q$a;

    iget-object v3, p0, Lio/intercom/a/a/a/c/c/q;->cNb:Landroid/support/v4/g/k$a;

    invoke-direct {v2, v5, v3}, Lio/intercom/a/a/a/c/c/q$a;-><init>(Ljava/util/List;Landroid/support/v4/g/k$a;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c/n$a;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a/b;)V

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiModelLoader{modelLoaders="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/q;->cIT:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/a/a/a/c/c/q;->cIT:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/intercom/a/a/a/c/c/n;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
