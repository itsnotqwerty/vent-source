.class final Lcom/amazonaws/metrics/MetricCollector$1;
.super Lcom/amazonaws/metrics/MetricCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/MetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/metrics/MetricCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final jJ()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    sget-object v0, Lcom/amazonaws/metrics/RequestMetricCollector;->aoR:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public final jM()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
