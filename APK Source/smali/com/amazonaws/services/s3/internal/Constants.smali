.class public Lcom/amazonaws/services/s3/internal/Constants;
.super Ljava/lang/Object;


# static fields
.field private static alS:Lorg/apache/commons/logging/Log;

.field public static apM:Ljava/lang/String;

.field public static apN:Ljava/lang/String;

.field public static apO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "s3.amazonaws.com"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->apM:Ljava/lang/String;

    const-string v0, "Amazon S3"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->apN:Ljava/lang/String;

    const-string v0, "UTF-8"

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->apO:Ljava/lang/String;

    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/Constants;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method
