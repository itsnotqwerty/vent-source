.class final Lio/intercom/a/a/a/c/c/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;
.implements Lio/intercom/a/a/a/c/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b",
        "<TData;>;",
        "Lio/intercom/a/a/a/c/a/b$a",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final cGf:Landroid/support/v4/g/k$a;
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

.field private cJg:Lio/intercom/a/a/a/g;

.field private final cNc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/a/b",
            "<TData;>;>;"
        }
    .end annotation
.end field

.field private cNd:Lio/intercom/a/a/a/c/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-TData;>;"
        }
    .end annotation
.end field

.field private cNe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private currentIndex:I


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/g/k$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/a/b",
            "<TData;>;>;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/q$a;->cGf:Landroid/support/v4/g/k$a;

    invoke-static {p1}, Lio/intercom/a/a/a/i/h;->h(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/a/a/c/c/q$a;->currentIndex:I

    return-void
.end method

.method private IR()V
    .locals 5

    iget v0, p0, Lio/intercom/a/a/a/c/c/q$a;->currentIndex:I

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/c/c/q$a;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/c/c/q$a;->currentIndex:I

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cJg:Lio/intercom/a/a/a/g;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/q$a;->cNd:Lio/intercom/a/a/a/c/a/b$a;

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/a/a/c/c/q$a;->a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNd:Lio/intercom/a/a/a/c/a/b$a;

    new-instance v1, Lio/intercom/a/a/a/c/b/p;

    const-string v2, "Fetch failed"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/a/b$a;->i(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final HT()Lio/intercom/a/a/a/c/a;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final HU()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->HU()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/q$a;->cJg:Lio/intercom/a/a/a/g;

    iput-object p2, p0, Lio/intercom/a/a/a/c/c/q$a;->cNd:Lio/intercom/a/a/a/c/a/b$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cGf:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    iget v1, p0, Lio/intercom/a/a/a/c/c/q$a;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0, p1, p0}, Lio/intercom/a/a/a/c/a/b;->a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V

    return-void
.end method

.method public final as(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNd:Lio/intercom/a/a/a/c/a/b$a;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/a/a/c/c/q$a;->IR()V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cleanup()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cGf:Landroid/support/v4/g/k$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/q$a;->cNe:Ljava/util/List;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/intercom/a/a/a/c/c/q$a;->IR()V

    return-void
.end method
