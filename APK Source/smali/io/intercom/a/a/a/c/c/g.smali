.class public Lio/intercom/a/a/a/c/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/h;


# instance fields
.field private bkc:I

.field public final cMG:Lio/intercom/a/a/a/c/c/h;

.field public final cMH:Ljava/lang/String;

.field public cMI:Ljava/lang/String;

.field public cMJ:Ljava/net/URL;

.field private volatile cMK:[B

.field public final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/c/h;->cMM:Lio/intercom/a/a/a/c/c/h;

    invoke-direct {p0, p1, v0}, Lio/intercom/a/a/a/c/c/g;-><init>(Ljava/lang/String;Lio/intercom/a/a/a/c/c/h;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/intercom/a/a/a/c/c/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->url:Ljava/net/URL;

    invoke-static {p1}, Lio/intercom/a/a/a/i/h;->fc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMH:Ljava/lang/String;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/h;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMG:Lio/intercom/a/a/a/c/c/h;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/c/h;->cMM:Lio/intercom/a/a/a/c/c/h;

    invoke-direct {p0, p1, v0}, Lio/intercom/a/a/a/c/c/g;-><init>(Ljava/net/URL;Lio/intercom/a/a/a/c/c/h;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/URL;Lio/intercom/a/a/a/c/c/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->url:Ljava/net/URL;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMH:Ljava/lang/String;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/h;

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMG:Lio/intercom/a/a/a/c/c/h;

    return-void
.end method

.method private IO()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMH:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMH:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/g;->url:Ljava/net/URL;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/c/c/g;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/c/g;

    invoke-direct {p0}, Lio/intercom/a/a/a/c/c/g;->IO()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lio/intercom/a/a/a/c/c/g;->IO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/g;->cMG:Lio/intercom/a/a/a/c/c/h;

    iget-object v2, p1, Lio/intercom/a/a/a/c/c/g;->cMG:Lio/intercom/a/a/a/c/c/h;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/c/g;->bkc:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/c/g;->IO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lio/intercom/a/a/a/c/c/g;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/c/g;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/c/g;->cMG:Lio/intercom/a/a/a/c/c/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/c/g;->bkc:I

    :cond_0
    iget v0, p0, Lio/intercom/a/a/a/c/c/g;->bkc:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/a/a/c/c/g;->IO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMK:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/c/g;->IO()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/c/c/g;->cIb:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMK:[B

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/g;->cMK:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
