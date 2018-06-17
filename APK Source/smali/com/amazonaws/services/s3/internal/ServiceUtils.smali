.class public Lcom/amazonaws/services/s3/internal/ServiceUtils;
.super Ljava/lang/Object;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;

.field protected static final aqg:Lcom/amazonaws/util/DateUtils;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->alS:Lorg/apache/commons/logging/Log;

    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/ServiceUtils;->aqg:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ab(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->ax(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ac(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->ay(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "com.amazonaws.services.s3.disableGetObjectMD5Validation"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    if-eqz v2, :cond_3

    check-cast p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->jT()[J

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/GetObjectRequest;->arv:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jW()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->arv:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    instance-of v2, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/UploadPartRequest;->arv:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static g(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Lcom/amazonaws/Request;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->m(Lcom/amazonaws/Request;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static m(Lcom/amazonaws/Request;)Ljava/net/URL;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/amazonaws/Request;->jr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazonaws/util/HttpUtils;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?<=/)/"

    const-string v3, "%2F"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazonaws/Request;->jt()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move-object v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    move-object v3, v1

    :goto_1
    invoke-interface {p0}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v4}, Lcom/amazonaws/util/HttpUtils;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to convert request to well formed URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
