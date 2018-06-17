.class final Lcom/google/a/b/a/g$a;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/g;
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
        "Lcom/google/a/u",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final bhW:Lcom/google/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/i",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final bii:Lcom/google/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/u",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final bij:Lcom/google/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/u",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic bik:Lcom/google/a/b/a/g;


# direct methods
.method public constructor <init>(Lcom/google/a/b/a/g;Lcom/google/a/f;Ljava/lang/reflect/Type;Lcom/google/a/u;Ljava/lang/reflect/Type;Lcom/google/a/u;Lcom/google/a/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/u",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/a/u",
            "<TV;>;",
            "Lcom/google/a/b/i",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/a/b/a/g$a;->bik:Lcom/google/a/b/a/g;

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    new-instance v0, Lcom/google/a/b/a/m;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/a/b/a/m;-><init>(Lcom/google/a/f;Lcom/google/a/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/a/b/a/g$a;->bii:Lcom/google/a/u;

    new-instance v0, Lcom/google/a/b/a/m;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/a/b/a/m;-><init>(Lcom/google/a/f;Lcom/google/a/u;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/a/b/a/g$a;->bij:Lcom/google/a/u;

    iput-object p7, p0, Lcom/google/a/b/a/g$a;->bhW:Lcom/google/a/b/i;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v1

    sget-object v0, Lcom/google/a/d/b;->bku:Lcom/google/a/d/b;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/g$a;->bhW:Lcom/google/a/b/i;

    invoke-interface {v0}, Lcom/google/a/b/i;->vo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/a/d/b;->bkm:Lcom/google/a/d/b;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginArray()V

    iget-object v1, p0, Lcom/google/a/b/a/g$a;->bii:Lcom/google/a/u;

    invoke-virtual {v1, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/b/a/g$a;->bij:Lcom/google/a/u;

    invoke-virtual {v2, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/a/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->endArray()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/a/d/a;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/a/d/a;->beginObject()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/a/b/f;->bhv:Lcom/google/a/b/f;

    invoke-virtual {v1, p1}, Lcom/google/a/b/f;->b(Lcom/google/a/d/a;)V

    iget-object v1, p0, Lcom/google/a/b/a/g$a;->bii:Lcom/google/a/u;

    invoke-virtual {v1, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/b/a/g$a;->bij:Lcom/google/a/u;

    invoke-virtual {v2, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/a/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/a/d/a;->endObject()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/g$a;->bik:Lcom/google/a/b/a/g;

    iget-boolean v0, v0, Lcom/google/a/b/a/g;->bgA:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/a/d/c;->vD()Lcom/google/a/d/c;

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

    invoke-virtual {p1, v2}, Lcom/google/a/d/c;->do(Ljava/lang/String;)Lcom/google/a/d/c;

    iget-object v2, p0, Lcom/google/a/b/a/g$a;->bij:Lcom/google/a/u;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/c;->vE()Lcom/google/a/d/c;

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

    iget-object v6, p0, Lcom/google/a/b/a/g$a;->bii:Lcom/google/a/u;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/a/u;->ad(Ljava/lang/Object;)Lcom/google/a/k;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, v6, Lcom/google/a/i;

    if-nez v0, :cond_3

    instance-of v0, v6, Lcom/google/a/n;

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

    invoke-virtual {p1}, Lcom/google/a/d/c;->vB()Lcom/google/a/d/c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/a/d/c;->vB()Lcom/google/a/d/c;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    invoke-static {v0, p1}, Lcom/google/a/b/l;->a(Lcom/google/a/k;Lcom/google/a/d/c;)V

    iget-object v0, p0, Lcom/google/a/b/a/g$a;->bij:Lcom/google/a/u;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/a/d/c;->vC()Lcom/google/a/d/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/a/d/c;->vC()Lcom/google/a/d/c;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/a/d/c;->vD()Lcom/google/a/d/c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    instance-of v5, v0, Lcom/google/a/p;

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/google/a/k;->vh()Lcom/google/a/p;

    move-result-object v0

    iget-object v5, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/google/a/p;->ve()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/a/d/c;->do(Ljava/lang/String;)Lcom/google/a/d/c;

    iget-object v0, p0, Lcom/google/a/b/a/g$a;->bij:Lcom/google/a/u;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iget-object v5, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/google/a/p;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v5, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/google/a/p;->vf()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    instance-of v0, v0, Lcom/google/a/m;

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/a/d/c;->vE()Lcom/google/a/d/c;

    goto/16 :goto_0
.end method
