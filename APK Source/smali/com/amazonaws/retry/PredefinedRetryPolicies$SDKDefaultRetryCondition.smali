.class public Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKDefaultRetryCondition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/AmazonClientException;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/amazonaws/AmazonServiceException;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/amazonaws/AmazonServiceException;

    iget v1, p1, Lcom/amazonaws/AmazonServiceException;->statusCode:I

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1f6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1f8

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Lcom/amazonaws/retry/RetryUtils;->a(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/amazonaws/retry/RetryUtils;->b(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
