.class public final enum Lcom/amazonaws/util/AWSRequestMetrics$Field;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/amazonaws/metrics/RequestMetricType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/AWSRequestMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/AWSRequestMetrics$Field;",
        ">;",
        "Lcom/amazonaws/metrics/RequestMetricType;"
    }
.end annotation


# static fields
.field public static final enum auc:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aue:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auf:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aug:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auj:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auk:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aul:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aum:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aun:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auo:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aup:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auq:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aur:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aus:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aut:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auu:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auv:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auw:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum aux:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum auy:Lcom/amazonaws/util/AWSRequestMetrics$Field;

.field private static final synthetic auz:[Lcom/amazonaws/util/AWSRequestMetrics$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "AWSErrorCode"

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auc:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "AWSRequestID"

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "BytesProcessed"

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aue:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "ClientExecuteTime"

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auf:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "CredentialsRequestTime"

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aug:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "Exception"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpRequestTime"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "RedirectLocation"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auj:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "RequestMarshallTime"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auk:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "RequestSigningTime"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aul:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "ResponseProcessingTime"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aum:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "RequestCount"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aun:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "RetryCount"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auo:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpClientRetryCount"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aup:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpClientSendRequestTime"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auq:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpClientReceiveResponseTime"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aur:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpClientPoolAvailableCount"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aus:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpClientPoolLeasedCount"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aut:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "HttpClientPoolPendingCount"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auu:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "RetryPauseTime"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auv:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "ServiceEndpoint"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auw:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "ServiceName"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aux:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const-string v1, "StatusCode"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auy:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/amazonaws/util/AWSRequestMetrics$Field;

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auc:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aud:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aue:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auf:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aug:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auh:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aui:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auj:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auk:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aul:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aum:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aun:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auo:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aup:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auq:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aur:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aus:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aut:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auu:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auv:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auw:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->aux:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auy:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auz:[Lcom/amazonaws/util/AWSRequestMetrics$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/AWSRequestMetrics$Field;
    .locals 1

    const-class v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/AWSRequestMetrics$Field;
    .locals 1

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->auz:[Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, [Lcom/amazonaws/util/AWSRequestMetrics$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/AWSRequestMetrics$Field;

    return-object v0
.end method
