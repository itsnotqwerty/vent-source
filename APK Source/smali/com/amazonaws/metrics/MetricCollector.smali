.class public abstract Lcom/amazonaws/metrics/MetricCollector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/metrics/MetricCollector$Factory;
    }
.end annotation


# static fields
.field public static final aoQ:Lcom/amazonaws/metrics/MetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/metrics/MetricCollector$1;

    invoke-direct {v0}, Lcom/amazonaws/metrics/MetricCollector$1;-><init>()V

    sput-object v0, Lcom/amazonaws/metrics/MetricCollector;->aoQ:Lcom/amazonaws/metrics/MetricCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isEnabled()Z
.end method

.method public abstract jJ()Lcom/amazonaws/metrics/RequestMetricCollector;
.end method

.method public abstract jM()Z
.end method
