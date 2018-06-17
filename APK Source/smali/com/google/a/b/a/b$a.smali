.class final Lcom/google/a/b/a/b$a;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/u",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final bhV:Lcom/google/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/u",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final bhW:Lcom/google/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/i",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/a/f;Ljava/lang/reflect/Type;Lcom/google/a/u;Lcom/google/a/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/u",
            "<TE;>;",
            "Lcom/google/a/b/i",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    new-instance v0, Lcom/google/a/b/a/m;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/a/b/a/m;-><init>(Lcom/google/a/f;Lcom/google/a/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/a/b/a/b$a;->bhV:Lcom/google/a/u;

    iput-object p4, p0, Lcom/google/a/b/a/b$a;->bhW:Lcom/google/a/b/i;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lcom/google/a/b/a/b$a;->bhW:Lcom/google/a/b/i;

    invoke-interface {v0}, Lcom/google/a/b/i;->vo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/a/b/a/b$a;->bhV:Lcom/google/a/u;

    invoke-virtual {v1, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->endArray()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/c;->vB()Lcom/google/a/d/c;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/b/a/b$a;->bhV:Lcom/google/a/u;

    invoke-virtual {v2, p1, v1}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/c;->vC()Lcom/google/a/d/c;

    goto :goto_0
.end method
