.class final Lio/intercom/a/a/a/c/b/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lio/intercom/a/a/a/c/b/a/m;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cLk:Lio/intercom/a/a/a/c/b/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/a/h$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final cLl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lio/intercom/a/a/a/c/b/a/h$a",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/h$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLl:Ljava/util/Map;

    return-void
.end method

.method private static a(Lio/intercom/a/a/a/c/b/a/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/b/a/h$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object p0, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object p0, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    return-void
.end method

.method private static b(Lio/intercom/a/a/a/c/b/a/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/b/a/h$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/b/a/m;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/h$a;

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-direct {v0, p1}, Lio/intercom/a/a/a/c/b/a/h$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/intercom/a/a/a/c/b/a/h;->b(Lio/intercom/a/a/a/c/b/a/h$a;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-static {v0}, Lio/intercom/a/a/a/c/b/a/h;->a(Lio/intercom/a/a/a/c/b/a/h$a;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h;->cLl:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->values:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->values:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lio/intercom/a/a/a/c/b/a/h$a;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/a/m;->Iy()V

    goto :goto_0
.end method

.method public final b(Lio/intercom/a/a/a/c/b/a/m;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/h$a;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-direct {v0, p1}, Lio/intercom/a/a/a/c/b/a/h$a;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h;->cLl:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v0}, Lio/intercom/a/a/a/c/b/a/h;->b(Lio/intercom/a/a/a/c/b/a/h$a;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    iput-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-static {v0}, Lio/intercom/a/a/a/c/b/a/h;->a(Lio/intercom/a/a/a/c/b/a/h$a;)V

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/a/h$a;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/a/m;->Iy()V

    goto :goto_0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/a/h$a;->removeLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v1}, Lio/intercom/a/a/a/c/b/a/h;->b(Lio/intercom/a/a/a/c/b/a/h$a;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLl:Ljava/util/Map;

    iget-object v2, v1, Lio/intercom/a/a/a/c/b/a/h$a;->bhL:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lio/intercom/a/a/a/c/b/a/h$a;->bhL:Ljava/lang/Object;

    check-cast v0, Lio/intercom/a/a/a/c/b/a/m;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/a/m;->Iy()V

    iget-object v0, v1, Lio/intercom/a/a/a/c/b/a/h$a;->cLn:Lio/intercom/a/a/a/c/b/a/h$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "GroupedLinkedMap( "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lio/intercom/a/a/a/c/b/a/h;->cLk:Lio/intercom/a/a/a/c/b/a/h$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lio/intercom/a/a/a/c/b/a/h$a;->bhL:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/a/h$a;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/a/h$a;->cLm:Lio/intercom/a/a/a/c/b/a/h$a;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
