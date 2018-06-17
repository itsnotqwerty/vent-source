.class final Lio/intercom/a/b/a/b/a/b$a;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/b;
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
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final cRY:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final cRZ:Lio/intercom/a/b/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/h",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/a/b/a/e;Ljava/lang/reflect/Type;Lio/intercom/a/b/a/r;Lio/intercom/a/b/a/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/e;",
            "Ljava/lang/reflect/Type;",
            "Lio/intercom/a/b/a/r",
            "<TE;>;",
            "Lio/intercom/a/b/a/b/h",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    new-instance v0, Lio/intercom/a/b/a/b/a/m;

    invoke-direct {v0, p1, p3, p2}, Lio/intercom/a/b/a/b/a/m;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/b$a;->cRY:Lio/intercom/a/b/a/r;

    iput-object p4, p0, Lio/intercom/a/b/a/b/a/b$a;->cRZ:Lio/intercom/a/b/a/b/h;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/b$a;->cRZ:Lio/intercom/a/b/a/b/h;

    invoke-interface {v0}, Lio/intercom/a/b/a/b/h;->vo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/b$a;->cRY:Lio/intercom/a/b/a/r;

    invoke-virtual {v1, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endArray()V

    goto :goto_0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kj()Lio/intercom/a/b/a/d/c;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/b/a/b/a/b$a;->cRY:Lio/intercom/a/b/a/r;

    invoke-virtual {v2, p1, v1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kk()Lio/intercom/a/b/a/d/c;

    goto :goto_0
.end method
