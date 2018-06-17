.class public Lio/intercom/android/sdk/metrics/ops/OpsEvent;
.super Ljava/lang/Object;


# instance fields
.field private final eventType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/ops/OpsEvent;->eventType:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/android/sdk/metrics/ops/OpsEvent;->name:Ljava/lang/String;

    iput-wide p3, p0, Lio/intercom/android/sdk/metrics/ops/OpsEvent;->timestamp:J

    return-void
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/ops/OpsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/ops/OpsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/metrics/ops/OpsEvent;->timestamp:J

    return-wide v0
.end method
