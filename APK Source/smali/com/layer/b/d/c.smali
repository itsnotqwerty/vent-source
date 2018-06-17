.class public final Lcom/layer/b/d/c;
.super Lcom/layer/b/f/c/d;


# instance fields
.field public bvQ:Ljava/lang/Long;

.field public bvR:Ljava/lang/Long;

.field public bvS:Ljava/util/UUID;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/layer/b/f/c/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/b/d/c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/layer/b/f/c/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/layer/b/f/c/d;-><init>(Lcom/layer/b/f/c/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/b/d/c;-><init>(Lcom/layer/b/f/c/d;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/UUID;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/layer/b/f/c/d;->byi:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/layer/b/e/d;->d(Ljava/util/UUID;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public final d()Ljava/util/UUID;
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/c;->yr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/d/c;->yq()[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/layer/b/d/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/layer/b/f/c/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/b/d/c;

    iget-object v2, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    iget-object v3, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    iget-object v3, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    iget-object v3, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/layer/b/f/c/d;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{mDatabaseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/d/c;->d()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStreamDatabaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/c;->bvR:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/layer/b/f/c/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
