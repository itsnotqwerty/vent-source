.class public Lcom/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;


# instance fields
.field private final ave:Ljava/lang/Long;

.field final avf:J

.field avg:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfo;->ave:Ljava/lang/Long;

    iput-wide p2, p0, Lcom/amazonaws/util/TimingInfo;->avf:J

    iput-object p4, p0, Lcom/amazonaws/util/TimingInfo;->avg:Ljava/lang/Long;

    return-void
.end method

.method public static a(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    new-instance v0, Lcom/amazonaws/util/TimingInfoUnmodifiable;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazonaws/util/TimingInfoUnmodifiable;-><init>(JLjava/lang/Long;)V

    return-object v0
.end method

.method public static j(J)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;J)V

    return-object v0
.end method

.method public static kg()Lcom/amazonaws/util/TimingInfo;
    .locals 5

    new-instance v0, Lcom/amazonaws/util/TimingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static kh()Lcom/amazonaws/util/TimingInfo;
    .locals 4

    new-instance v0, Lcom/amazonaws/util/TimingInfoFullSupport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;J)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .locals 0

    return-void
.end method

.method public aE(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public final ki()Z
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfo;->avg:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kj()Lcom/amazonaws/util/TimingInfo;
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/TimingInfo;->avg:Ljava/lang/Long;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/amazonaws/util/TimingInfo;->ki()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/util/TimingInfo;->avf:J

    iget-object v2, p0, Lcom/amazonaws/util/TimingInfo;->avg:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1
.end method
