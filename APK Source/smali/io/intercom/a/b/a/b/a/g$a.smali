.class final Lio/intercom/a/b/a/b/a/g$a;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final cRZ:Lio/intercom/a/b/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/h",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final cSe:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final cSf:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic cSg:Lio/intercom/a/b/a/b/a/g;


# direct methods
.method public constructor <init>(Lio/intercom/a/b/a/b/a/g;Lio/intercom/a/b/a/e;Ljava/lang/reflect/Type;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;Lio/intercom/a/b/a/r;Lio/intercom/a/b/a/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/e;",
            "Ljava/lang/reflect/Type;",
            "Lio/intercom/a/b/a/r",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lio/intercom/a/b/a/r",
            "<TV;>;",
            "Lio/intercom/a/b/a/b/h",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/g$a;->cSg:Lio/intercom/a/b/a/b/a/g;

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    new-instance v0, Lio/intercom/a/b/a/b/a/m;

    invoke-direct {v0, p2, p4, p3}, Lio/intercom/a/b/a/b/a/m;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/g$a;->cSe:Lio/intercom/a/b/a/r;

    new-instance v0, Lio/intercom/a/b/a/b/a/m;

    invoke-direct {v0, p2, p6, p5}, Lio/intercom/a/b/a/b/a/m;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/g$a;->cSf:Lio/intercom/a/b/a/r;

    iput-object p7, p0, Lio/intercom/a/b/a/b/a/g$a;->cRZ:Lio/intercom/a/b/a/b/h;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v1

    sget-object v0, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/g$a;->cRZ:Lio/intercom/a/b/a/b/h;

    invoke-interface {v0}, Lio/intercom/a/b/a/b/h;->vo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lio/intercom/a/b/a/d/b;->cTw:Lio/intercom/a/b/a/d/b;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginArray()V

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/g$a;->cSe:Lio/intercom/a/b/a/r;

    invoke-virtual {v1, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/b/a/b/a/g$a;->cSf:Lio/intercom/a/b/a/r;

    invoke-virtual {v2, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lio/intercom/a/b/a/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endArray()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginObject()V

    :cond_4
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lio/intercom/a/b/a/b/e;->cRH:Lio/intercom/a/b/a/b/e;

    invoke-virtual {v1, p1}, Lio/intercom/a/b/a/b/e;->b(Lio/intercom/a/b/a/d/a;)V

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/g$a;->cSe:Lio/intercom/a/b/a/r;

    invoke-virtual {v1, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/b/a/b/a/g$a;->cSf:Lio/intercom/a/b/a/r;

    invoke-virtual {v2, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lio/intercom/a/b/a/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endObject()V

    goto :goto_0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/g$a;->cSg:Lio/intercom/a/b/a/b/a/g;

    iget-boolean v0, v0, Lio/intercom/a/b/a/b/a/g;->bgA:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kl()Lio/intercom/a/b/a/d/c;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    iget-object v2, p0, Lio/intercom/a/b/a/b/a/g$a;->cSf:Lio/intercom/a/b/a/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Km()Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lio/intercom/a/b/a/b/a/g$a;->cSe:Lio/intercom/a/b/a/r;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/intercom/a/b/a/r;->aC(Ljava/lang/Object;)Lio/intercom/a/b/a/i;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, v6, Lio/intercom/a/b/a/g;

    if-nez v0, :cond_3

    instance-of v0, v6, Lio/intercom/a/b/a/l;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kj()Lio/intercom/a/b/a/d/c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kj()Lio/intercom/a/b/a/d/c;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-static {v0, p1}, Lio/intercom/a/b/a/b/j;->a(Lio/intercom/a/b/a/i;Lio/intercom/a/b/a/d/c;)V

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/g$a;->cSf:Lio/intercom/a/b/a/r;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kk()Lio/intercom/a/b/a/d/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kk()Lio/intercom/a/b/a/d/c;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kl()Lio/intercom/a/b/a/d/c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    instance-of v5, v0, Lio/intercom/a/b/a/n;

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lio/intercom/a/b/a/i;->Ka()Lio/intercom/a/b/a/n;

    move-result-object v0

    iget-object v5, v0, Lio/intercom/a/b/a/n;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lio/intercom/a/b/a/n;->ve()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/g$a;->cSf:Lio/intercom/a/b/a/r;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iget-object v5, v0, Lio/intercom/a/b/a/n;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lio/intercom/a/b/a/n;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v5, v0, Lio/intercom/a/b/a/n;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lio/intercom/a/b/a/n;->vf()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    instance-of v0, v0, Lio/intercom/a/b/a/k;

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Km()Lio/intercom/a/b/a/d/c;

    goto/16 :goto_0
.end method
