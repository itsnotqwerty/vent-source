.class public Lcom/amazonaws/services/s3/model/Owner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arj:Ljava/lang/String;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/amazonaws/services/s3/model/Owner;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/amazonaws/services/s3/model/Owner;

    iget-object v4, p1, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/Owner;->arj:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->arj:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S3Owner [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Owner;->arj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
