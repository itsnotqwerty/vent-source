.class Lcom/amazonaws/regions/RegionDefaults;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/regions/Region;->aoS:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazonaws/regions/Region;->aoT:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazonaws/regions/Region;->aoU:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static jP()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-northeast-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "s3"

    const-string v3, "s3-ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdb"

    const-string v3, "sdb.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.ap-northeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-northeast-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.ap-northeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-south-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-south-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-southeast-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdb"

    const-string v3, "sdb.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-southeast-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ap-southeast-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sqs"

    const-string v3, "sqs.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdb"

    const-string v3, "sdb.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-ap-southeast-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "ca-central-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.ca-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "eu-central-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sqs"

    const-string v3, "sqs.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.eu-central-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "eu-west-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sdb"

    const-string v3, "sdb.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "firehose"

    const-string v3, "firehose.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "polly"

    const-string v3, "polly.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "machinelearning"

    const-string v3, "machinelearning.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "email"

    const-string v3, "email.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "eu-west-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.eu-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "sa-east-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sdb"

    const-string v3, "sdb.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.sa-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-east-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mobileanalytics"

    const-string v3, "mobileanalytics.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pinpoint"

    const-string v3, "pinpoint.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "polly"

    const-string v3, "polly.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "email"

    const-string v3, "email.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "firehose"

    const-string v3, "firehose.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "machinelearning"

    const-string v3, "machinelearning.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdb"

    const-string v3, "sdb.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.us-east-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-east-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "polly"

    const-string v3, "polly.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-east-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-west-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdb"

    const-string v3, "sdb.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-west-2"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sdb"

    const-string v3, "sdb.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iot"

    const-string v3, "iot.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "firehose"

    const-string v3, "firehose.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "polly"

    const-string v3, "polly.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data.iot"

    const-string v3, "data.iot.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "email"

    const-string v3, "email.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-idp"

    const-string v3, "cognito-idp.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-identity"

    const-string v3, "cognito-identity.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cognito-sync"

    const-string v3, "cognito-sync.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lambda"

    const-string v3, "lambda.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-west-2.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "cn-north-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sts"

    const-string v3, "sts.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kinesis"

    const-string v3, "kinesis.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ec2"

    const-string v3, "ec2.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.cn-north-1.amazonaws.com.cn"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/regions/Region;

    const-string v2, "us-gov-west-1"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/regions/Region;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ec2"

    const-string v3, "ec2.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "s3"

    const-string v3, "s3-us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kms"

    const-string v3, "kms.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sqs"

    const-string v3, "sqs.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "elasticloadbalancing"

    const-string v3, "elasticloadbalancing.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sts"

    const-string v3, "sts.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sns"

    const-string v3, "sns.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoscaling"

    const-string v3, "autoscaling.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dynamodb"

    const-string v3, "dynamodb.us-gov-west-1.amazonaws.com"

    invoke-static {v1, v2, v3}, Lcom/amazonaws/regions/RegionDefaults;->a(Lcom/amazonaws/regions/Region;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
