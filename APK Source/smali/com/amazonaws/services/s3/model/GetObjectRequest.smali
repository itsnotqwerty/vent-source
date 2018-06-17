.class public Lcom/amazonaws/services/s3/model/GetObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;


# instance fields
.field private aru:[J

.field public arv:Lcom/amazonaws/services/s3/model/SSECustomerKey;


# virtual methods
.method public final jT()[J
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->aru:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->aru:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method
