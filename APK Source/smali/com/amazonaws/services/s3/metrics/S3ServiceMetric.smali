.class public Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazonaws/metrics/SimpleMetricType;

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field public static final aqh:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final aqi:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final aqj:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final aqk:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field private static final aql:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    const-string v1, "DownloadThroughput"

    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqh:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "DownloadByteCount"

    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqi:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    const-string v1, "UploadThroughput"

    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqj:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "UploadByteCount"

    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqk:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqh:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqi:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqj:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aqk:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aql:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final ae(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S3"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jQ()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->aql:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-object v0
.end method
