.class public Lcom/amazonaws/retry/PredefinedRetryPolicies;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;,
        Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
    }
.end annotation


# static fields
.field public static final app:Lcom/amazonaws/retry/RetryPolicy;

.field public static final apq:Lcom/amazonaws/retry/RetryPolicy;

.field public static final apr:Lcom/amazonaws/retry/RetryPolicy;

.field public static final aps:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

.field public static final apt:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->apA:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->apz:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->app:Lcom/amazonaws/retry/RetryPolicy;

    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;

    invoke-direct {v0}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;-><init>()V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->aps:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    new-instance v0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;

    invoke-direct {v0, v3}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(B)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apt:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->aps:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apt:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apq:Lcom/amazonaws/retry/RetryPolicy;

    new-instance v0, Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/retry/PredefinedRetryPolicies;->aps:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apt:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->apr:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method
