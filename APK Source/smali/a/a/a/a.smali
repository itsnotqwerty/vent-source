.class public abstract La/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a$a;
    }
.end annotation


# static fields
.field protected static final coG:La/a/a/a/a;

.field protected static final coH:Ljava/util/logging/Logger;

.field protected static coL:I


# instance fields
.field protected final coI:Ljava/util/Random;

.field protected final coJ:La/a/a/b;

.field protected coK:La/a/a/h/a;

.field protected final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a;-><init>(B)V

    sput-object v0, La/a/a/a;->coG:La/a/a/a/a;

    const-class v0, La/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/a/a/a;->coH:Ljava/util/logging/Logger;

    sget v0, La/a/a/a$a;->coP:I

    sput v0, La/a/a/a;->coL:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    sget-object v0, La/a/a/a;->coG:La/a/a/a/a;

    invoke-direct {p0, v0}, La/a/a/a;-><init>(La/a/a/b;)V

    return-void
.end method

.method protected constructor <init>(La/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, La/a/a/a;->coI:Ljava/util/Random;

    new-instance v0, La/a/a/h/b;

    invoke-direct {v0}, La/a/a/h/b;-><init>()V

    iput-object v0, p0, La/a/a/a;->coK:La/a/a/h/a;

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, La/a/a/a;->random:Ljava/util/Random;

    iput-object p1, p0, La/a/a/a;->coJ:La/a/a/b;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method private a(La/a/a/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "La/a/a/g/a;",
            ">;"
        }
    .end annotation

    sget-object v0, La/a/a/k$b;->cri:La/a/a/k$b;

    invoke-direct {p0, p1, v0}, La/a/a/a;->a(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "La/a/a/g/g;",
            ">(",
            "La/a/a/e;",
            "La/a/a/k$b;",
            ")",
            "Ljava/util/Set",
            "<TD;>;"
        }
    .end annotation

    new-instance v0, La/a/a/j;

    invoke-direct {v0, p1, p2}, La/a/a/j;-><init>(La/a/a/e;La/a/a/k$b;)V

    invoke-virtual {p0, v0}, La/a/a/a;->b(La/a/a/j;)La/a/a/d;

    move-result-object v1

    iget-object v2, p0, La/a/a/a;->coJ:La/a/a/b;

    invoke-virtual {v2, v1}, La/a/a/b;->a(La/a/a/d;)La/a/a/d;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, La/a/a/d;->c(La/a/a/j;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private b(La/a/a/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "La/a/a/g/b;",
            ">;"
        }
    .end annotation

    sget-object v0, La/a/a/k$b;->crJ:La/a/a/k$b;

    invoke-direct {p0, p1, v0}, La/a/a/a;->a(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private b(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "La/a/a/g/g;",
            ">(",
            "La/a/a/e;",
            "La/a/a/k$b;",
            ")",
            "Ljava/util/Set",
            "<TD;>;"
        }
    .end annotation

    sget-object v0, La/a/a/k$b;->crj:La/a/a/k$b;

    invoke-direct {p0, p1, v0}, La/a/a/a;->a(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g/j;

    sget-object v3, La/a/a/a$1;->coM:[I

    invoke-virtual {p2}, La/a/a/k$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, v0, La/a/a/g/j;->cqS:La/a/a/e;

    invoke-direct {p0, v0}, La/a/a/a;->a(La/a/a/e;)Ljava/util/Set;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, v0, La/a/a/g/j;->cqS:La/a/a/e;

    invoke-direct {p0, v0}, La/a/a/a;->b(La/a/a/e;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/j;)La/a/a/d$a;
    .locals 3

    invoke-static {}, La/a/a/d;->FO()La/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/d$a;->d(La/a/a/j;)La/a/a/d$a;

    iget-object v1, p0, La/a/a/a;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, La/a/a/d$a;->id:I

    invoke-virtual {p0, v0}, La/a/a/a;->b(La/a/a/d$a;)La/a/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(La/a/a/d$a;)La/a/a/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final a(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, La/a/a/a;->coJ:La/a/a/b;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, La/a/a/a;->coJ:La/a/a/b;

    invoke-virtual {v0, p1}, La/a/a/b;->a(La/a/a/d;)La/a/a/d;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, La/a/a/d;->FM()La/a/a/j;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sget-object v0, La/a/a/a;->coH:Ljava/util/logging/Logger;

    const-string v3, "Asking {0} on {1} for {2} with:\n{3}"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p2, v4, v6

    const/16 v5, 0x35

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    aput-object p1, v4, v9

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, La/a/a/a;->coK:La/a/a/h/a;

    invoke-virtual {v0, p1, p2}, La/a/a/h/a;->a(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v3, La/a/a/a;->coH:Ljava/util/logging/Logger;

    const-string v4, "Response from {0} on {1} for {2}:\n{3}"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p2, v5, v6

    const/16 v6, 0x35

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, La/a/a/a;->coH:Ljava/util/logging/Logger;

    const-string v4, "IOException {0} on {1} while resolving {2}: {3}"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p2, v5, v6

    const/16 v6, 0x35

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    sget-object v2, La/a/a/a;->coH:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NULL response from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on 53 for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, La/a/a/a;->coJ:La/a/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, La/a/a/a;->a(La/a/a/j;La/a/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a;->coJ:La/a/a/b;

    invoke-virtual {p1}, La/a/a/d;->FN()La/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/d;->FN()La/a/a/d;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, La/a/a/b;->a(La/a/a/d;La/a/a/d;)V

    goto/16 :goto_1
.end method

.method public a(La/a/a/j;La/a/a/d;)Z
    .locals 2

    iget-object v0, p2, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0, p1}, La/a/a/k;->e(La/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b(La/a/a/d$a;)La/a/a/d$a;
.end method

.method protected final b(La/a/a/j;)La/a/a/d;
    .locals 1

    invoke-virtual {p0, p1}, La/a/a/a;->a(La/a/a/j;)La/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/d$a;->FQ()La/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(La/a/a/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "La/a/a/g/a;",
            ">;"
        }
    .end annotation

    sget-object v0, La/a/a/k$b;->cri:La/a/a/k$b;

    invoke-direct {p0, p1, v0}, La/a/a/a;->b(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d(La/a/a/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "La/a/a/g/b;",
            ">;"
        }
    .end annotation

    sget-object v0, La/a/a/k$b;->crJ:La/a/a/k$b;

    invoke-direct {p0, p1, v0}, La/a/a/a;->b(La/a/a/e;La/a/a/k$b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
