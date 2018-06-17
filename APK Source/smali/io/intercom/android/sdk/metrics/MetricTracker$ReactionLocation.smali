.class public final enum Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/metrics/MetricTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReactionLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

.field public static final enum CONVERSATION:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

.field public static final enum IN_APP:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

.field public static final enum LINK:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->CONVERSATION:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    new-instance v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    const-string v1, "IN_APP"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->IN_APP:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    new-instance v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->LINK:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    sget-object v1, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->CONVERSATION:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->IN_APP:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->LINK:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    aput-object v1, v0, v4

    sput-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->$VALUES:[Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->$VALUES:[Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    return-object v0
.end method
