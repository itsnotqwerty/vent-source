.class public La/a/a/f/b;
.super La/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/f/b$a;
    }
.end annotation


# static fields
.field private static final ctn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final cto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field protected static final ctp:[Ljava/net/Inet4Address;

.field protected static final ctq:[Ljava/net/Inet6Address;


# instance fields
.field ctr:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v9, 0x500

    const/16 v8, 0xc0

    const/4 v7, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/f/b;->ctn:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/f/b;->cto:Ljava/util/Map;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/net/Inet4Address;

    const/16 v1, 0x61

    const/16 v2, 0xc6

    const/16 v3, 0x29

    invoke-static {v1, v2, v3, v7, v11}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const/16 v2, 0x62

    const/16 v3, 0xe4

    const/16 v4, 0x4f

    const/16 v5, 0xc9

    invoke-static {v2, v8, v3, v4, v5}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x21

    const/16 v3, 0xc

    invoke-static {v1, v8, v2, v11, v3}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/16 v3, 0xc7

    const/4 v4, 0x7

    const/16 v5, 0x5b

    const/16 v6, 0xd

    invoke-static {v2, v3, v4, v5, v6}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xcb

    const/16 v3, 0xe6

    const/16 v4, 0xa

    invoke-static {v1, v8, v2, v3, v4}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const/16 v2, 0x66

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v5, 0xf1

    invoke-static {v2, v8, v3, v4, v5}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x67

    const/16 v3, 0x70

    const/16 v4, 0x24

    invoke-static {v2, v8, v3, v4, v11}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x68

    const/16 v3, 0xc6

    const/16 v4, 0x61

    const/16 v5, 0xbe

    const/16 v6, 0x35

    invoke-static {v2, v3, v4, v5, v6}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x69

    const/16 v3, 0x24

    const/16 v4, 0x94

    const/16 v5, 0x11

    invoke-static {v2, v8, v3, v4, v5}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x6a

    const/16 v3, 0x3a

    const/16 v4, 0x80

    const/16 v5, 0x1e

    invoke-static {v2, v8, v3, v4, v5}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x6b

    const/16 v3, 0xc1

    const/16 v4, 0xe

    const/16 v5, 0x81

    invoke-static {v2, v3, v7, v4, v5}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x6c

    const/16 v3, 0xc7

    const/4 v4, 0x7

    const/16 v5, 0x53

    const/16 v6, 0x2a

    invoke-static {v2, v3, v4, v5, v6}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x6d

    const/16 v3, 0xca

    const/16 v4, 0xc

    const/16 v5, 0x1b

    const/16 v6, 0x21

    invoke-static {v2, v3, v4, v5, v6}, La/a/a/f/b;->a(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, La/a/a/f/b;->ctp:[Ljava/net/Inet4Address;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/net/Inet6Address;

    const/16 v1, 0x61

    const/16 v2, 0x503

    const v3, 0xba3e

    const/16 v4, 0x30

    invoke-static {v1, v2, v3, v10, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const/16 v2, 0x62

    const/16 v3, 0x84

    const/16 v4, 0xb

    invoke-static {v2, v9, v3, v7, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0xc

    invoke-static {v1, v9, v10, v7, v2}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/16 v3, 0x2d

    const/16 v4, 0xd

    invoke-static {v2, v9, v3, v7, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2f

    const/16 v3, 0xf

    invoke-static {v1, v9, v2, v7, v3}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const/16 v2, 0x68

    const/4 v3, 0x1

    const/16 v4, 0x53

    invoke-static {v2, v9, v3, v7, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x69

    const/16 v3, 0x7fe

    const/16 v4, 0x53

    invoke-static {v2, v3, v7, v7, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x6a

    const/16 v3, 0x503

    const/16 v4, 0xc27

    const/16 v5, 0x30

    invoke-static {v2, v3, v4, v10, v5}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x6c

    const/4 v3, 0x3

    const/16 v4, 0x42

    invoke-static {v2, v9, v3, v7, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x6d

    const/16 v3, 0xdc3

    const/16 v4, 0x35

    invoke-static {v2, v3, v7, v7, v4}, La/a/a/f/b;->b(CIIII)Ljava/net/Inet6Address;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, La/a/a/f/b;->ctq:[Ljava/net/Inet6Address;

    return-void
.end method

.method public constructor <init>(La/a/a/b;)V
    .locals 1

    invoke-direct {p0, p1}, La/a/a/a;-><init>(La/a/a/b;)V

    const/16 v0, 0x80

    iput v0, p0, La/a/a/f/b;->ctr:I

    return-void
.end method

.method private Gc()Ljava/net/Inet4Address;
    .locals 3

    sget-object v0, La/a/a/f/b;->ctp:[Ljava/net/Inet4Address;

    iget-object v1, p0, La/a/a/f/b;->coI:Ljava/util/Random;

    sget-object v2, La/a/a/f/b;->ctp:[Ljava/net/Inet4Address;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private Gd()Ljava/net/Inet6Address;
    .locals 3

    sget-object v0, La/a/a/f/b;->ctq:[Ljava/net/Inet6Address;

    iget-object v1, p0, La/a/a/f/b;->coI:Ljava/util/Random;

    sget-object v2, La/a/a/f/b;->ctq:[Ljava/net/Inet6Address;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private Ge()La/a/a/f/b$a$a;
    .locals 3

    new-instance v0, La/a/a/f/b$a$a;

    iget-object v1, p0, La/a/a/f/b;->coI:Ljava/util/Random;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/f/b$a$a;-><init>(Ljava/util/Random;B)V

    return-object v0
.end method

.method static synthetic Gf()I
    .locals 1

    sget v0, La/a/a/f/b;->coL:I

    return v0
.end method

.method static synthetic Gg()I
    .locals 1

    sget v0, La/a/a/f/b;->coL:I

    return v0
.end method

.method static synthetic Gh()I
    .locals 1

    sget v0, La/a/a/f/b;->coL:I

    return v0
.end method

.method static synthetic Gi()I
    .locals 1

    sget v0, La/a/a/f/b;->coL:I

    return v0
.end method

.method private a(La/a/a/f/d;La/a/a/d;)La/a/a/d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, La/a/a/d;->FM()La/a/a/j;

    move-result-object v0

    iget-object v0, v0, La/a/a/j;->cqS:La/a/a/e;

    invoke-virtual {v0}, La/a/a/e;->FT()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, La/a/a/e;->cqe:La/a/a/e;

    :cond_0
    :goto_0
    sget-object v1, La/a/a/f/b$1;->cpa:[I

    sget v4, La/a/a/f/b;->coL:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {v0}, La/a/a/e;->FS()V

    iget-object v1, v0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0}, La/a/a/e;->FS()V

    iget-object v1, v0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v1, v1

    if-le v4, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v1, v0, La/a/a/e;->cqi:[Ljava/lang/String;

    array-length v1, v1

    if-eq v4, v1, :cond_0

    if-nez v4, :cond_3

    sget-object v0, La/a/a/e;->cqe:La/a/a/e;

    goto :goto_0

    :cond_3
    new-array v5, v4, [Ljava/lang/String;

    move v1, v3

    :goto_1
    if-ge v1, v4, :cond_4

    iget-object v6, v0, La/a/a/e;->cqi:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, La/a/a/e;

    invoke-direct {v0, v5}, La/a/a/e;-><init>([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, La/a/a/f/b;->c(La/a/a/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g/a;

    if-nez v1, :cond_5

    invoke-virtual {v0}, La/a/a/g/a;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, La/a/a/g/a;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_3
    if-nez v1, :cond_6

    sget-object v3, La/a/a/e;->cqf:La/a/a/e;

    sget-object v3, La/a/a/f/b$1;->cpa:[I

    sget v4, La/a/a/f/b;->coL:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :cond_6
    :goto_4
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_5
    return-object v2

    :pswitch_1
    invoke-virtual {p0, v0}, La/a/a/f/b;->d(La/a/a/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g/b;

    if-nez v1, :cond_7

    invoke-virtual {v0}, La/a/a/g/b;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, La/a/a/g/b;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v0}, La/a/a/f/b;->c(La/a/a/e;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0}, La/a/a/f/b;->d(La/a/a/e;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, La/a/a/f/b;->a(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;

    move-result-object v0

    aget-object v1, v0, v3

    aget-object v0, v0, v7

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v0}, La/a/a/f/b;->d(La/a/a/e;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0}, La/a/a/f/b;->c(La/a/a/e;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, La/a/a/f/b;->a(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;

    move-result-object v0

    aget-object v1, v0, v3

    aget-object v0, v0, v7

    goto :goto_3

    :pswitch_4
    invoke-direct {p0}, La/a/a/f/b;->Gc()Ljava/net/Inet4Address;

    move-result-object v1

    goto :goto_4

    :pswitch_5
    invoke-direct {p0}, La/a/a/f/b;->Gd()Ljava/net/Inet6Address;

    move-result-object v1

    goto :goto_4

    :pswitch_6
    invoke-direct {p0}, La/a/a/f/b;->Gc()Ljava/net/Inet4Address;

    move-result-object v1

    invoke-direct {p0}, La/a/a/f/b;->Gd()Ljava/net/Inet6Address;

    move-result-object v0

    goto :goto_4

    :pswitch_7
    invoke-direct {p0}, La/a/a/f/b;->Gd()Ljava/net/Inet6Address;

    move-result-object v1

    invoke-direct {p0}, La/a/a/f/b;->Gc()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-static {v1}, La/a/a/f/b;->c(Ljava/io/IOException;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_8

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v3}, La/a/a/i/f;->B(Ljava/util/List;)V

    goto :goto_5

    :cond_9
    move-object v0, v2

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(La/a/a/f/d;La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, La/a/a/d;->FM()La/a/a/j;

    move-result-object v2

    iget-object v0, p1, La/a/a/f/d;->ctD:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, La/a/a/f/d;->ctD:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p1, La/a/a/f/d;->ctE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, La/a/a/f/d;->ctE:I

    iget-object v3, p1, La/a/a/f/d;->ctv:La/a/a/f/b;

    iget v3, v3, La/a/a/f/b;->ctr:I

    if-le v0, v3, :cond_2

    new-instance v0, La/a/a/f/a$b;

    invoke-direct {v0}, La/a/a/f/a$b;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p1, La/a/a/f/d;->ctD:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/f/a$a;

    invoke-direct {v0}, La/a/a/f/a$a;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p1, La/a/a/f/d;->ctD:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v2, La/a/a/f/d;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-super {p0, p2, p3}, La/a/a/a;->a(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_4
    iget-boolean v0, v2, La/a/a/d;->cpf:Z

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v2, La/a/a/d;->cpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v2, La/a/a/d;->cpn:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    iget-object v6, v0, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v7, La/a/a/k$b;->crj:La/a/a/k$b;

    if-eq v6, v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_7
    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/j;

    iget-object v0, v0, La/a/a/g/j;->cqS:La/a/a/e;

    invoke-direct {p0, v2, v0}, La/a/a/f/b;->a(La/a/a/d;La/a/a/e;)La/a/a/f/b$a;

    move-result-object v0

    iget-object v0, v0, La/a/a/f/b$a;->cts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, La/a/a/f/b;->c(Ljava/io/IOException;)V

    sget-object v7, La/a/a/f/b;->coH:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v9, "Exception while recursing"

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, La/a/a/f/d;->Gk()V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {p2}, La/a/a/d;->FM()La/a/a/j;

    move-result-object v3

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/j;

    iget-object v0, v0, La/a/a/g/j;->cqS:La/a/a/e;

    iget-object v5, v3, La/a/a/j;->cqS:La/a/a/e;

    invoke-virtual {v5, v0}, La/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v3, La/a/a/j;->cqT:La/a/a/k$b;

    sget-object v6, La/a/a/k$b;->cri:La/a/a/k$b;

    if-eq v5, v6, :cond_a

    iget-object v3, v3, La/a/a/j;->cqT:La/a/a/k$b;

    sget-object v5, La/a/a/k$b;->crJ:La/a/a/k$b;

    if-eq v3, v5, :cond_a

    :cond_b
    :try_start_1
    invoke-direct {p0, p1, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/e;)La/a/a/f/b$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_a

    iget-object v0, v0, La/a/a/f/b$a;->cts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p1}, La/a/a/f/d;->Gk()V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {p1}, La/a/a/f/d;->Gk()V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-static {v4}, La/a/a/i/f;->B(Ljava/util/List;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(La/a/a/d;La/a/a/e;)La/a/a/f/b$a;
    .locals 5

    invoke-direct {p0}, La/a/a/f/b;->Ge()La/a/a/f/b$a$a;

    move-result-object v1

    iget-object v0, p1, La/a/a/d;->cpo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    iget-object v3, v0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v3, p2}, La/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, La/a/a/f/b$1;->coM:[I

    iget-object v4, v0, La/a/a/k;->cqT:La/a/a/k$b;

    invoke-virtual {v4}, La/a/a/k$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, v1, La/a/a/f/b$a$a;->ctt:Ljava/util/List;

    iget-object v4, p2, La/a/a/e;->cqh:Ljava/lang/String;

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/a;

    invoke-static {v4, v0}, La/a/a/f/b;->a(Ljava/lang/String;La/a/a/g/a;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v3, v1, La/a/a/f/b$a$a;->ctu:Ljava/util/List;

    iget-object v4, p2, La/a/a/e;->cqh:Ljava/lang/String;

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/b;

    invoke-static {v4, v0}, La/a/a/f/b;->a(Ljava/lang/String;La/a/a/g/b;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, La/a/a/f/b$a$a;->Gj()La/a/a/f/b$a;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(La/a/a/f/d;La/a/a/e;)La/a/a/f/b$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, La/a/a/f/b;->Ge()La/a/a/f/b$a$a;

    move-result-object v1

    sget v0, La/a/a/f/b;->coL:I

    sget v2, La/a/a/a$a;->coO:I

    if-eq v0, v2, :cond_2

    new-instance v2, La/a/a/j;

    sget-object v0, La/a/a/k$b;->cri:La/a/a/k$b;

    invoke-direct {v2, p2, v0}, La/a/a/j;-><init>(La/a/a/e;La/a/a/k$b;)V

    invoke-virtual {p0, v2}, La/a/a/f/b;->b(La/a/a/j;)La/a/a/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;)La/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0, v2}, La/a/a/k;->e(La/a/a/j;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p2, La/a/a/e;->cqh:Ljava/lang/String;

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/a;

    invoke-static {v4, v0}, La/a/a/f/b;->a(Ljava/lang/String;La/a/a/g/a;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v4, v1, La/a/a/f/b$a$a;->ctt:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, v0, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v5, La/a/a/k$b;->crm:La/a/a/k$b;

    if-ne v4, v5, :cond_0

    iget-object v4, v0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v4, p2}, La/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/c;

    iget-object p2, v0, La/a/a/g/c;->cqS:La/a/a/e;

    goto :goto_0

    :cond_2
    sget v0, La/a/a/f/b;->coL:I

    sget v2, La/a/a/a$a;->coN:I

    if-eq v0, v2, :cond_5

    new-instance v2, La/a/a/j;

    sget-object v0, La/a/a/k$b;->crJ:La/a/a/k$b;

    invoke-direct {v2, p2, v0}, La/a/a/j;-><init>(La/a/a/e;La/a/a/k$b;)V

    invoke-virtual {p0, v2}, La/a/a/f/b;->b(La/a/a/j;)La/a/a/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;)La/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0, v2}, La/a/a/k;->e(La/a/a/j;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p2, La/a/a/e;->cqh:Ljava/lang/String;

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/b;

    invoke-static {v4, v0}, La/a/a/f/b;->a(Ljava/lang/String;La/a/a/g/b;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v4, v1, La/a/a/f/b$a$a;->ctu:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v4, v0, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v5, La/a/a/k$b;->crm:La/a/a/k$b;

    if-ne v4, v5, :cond_3

    iget-object v4, v0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v4, p2}, La/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v0, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/c;

    iget-object p2, v0, La/a/a/g/c;->cqS:La/a/a/e;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, La/a/a/f/b$a$a;->Gj()La/a/a/f/b$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(CIIII)Ljava/net/Inet4Address;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".root-servers.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v3, p4

    aput-byte v3, v1, v2

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sget-object v1, La/a/a/f/b;->ctn:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;La/a/a/g/a;)Ljava/net/InetAddress;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, La/a/a/g/a;->Gm()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;La/a/a/g/b;)Ljava/net/InetAddress;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, La/a/a/g/b;->Gm()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "La/a/a/g/h;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "La/a/a/g/h;",
            ">;)[",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/net/InetAddress;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g/h;

    aget-object v3, v1, v4

    if-nez v3, :cond_1

    invoke-virtual {v0}, La/a/a/g/h;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    aget-object v2, v1, v5

    if-nez v2, :cond_2

    invoke-virtual {v0}, La/a/a/g/h;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    aput-object v0, v1, v5

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g/h;

    aget-object v3, v1, v4

    if-nez v3, :cond_3

    invoke-virtual {v0}, La/a/a/g/h;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_0

    :cond_3
    aget-object v2, v1, v5

    if-nez v2, :cond_4

    invoke-virtual {v0}, La/a/a/g/h;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    aput-object v0, v1, v5

    :cond_4
    return-object v1
.end method

.method private static b(CIIII)Ljava/net/Inet6Address;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".root-servers.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    shr-int/lit8 v3, p4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    int-to-byte v3, p4

    aput-byte v3, v1, v2

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    sget-object v1, La/a/a/f/b;->cto:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static c(Ljava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, La/a/a/f/a$a;

    if-eqz v0, :cond_0

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(La/a/a/d$a;)La/a/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, La/a/a/d$a;->FQ()La/a/a/d;

    move-result-object v0

    new-instance v1, La/a/a/f/d;

    invoke-direct {v1, p0}, La/a/a/f/d;-><init>(La/a/a/f/b;)V

    invoke-direct {p0, v1, v0}, La/a/a/f/b;->a(La/a/a/f/d;La/a/a/d;)La/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(La/a/a/j;La/a/a/d;)Z
    .locals 1

    iget-boolean v0, p2, La/a/a/d;->cpf:Z

    return v0
.end method

.method protected b(La/a/a/d$a;)La/a/a/d$a;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p1, La/a/a/d$a;->cph:Z

    invoke-virtual {p1}, La/a/a/d$a;->FP()La/a/a/g$a;

    move-result-object v0

    iget-object v1, p0, La/a/a/f/b;->coK:La/a/a/h/a;

    invoke-virtual {v1}, La/a/a/h/a;->Gn()I

    move-result v1

    invoke-virtual {v0, v1}, La/a/a/g$a;->eX(I)La/a/a/g$a;

    return-object p1
.end method
