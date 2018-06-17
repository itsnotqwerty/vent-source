.class Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKDefaultBackoffStrategy"
.end annotation


# instance fields
.field private final apu:I

.field private final apv:I

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->random:Ljava/util/Random;

    const/16 v0, 0x64

    iput v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->apu:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->apv:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final cq(I)J
    .locals 4

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->random:Ljava/util/Random;

    iget v1, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->apv:I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    iget v3, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->apu:I

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
