.class public Lcom/amazonaws/services/s3/model/Grant;
.super Ljava/lang/Object;


# instance fields
.field public arw:Lcom/amazonaws/services/s3/model/Grantee;

.field public arx:Lcom/amazonaws/services/s3/model/Permission;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/amazonaws/services/s3/model/Grant;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Permission;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Grant [grantee="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Grant;->arw:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/Grant;->arx:Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
