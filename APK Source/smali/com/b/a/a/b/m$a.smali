.class final Lcom/b/a/a/b/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Z

.field private final bKU:Lb/e;

.field private final bKV:Lcom/b/a/a/b/j;


# direct methods
.method constructor <init>(Lb/e;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    new-instance v0, Lcom/b/a/a/b/j;

    iget-object v1, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-direct {v0, v1}, Lcom/b/a/a/b/j;-><init>(Lb/e;)V

    iput-object v0, p0, Lcom/b/a/a/b/m$a;->bKV:Lcom/b/a/a/b/j;

    iput-boolean p2, p0, Lcom/b/a/a/b/m$a;->b:Z

    return-void
.end method

.method private a(Lcom/b/a/a/b/b$a;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v2}, Lb/e;->KZ()I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_0

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v4, Lcom/b/a/a/b/l;

    invoke-direct {v4}, Lcom/b/a/a/b/l;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v5}, Lb/e;->KZ()I

    move-result v5

    iget-object v6, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v6}, Lb/e;->KZ()I

    move-result v6

    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v6}, Lcom/b/a/a/b/l;->m(III)Lcom/b/a/a/b/l;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {p1, v0, v4}, Lcom/b/a/a/b/b$a;->a(ZLcom/b/a/a/b/l;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static varargs g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/b/a/a/b/b$a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/16 v9, 0x8

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v2

    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/high16 v0, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    ushr-int/lit8 v6, v5, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v3

    if-eqz v0, :cond_e

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version != 3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move v7, v1

    :goto_1
    return v7

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    int-to-long v2, v5

    invoke-interface {v0, v2, v3}, Lb/e;->at(J)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v0

    iget-object v2, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v2}, Lb/e;->KZ()I

    move-result v2

    and-int v3, v0, v8

    and-int v4, v2, v8

    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KY()S

    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKV:Lcom/b/a/a/b/j;

    add-int/lit8 v2, v5, -0xa

    invoke-virtual {v0, v2}, Lcom/b/a/a/b/j;->a(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_3

    move v2, v7

    :goto_2
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_2

    move v1, v7

    :cond_2
    sget-object v6, Lcom/b/a/a/b/e;->bKy:Lcom/b/a/a/b/e;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/b/a/a/b/b$a;->a(ZZIILjava/util/List;Lcom/b/a/a/b/e;)V

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v0

    and-int v3, v0, v8

    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKV:Lcom/b/a/a/b/j;

    add-int/lit8 v2, v5, -0x4

    invoke-virtual {v0, v2}, Lcom/b/a/a/b/j;->a(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_4

    move v2, v7

    :goto_3
    sget-object v6, Lcom/b/a/a/b/e;->bKz:Lcom/b/a/a/b/e;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/b/a/a/b/b$a;->a(ZZIILjava/util/List;Lcom/b/a/a/b/e;)V

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :pswitch_3
    if-eq v5, v9, :cond_5

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v0

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v2}, Lb/e;->KZ()I

    move-result v2

    invoke-static {v2}, Lcom/b/a/a/b/a;->dJ(I)Lcom/b/a/a/b/a;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-interface {p1, v0, v3}, Lcom/b/a/a/b/b$a;->a(ILcom/b/a/a/b/a;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, v6, v5}, Lcom/b/a/a/b/m$a;->a(Lcom/b/a/a/b/b$a;II)V

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x4

    if-eq v5, v0, :cond_7

    const-string v0, "TYPE_PING length: %d != 4"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v2

    iget-boolean v3, p0, Lcom/b/a/a/b/m$a;->b:Z

    and-int/lit8 v0, v2, 0x1

    if-ne v0, v7, :cond_8

    move v0, v7

    :goto_4
    if-ne v3, v0, :cond_9

    move v0, v7

    :goto_5
    invoke-interface {p1, v0, v2, v1}, Lcom/b/a/a/b/b$a;->a(ZII)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5

    :pswitch_6
    if-eq v5, v9, :cond_a

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v0

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v2}, Lb/e;->KZ()I

    move-result v2

    invoke-static {v2}, Lcom/b/a/a/b/a;->dL(I)Lcom/b/a/a/b/a;

    move-result-object v3

    if-nez v3, :cond_b

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b
    sget-object v1, Lb/f;->bKp:Lb/f;

    invoke-interface {p1, v0, v1}, Lcom/b/a/a/b/b$a;->a(ILb/f;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v0

    and-int v3, v0, v8

    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKV:Lcom/b/a/a/b/j;

    add-int/lit8 v2, v5, -0x4

    invoke-virtual {v0, v2}, Lcom/b/a/a/b/j;->a(I)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/b/a/a/b/e;->bKA:Lcom/b/a/a/b/e;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/b/a/a/b/b$a;->a(ZZIILjava/util/List;Lcom/b/a/a/b/e;)V

    goto/16 :goto_1

    :pswitch_8
    if-eq v5, v9, :cond_c

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v0}, Lb/e;->KZ()I

    move-result v0

    iget-object v2, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {v2}, Lb/e;->KZ()I

    move-result v2

    and-int/2addr v0, v8

    and-int/2addr v2, v8

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_d

    const-string v0, "windowSizeIncrement was 0"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/b/a/a/b/m$a;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-interface {p1, v0, v2, v3}, Lcom/b/a/a/b/b$a;->g(IJ)V

    goto/16 :goto_1

    :cond_e
    and-int v0, v2, v8

    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_f

    move v1, v7

    :cond_f
    iget-object v2, p0, Lcom/b/a/a/b/m$a;->bKU:Lb/e;

    invoke-interface {p1, v1, v0, v2, v5}, Lcom/b/a/a/b/b$a;->a(ZILb/e;I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/m$a;->bKV:Lcom/b/a/a/b/j;

    iget-object v0, v0, Lcom/b/a/a/b/j;->bKS:Lb/e;

    invoke-interface {v0}, Lb/e;->close()V

    return-void
.end method
