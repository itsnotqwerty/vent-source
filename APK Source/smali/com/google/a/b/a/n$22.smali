.class final Lcom/google/a/b/a/n$22;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/u",
        "<",
        "Lcom/google/a/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    return-void
.end method

.method private a(Lcom/google/a/d/c;Lcom/google/a/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/google/a/m;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/google/a/p;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/a/k;->vh()Lcom/google/a/p;

    move-result-object v0

    iget-object v1, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/a/p;->ve()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/c;->a(Ljava/lang/Number;)Lcom/google/a/d/c;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/a/p;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/a/p;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/c;->aG(Z)Lcom/google/a/d/c;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/a/p;->vf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/a/d/c;->dp(Ljava/lang/String;)Lcom/google/a/d/c;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lcom/google/a/i;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/a/d/c;->vB()Lcom/google/a/d/c;

    instance-of v0, p2, Lcom/google/a/i;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/google/a/i;

    invoke-virtual {p2}, Lcom/google/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/a/n$22;->a(Lcom/google/a/d/c;Lcom/google/a/k;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p1}, Lcom/google/a/d/c;->vC()Lcom/google/a/d/c;

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lcom/google/a/n;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/a/d/c;->vD()Lcom/google/a/d/c;

    instance-of v0, p2, Lcom/google/a/n;

    if-eqz v0, :cond_8

    check-cast p2, Lcom/google/a/n;

    iget-object v0, p2, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    invoke-virtual {v0}, Lcom/google/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/a/d/c;->do(Ljava/lang/String;)Lcom/google/a/d/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/a/n$22;->a(Lcom/google/a/d/c;Lcom/google/a/k;)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a JSON Object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {p1}, Lcom/google/a/d/c;->vE()Lcom/google/a/d/c;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(Lcom/google/a/d/a;)Lcom/google/a/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/a/n$30;->bim:[I

    invoke-virtual {p1}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/a/p;

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/p;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/a/p;

    new-instance v2, Lcom/google/a/b/g;

    invoke-direct {v2, v1}, Lcom/google/a/b/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/a/p;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/a/p;

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/p;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/a/d/a;->nextNull()V

    sget-object v0, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/a/i;

    invoke-direct {v0}, Lcom/google/a/i;-><init>()V

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/a/b/a/n$22;->l(Lcom/google/a/d/a;)Lcom/google/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/i;->a(Lcom/google/a/k;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/a;->endArray()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/a/n;

    invoke-direct {v0}, Lcom/google/a/n;-><init>()V

    invoke-virtual {p1}, Lcom/google/a/d/a;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/a/b/a/n$22;->l(Lcom/google/a/d/a;)Lcom/google/a/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/n;->a(Ljava/lang/String;Lcom/google/a/k;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/a/d/a;->endObject()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/a/b/a/n$22;->l(Lcom/google/a/d/a;)Lcom/google/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/a/k;

    invoke-direct {p0, p1, p2}, Lcom/google/a/b/a/n$22;->a(Lcom/google/a/d/c;Lcom/google/a/k;)V

    return-void
.end method
