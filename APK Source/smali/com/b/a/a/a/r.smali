.class public final Lcom/b/a/a/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/a/t;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bGg:Lcom/b/a/a/a/g;

.field private final bJN:Lcom/b/a/a/b/n;

.field private bJO:Lcom/b/a/a/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Lb/f;

    const-string v1, "connection"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/b/a/a/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/r;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lb/f;

    const-string v1, "connection"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    invoke-static {v1}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    invoke-static {v2}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    invoke-static {v2}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    invoke-static {v2}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/b/a/a/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/a/r;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/a/g;Lcom/b/a/a/b/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/r;->bGg:Lcom/b/a/a/a/g;

    iput-object p2, p0, Lcom/b/a/a/a/r;->bJN:Lcom/b/a/a/b/n;

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/a/r;)Lcom/b/a/a/b/n;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJN:Lcom/b/a/a/b/n;

    return-object v0
.end method

.method public static a(Lcom/b/a/aa;Ljava/util/List;Lcom/b/a/y;)Lcom/b/a/ac$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/aa;",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;",
            "Lcom/b/a/y;",
            ")",
            "Lcom/b/a/ac$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v5, Lcom/b/a/t$a;

    invoke-direct {v5}, Lcom/b/a/t$a;-><init>()V

    sget-object v1, Lcom/b/a/a/a/j;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/b/a/y;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/b/a/t$a;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v7, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0x00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    move-object v0, v1

    :goto_1
    if-ge v4, v9, :cond_4

    aget-object v1, v8, v4

    sget-object v10, Lcom/b/a/a/b/d;->bKq:Lb/f;

    invoke-virtual {v7, v10}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v3, v1

    :cond_0
    :goto_2
    invoke-static {p2, v7}, Lcom/b/a/a/a/r;->a(Lcom/b/a/y;Lb/f;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7}, Lb/f;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v1}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/b/a/a/b/d;->bKt:Lb/f;

    invoke-virtual {v7, v10}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    sget-object v10, Lcom/b/a/a/b/d;->bKr:Lb/f;

    invoke-virtual {v7, v10}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-nez v1, :cond_7

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':path\',\':host\', \':scheme\' headers are not set"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/b/a/ac$a;

    invoke-direct {v0}, Lcom/b/a/ac$a;-><init>()V

    const/16 v1, 0xc8

    iput v1, v0, Lcom/b/a/ac$a;->c:I

    const-string v1, "OK"

    iput-object v1, v0, Lcom/b/a/ac$a;->d:Ljava/lang/String;

    iput-object p0, v0, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iput-object p2, v0, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    invoke-virtual {v5}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ac$a;->e(Lcom/b/a/t;)Lcom/b/a/ac$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/y;Lb/f;)Z
    .locals 1

    sget-object v0, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/b/a/a/a/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/b/a/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic b(Lcom/b/a/a/a/r;)Lcom/b/a/a/a/g;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/r;->bGg:Lcom/b/a/a/a/g;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/b/a/aa;J)Lb/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Lcom/b/a/a/b/p;->zV()Lb/r;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Lcom/b/a/a/b/p;->zV()Lb/r;

    move-result-object v0

    invoke-interface {v0}, Lb/r;->close()V

    return-void
.end method

