.class public abstract Lio/intercom/android/sdk/models/OperatorClientCondition;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/OperatorClientCondition;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/AutoValue_OperatorClientCondition;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/models/AutoValue_OperatorClientCondition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract conditionId()Ljava/lang/String;
.end method

.method public abstract id()Ljava/lang/String;
.end method
