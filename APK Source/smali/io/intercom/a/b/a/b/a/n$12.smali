.class final Lio/intercom/a/b/a/b/a/n$12;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method

.method private static j(Lio/intercom/a/b/a/d/a;)Ljava/util/BitSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->beginArray()V

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    move v1, v2

    :goto_0
    sget-object v5, Lio/intercom/a/b/a/d/b;->cTx:Lio/intercom/a/b/a/d/b;

    if-eq v0, v5, :cond_3

    sget-object v5, Lio/intercom/a/b/a/b/a/n$29;->bim:[I

    invoke-virtual {v0}, Lio/intercom/a/b/a/d/b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v1, Lio/intercom/a/b/a/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid bitset value type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->nextInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->nextBoolean()Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Lio/intercom/a/b/a/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->endArray()V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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

    invoke-static {p1}, Lio/intercom/a/b/a/b/a/n$12;->j(Lio/intercom/a/b/a/d/a;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kj()Lio/intercom/a/b/a/d/c;

    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    int-to-long v4, v0

    invoke-virtual {p1, v4, v5}, Lio/intercom/a/b/a/d/c;->Y(J)Lio/intercom/a/b/a/d/c;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kk()Lio/intercom/a/b/a/d/c;

    return-void
.end method
