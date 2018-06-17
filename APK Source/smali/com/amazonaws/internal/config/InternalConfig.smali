.class public Lcom/amazonaws/internal/config/InternalConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/internal/config/InternalConfig$Factory;
    }
.end annotation


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field public final aoo:Lcom/amazonaws/internal/config/SignerConfig;

.field public final aop:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final aoq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final aor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final aos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/HttpClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final aot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/internal/config/InternalConfig;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/config/InternalConfig;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v1, "AWS4SignerType"

    invoke-direct {v0, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->aoo:Lcom/amazonaws/internal/config/SignerConfig;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "eu-central-1"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn-north-1"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->aoq:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ec2"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "QueryStringSignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "email"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS3SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "S3SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdb"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "QueryStringSignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "runtime.lex"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AmazonLexV4Signer"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->aor:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "s3/eu-central-1"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/cn-north-1"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/us-east-2"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/ca-central-1"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/ap-south-1"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/ap-northeast-2"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s3/eu-west-2"

    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->aop:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AmazonCloudWatchClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "monitoring"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonSimpleDBClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "sdb"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonSimpleEmailServiceClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "email"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AWSSecurityTokenServiceClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "sts"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonCognitoIdentityClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "cognito-identity"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonCognitoIdentityProviderClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "cognito-idp"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonCognitoSyncClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "cognito-sync"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonKinesisFirehoseClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "firehose"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AWSIotClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "execute-api"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonLexRuntimeClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "runtime.lex"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonPinpointClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "mobiletargeting"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AmazonPinpointAnalyticsClient"

    new-instance v2, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v3, "mobileanalytics"

    invoke-direct {v2, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->aos:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3\\.amazonaws\\.com"

    const-string v3, "us-east-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-external-1\\.amazonaws\\.com"

    const-string v3, "us-east-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com"

    const-string v3, "us-gov-west-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->aot:Ljava/util/List;

    return-void
.end method
