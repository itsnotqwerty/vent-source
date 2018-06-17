.class public Lcom/amazonaws/services/s3/model/PutObjectRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public arR:Ljava/lang/String;

.field public ark:Ljava/lang/String;

.field public arv:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field public asq:Ljava/io/InputStream;

.field public asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field public ass:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field public ast:Lcom/amazonaws/services/s3/model/AccessControlList;

.field public asu:Lcom/amazonaws/event/ProgressListener;

.field public asv:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ark:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ark:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asv:Ljava/lang/String;

    return-void
.end method

.method private jY()Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 4

    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ark:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asv:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ass:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->ass:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asu:Lcom/amazonaws/event/ProgressListener;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asu:Lcom/amazonaws/event/ProgressListener;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asq:Ljava/io/InputStream;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asq:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->arR:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->arR:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceRequest;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    iput-object v1, v0, Lcom/amazonaws/AmazonWebServiceRequest;->amb:Lcom/amazonaws/metrics/RequestMetricCollector;

    check-cast v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/PutObjectRequest;->asr:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jX()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->jY()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic jo()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->jY()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    return-object v0
.end method
