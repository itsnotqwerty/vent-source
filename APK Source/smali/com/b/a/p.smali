.class public final Lcom/b/a/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/p$a;
    }
.end annotation


# static fields
.field private static final bLK:[Lcom/b/a/l;

.field public static final bLL:Lcom/b/a/p;

.field public static final bLM:Lcom/b/a/p;

.field public static final bLN:Lcom/b/a/p;


# instance fields
.field final bLO:[Ljava/lang/String;

.field final d:Z

.field public final e:Z

.field final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/b/a/l;

    sget-object v2, Lcom/b/a/l;->bHV:Lcom/b/a/l;

    aput-object v2, v0, v1

    sget-object v2, Lcom/b/a/l;->bHZ:Lcom/b/a/l;

    aput-object v2, v0, v6

    sget-object v2, Lcom/b/a/l;->bHh:Lcom/b/a/l;

    aput-object v2, v0, v7

    sget-object v2, Lcom/b/a/l;->bHx:Lcom/b/a/l;

    aput-object v2, v0, v8

    const/4 v2, 0x4

    sget-object v3, Lcom/b/a/l;->bHw:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/b/a/l;->bHG:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/b/a/l;->bHH:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/b/a/l;->bGQ:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/b/a/l;->bGP:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/b/a/l;->bGU:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/b/a/l;->bHf:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/b/a/l;->bGO:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/b/a/l;->bGS:Lcom/b/a/l;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/b/a/l;->bGs:Lcom/b/a/l;

    aput-object v3, v0, v2

    sput-object v0, Lcom/b/a/p;->bLK:[Lcom/b/a/l;

    new-instance v2, Lcom/b/a/p$a;

    invoke-direct {v2, v6}, Lcom/b/a/p$a;-><init>(Z)V

    sget-object v3, Lcom/b/a/p;->bLK:[Lcom/b/a/l;

    iget-boolean v0, v2, Lcom/b/a/p$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget-object v5, v3, v0

    iget-object v5, v5, Lcom/b/a/l;->bId:Ljava/lang/String;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, v2, Lcom/b/a/p$a;->bIH:[Ljava/lang/String;

    new-array v0, v8, [Lcom/b/a/d;

    sget-object v3, Lcom/b/a/d;->bFV:Lcom/b/a/d;

    aput-object v3, v0, v1

    sget-object v3, Lcom/b/a/d;->bFW:Lcom/b/a/d;

    aput-object v3, v0, v6

    sget-object v3, Lcom/b/a/d;->bFX:Lcom/b/a/d;

    aput-object v3, v0, v7

    invoke-virtual {v2, v0}, Lcom/b/a/p$a;->a([Lcom/b/a/d;)Lcom/b/a/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/p$a;->zY()Lcom/b/a/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/p$a;->zZ()Lcom/b/a/p;

    move-result-object v0

    sput-object v0, Lcom/b/a/p;->bLL:Lcom/b/a/p;

    new-instance v0, Lcom/b/a/p$a;

    sget-object v2, Lcom/b/a/p;->bLL:Lcom/b/a/p;

    invoke-direct {v0, v2}, Lcom/b/a/p$a;-><init>(Lcom/b/a/p;)V

    new-array v2, v6, [Lcom/b/a/d;

    sget-object v3, Lcom/b/a/d;->bFX:Lcom/b/a/d;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/b/a/p$a;->a([Lcom/b/a/d;)Lcom/b/a/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/p$a;->zY()Lcom/b/a/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/p$a;->zZ()Lcom/b/a/p;

    move-result-object v0

    sput-object v0, Lcom/b/a/p;->bLM:Lcom/b/a/p;

    new-instance v0, Lcom/b/a/p$a;

    invoke-direct {v0, v1}, Lcom/b/a/p$a;-><init>(Z)V

    invoke-virtual {v0}, Lcom/b/a/p$a;->zZ()Lcom/b/a/p;

    move-result-object v0

    sput-object v0, Lcom/b/a/p;->bLN:Lcom/b/a/p;

    return-void
.end method

.method private constructor <init>(Lcom/b/a/p$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/b/a/p$a;->a:Z

    iput-boolean v0, p0, Lcom/b/a/p;->d:Z

    iget-object v0, p1, Lcom/b/a/p$a;->bIH:[Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/p$a;->bIZ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    iget-boolean v0, p1, Lcom/b/a/p$a;->d:Z

    iput-boolean v0, p0, Lcom/b/a/p;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/p$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/p;-><init>(Lcom/b/a/p$a;)V

    return-void
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    array-length v4, p0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, p0, v3

    array-length v6, p1

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, p1, v2

    invoke-static {v5, v7}, Lcom/b/a/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v0

    :goto_3
    if-nez v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/p;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/b/a/d;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/b/a/d;->dA(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/b/a/a/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/p;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/b/a/p;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/b/a/p;

    iget-boolean v2, p0, Lcom/b/a/p;->d:Z

    iget-boolean v3, p1, Lcom/b/a/p;->d:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/b/a/p;->d:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/p;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/b/a/p;->e:Z

    iget-boolean v3, p1, Lcom/b/a/p;->e:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/b/a/p;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/b/a/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/b/a/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/b/a/p;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/p;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/b/a/p;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/b/a/p;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "[use default]"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/b/a/p;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/b/a/p;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/b/a/l;

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/b/a/p;->bLO:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/b/a/l;->dB(Ljava/lang/String;)Lcom/b/a/l;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    invoke-static {v1}, Lcom/b/a/a/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "ConnectionSpec()"

    goto :goto_2
.end method
