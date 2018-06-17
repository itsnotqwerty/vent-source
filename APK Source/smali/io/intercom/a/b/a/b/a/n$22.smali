.class final Lio/intercom/a/b/a/b/a/n$22;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<",
        "Lio/intercom/a/b/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method

.method private a(Lio/intercom/a/b/a/d/c;Lio/intercom/a/b/a/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    instance-of v0, p2, Lio/intercom/a/b/a/k;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lio/intercom/a/b/a/n;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lio/intercom/a/b/a/i;->Ka()Lio/intercom/a/b/a/n;

    move-result-object v0

    iget-object v1, v0, Lio/intercom/a/b/a/n;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/intercom/a/b/a/n;->ve()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->b(Ljava/lang/Number;)Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lio/intercom/a/b/a/n;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lio/intercom/a/b/a/n;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->bx(Z)Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lio/intercom/a/b/a/n;->vf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/intercom/a/b/a/d/c;->fe(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lio/intercom/a/b/a/g;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kj()Lio/intercom/a/b/a/d/c;

    instance-of v0, p2, Lio/intercom/a/b/a/g;

    if-eqz v0, :cond_5

    check-cast p2, Lio/intercom/a/b/a/g;

    invoke-virtual {p2}, Lio/intercom/a/b/a/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-direct {p0, p1, v0}, Lio/intercom/a/b/a/b/a/n$22;->a(Lio/intercom/a/b/a/d/c;Lio/intercom/a/b/a/i;)V

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
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kk()Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lio/intercom/a/b/a/l;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kl()Lio/intercom/a/b/a/d/c;

    instance-of v0, p2, Lio/intercom/a/b/a/l;

    if-eqz v0, :cond_8

    check-cast p2, Lio/intercom/a/b/a/l;

    iget-object v0, p2, Lio/intercom/a/b/a/l;->cRu:Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0}, Lio/intercom/a/b/a/b/g;->entrySet()Ljava/util/Set;

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

    invoke-virtual {p1, v1}, Lio/intercom/a/b/a/d/c;->fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/i;

    invoke-direct {p0, p1, v0}, Lio/intercom/a/b/a/b/a/n$22;->a(Lio/intercom/a/b/a/d/c;Lio/intercom/a/b/a/i;)V

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
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Km()Lio/intercom/a/b/a/d/c;

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

.method private l(Lio/intercom/a/b/a/d/a;)Lio/intercom/a/b/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lio/intercom/a/b/a/b/a/n$29;->bim:[I

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/a/b/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lio/intercom/a/b/a/n;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/n;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lio/intercom/a/b/a/n;

    new-instance v2, Lio/intercom/a/b/a/b/f;

    invoke-direct {v2, v1}, Lio/intercom/a/b/a/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lio/intercom/a/b/a/n;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lio/intercom/a/b/a/n;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/n;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    sget-object v0, Lio/intercom/a/b/a/k;->cRt:Lio/intercom/a/b/a/k;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lio/intercom/a/b/a/g;

    invoke-direct {v0}, Lio/intercom/a/b/a/g;-><init>()V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/a/n$22;->l(Lio/intercom/a/b/a/d/a;)Lio/intercom/a/b/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/g;->a(Lio/intercom/a/b/a/i;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endArray()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lio/intercom/a/b/a/l;

    invoke-direct {v0}, Lio/intercom/a/b/a/l;-><init>()V

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/a/n$22;->l(Lio/intercom/a/b/a/d/a;)Lio/intercom/a/b/a/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/b/a/l;->a(Ljava/lang/String;Lio/intercom/a/b/a/i;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->endObject()V

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
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/a/n$22;->l(Lio/intercom/a/b/a/d/a;)Lio/intercom/a/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lio/intercom/a/b/a/i;

    invoke-direct {p0, p1, p2}, Lio/intercom/a/b/a/b/a/n$22;->a(Lio/intercom/a/b/a/d/c;Lio/intercom/a/b/a/i;)V

    return-void
.end method
