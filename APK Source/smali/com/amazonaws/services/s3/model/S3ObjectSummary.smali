.class public Lcom/amazonaws/services/s3/model/S3ObjectSummary;
.super Ljava/lang/Object;


# instance fields
.field protected aqn:Lcom/amazonaws/services/s3/model/Owner;

.field protected arR:Ljava/lang/String;

.field protected ark:Ljava/lang/String;

.field protected arm:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected lastModified:Ljava/util/Date;

.field protected size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->aqn:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public final aj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->ark:Ljava/lang/String;

    return-void
.end method

.method public final ak(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->arm:Ljava/lang/String;

    return-void
.end method

.method public final al(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->arR:Ljava/lang/String;

    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    return-void
.end method

.method public final setSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->size:J

    return-void
.end method