.method public final a(Lcom/b/a/a/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Lcom/b/a/a/b/p;->zV()Lb/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/b/a/a/a/n;->a(Lb/r;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Lcom/b/a/aa;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/r;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v0}, Lcom/b/a/a/a/g;->b()V

    iget-object v0, p0, Lcom/b/a/a/a/r;->bGg:Lcom/b/a/a/a/g;

    invoke-virtual {v0}, Lcom/b/a/a/a/g;->c()Z

    move-result v4

    iget-object v0, p0, Lcom/b/a/a/a/r;->bGg:Lcom/b/a/a/a/g;

    iget-object v0, v0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    invoke-static {v0}, Lcom/b/a/a/a/m;->a(Lcom/b/a/y;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/b/a/a/a/r;->bJN:Lcom/b/a/a/b/n;

    iget-object v1, p0, Lcom/b/a/a/a/r;->bJN:Lcom/b/a/a/b/n;

    iget-object v6, v1, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    iget-object v7, p1, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/b/a/a/b/d;

    sget-object v3, Lcom/b/a/a/b/d;->bKp:Lb/f;

    iget-object v9, p1, Lcom/b/a/aa;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v9}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/b/a/a/b/d;

    sget-object v3, Lcom/b/a/a/b/d;->bKq:Lb/f;

    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/b/a/a/a/m;->d(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/a/a/g;->d(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    if-ne v3, v6, :cond_3

    new-instance v3, Lcom/b/a/a/b/d;

    sget-object v9, Lcom/b/a/a/b/d;->bKu:Lb/f;

    invoke-direct {v3, v9, v0}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/b/a/a/b/d;

    sget-object v3, Lcom/b/a/a/b/d;->bKt:Lb/f;

    invoke-direct {v0, v3, v1}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Lcom/b/a/a/b/d;

    sget-object v1, Lcom/b/a/a/b/d;->bKr:Lb/f;

    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v7, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v10, v0, 0x2

    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_7

    invoke-virtual {v7, v3}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/f;->fn(Ljava/lang/String;)Lb/f;

    move-result-object v11

    invoke-virtual {v7, v3}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v11}, Lcom/b/a/a/a/r;->a(Lcom/b/a/y;Lb/f;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/a/b/d;->bKp:Lb/f;

    invoke-virtual {v11, v0}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/a/b/d;->bKq:Lb/f;

    invoke-virtual {v11, v0}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/a/b/d;->bKr:Lb/f;

    invoke-virtual {v11, v0}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/a/b/d;->bKs:Lb/f;

    invoke-virtual {v11, v0}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/a/b/d;->bKt:Lb/f;

    invoke-virtual {v11, v0}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/b/a/a/b/d;->bKu:Lb/f;

    invoke-virtual {v11, v0}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/b/a/a/b/d;

    invoke-direct {v0, v11, v12}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-ne v0, v6, :cond_4

    new-instance v0, Lcom/b/a/a/b/d;

    sget-object v3, Lcom/b/a/a/b/d;->bKs:Lb/f;

    invoke-direct {v0, v3, v1}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v1, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    invoke-virtual {v0, v11}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Lcom/b/a/a/b/d;

    invoke-direct {v12, v11, v0}, Lcom/b/a/a/b/d;-><init>(Lb/f;Ljava/lang/String;)V

    invoke-interface {v8, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v8, v4}, Lcom/b/a/a/b/n;->b(Ljava/util/List;Z)Lcom/b/a/a/b/p;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    iget-object v0, v0, Lcom/b/a/a/b/p;->bLE:Lcom/b/a/a/b/p$c;

    iget-object v1, p0, Lcom/b/a/a/a/r;->bGg:Lcom/b/a/a/a/g;

    iget-object v1, v1, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget v1, v1, Lcom/b/a/x;->z:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/t;->c(JLjava/util/concurrent/TimeUnit;)Lb/t;

    iget-object v0, p1, Lcom/b/a/aa;->bMr:Lcom/b/a/z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    new-instance v2, Lcom/b/a/a/a/r$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/b/a/a/a/r$1;-><init>(Lcom/b/a/a/a/r;Lcom/b/a/aa;Lcom/b/a/z;)V

    iput-object v2, v1, Lcom/b/a/a/b/p;->bLB:Lcom/b/a/a/b/o;

    goto/16 :goto_0
.end method

.method public final d(Lcom/b/a/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    sget-object v1, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/p;->a(Lcom/b/a/a/b/a;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Lcom/b/a/ac;)Lcom/b/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/b/a/a/a/k;

    iget-object v1, p1, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    iget-object v2, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    iget-object v2, v2, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    invoke-static {v2}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/k;-><init>(Lcom/b/a/t;Lb/e;)V

    return-object v0
.end method

.method public final zG()Lcom/b/a/ac$a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJO:Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Lcom/b/a/a/b/p;->zU()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/b/a/a/a/r;->bJN:Lcom/b/a/a/b/n;

    iget-object v7, v0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    const/4 v2, 0x0

    const-string v4, "HTTP/1.1"

    new-instance v8, Lcom/b/a/t$a;

    invoke-direct {v8}, Lcom/b/a/t$a;-><init>()V

    sget-object v0, Lcom/b/a/a/a/j;->d:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/b/a/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/b/a/t$a;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move v5, v3

    :goto_0
    if-ge v5, v9, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v10, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/d;

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKw:Lb/f;

    invoke-virtual {v0}, Lb/f;->a()Ljava/lang/String;

    move-result-object v11

    move v1, v3

    move-object v0, v4

    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v12, -0x1

    if-ne v4, v12, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lcom/b/a/a/b/d;->bKo:Lb/f;

    invoke-virtual {v10, v12}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v2, v1

    :cond_1
    :goto_2
    add-int/lit8 v1, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v12, Lcom/b/a/a/b/d;->bKu:Lb/f;

    invoke-virtual {v10, v12}, Lb/f;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-static {v7, v10}, Lcom/b/a/a/a/r;->a(Lcom/b/a/y;Lb/f;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v10}, Lb/f;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v1}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v4, v0

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/s;->dG(Ljava/lang/String;)Lcom/b/a/a/a/s;

    move-result-object v0

    new-instance v1, Lcom/b/a/ac$a;

    invoke-direct {v1}, Lcom/b/a/ac$a;-><init>()V

    iput-object v7, v1, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    iget v2, v0, Lcom/b/a/a/a/s;->b:I

    iput v2, v1, Lcom/b/a/ac$a;->c:I

    iget-object v0, v0, Lcom/b/a/a/a/s;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/b/a/ac$a;->d:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/ac$a;->e(Lcom/b/a/t;)Lcom/b/a/ac$a;

    move-result-object v0

    return-object v0
.end method
