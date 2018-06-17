.class public final Lcom/amazonaws/retry/RetryPolicy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;,
        Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
    }
.end annotation


# instance fields
.field public final ami:I

.field public final apw:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

.field public final apx:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

.field public final apy:Z


# direct methods
.method public constructor <init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->aps:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apt:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a non-negative value for maxErrorRetry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/amazonaws/retry/RetryPolicy;->apw:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    iput-object p2, p0, Lcom/amazonaws/retry/RetryPolicy;->apx:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    iput p3, p0, Lcom/amazonaws/retry/RetryPolicy;->ami:I

    iput-boolean p4, p0, Lcom/amazonaws/retry/RetryPolicy;->apy:Z

    return-void
.end method
