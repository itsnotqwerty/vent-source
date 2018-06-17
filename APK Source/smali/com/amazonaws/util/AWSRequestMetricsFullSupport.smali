.class public Lcom/amazonaws/util/AWSRequestMetricsFullSupport;
.super Lcom/amazonaws/util/AWSRequestMetrics;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final auC:Lorg/apache/commons/logging/Log;

.field private static final auD:Ljava/lang/Object;

.field private static final auE:Ljava/lang/Object;


# instance fields
.field private final auA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final auB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.latency"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auC:Lorg/apache/commons/logging/Log;

    const-string v0, "="

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auD:Ljava/lang/Object;

    const-string v0, ", "

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/amazonaws/util/TimingInfo;->kh()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>(Lcom/amazonaws/util/TimingInfo;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auA:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auB:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/metrics/MetricType;)V
    .locals 4

    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auB:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazonaws/util/TimingInfo;->j(J)Lcom/amazonaws/util/TimingInfo;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/amazonaws/metrics/MetricType;J)V
    .locals 2

    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->aub:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v1, v0, p2, p3}, Lcom/amazonaws/util/TimingInfo;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auA:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/amazonaws/metrics/MetricType;)V
    .locals 6

    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->auB:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/TimingInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Trying to end an event which was never started: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->kj()Lcom/amazonaws/util/TimingInfo;

    iget-object v3, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->aub:Lcom/amazonaws/util/TimingInfo;

    iget-wide v4, v0, Lcom/amazonaws/util/TimingInfo;->avf:J

    iget-object v1, v0, Lcom/amazonaws/util/TimingInfo;->avg:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/amazonaws/util/TimingInfo;->a(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/amazonaws/util/TimingInfo;->a(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/amazonaws/util/TimingInfo;->avg:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method public final c(Lcom/amazonaws/metrics/MetricType;)V
    .locals 2

    invoke-interface {p1}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;->aub:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/TimingInfo;->aE(Ljava/lang/String;)V

    return-void
.end method
