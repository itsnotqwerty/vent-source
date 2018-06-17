.class public abstract Lio/intercom/android/sdk/state/HostAppState;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ZZJ)Lio/intercom/android/sdk/state/HostAppState;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/state/AutoValue_HostAppState;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/intercom/android/sdk/state/AutoValue_HostAppState;-><init>(ZZJ)V

    return-object v0
.end method


# virtual methods
.method public abstract backgroundedTimestamp()J
.end method

.method public abstract isBackgrounded()Z
.end method

.method public abstract sessionStartedSinceLastBackgrounded()Z
.end method
