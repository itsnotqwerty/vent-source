.class public final Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/OperatorClientCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field condition_id:Ljava/lang/String;

.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/OperatorClientCondition;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;->id:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;->condition_id:Ljava/lang/String;

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/models/OperatorClientCondition;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/OperatorClientCondition;

    move-result-object v0

    return-object v0
.end method
