.class public final enum Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/telemetry/TelemetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Measurement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum STORAGE_USED_BY_SDK:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum SYNC_ERROR:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum TIME_FOR_AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum TIME_FOR_DEAUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum TIME_FOR_HISTORIC_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

.field public static final enum TIME_FROM_PUSH_TO_DATA_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "TIME_FOR_AUTH"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "TIME_FOR_DEAUTH"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_DEAUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "TIME_FROM_PUSH_TO_DATA_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FROM_PUSH_TO_DATA_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "TIME_FOR_HISTORIC_SYNC"

    invoke-direct {v0, v1, v6}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_HISTORIC_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "STORAGE_USED_BY_SDK"

    invoke-direct {v0, v1, v7}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->STORAGE_USED_BY_SDK:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "SYNC_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->SYNC_ERROR:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    new-instance v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const-string v1, "AUTH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_DEAUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FROM_PUSH_TO_DATA_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->TIME_FOR_HISTORIC_SYNC:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->STORAGE_USED_BY_SDK:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->SYNC_ERROR:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->AUTH:Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->$VALUES:[Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->$VALUES:[Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/telemetry/TelemetryManager$Measurement;

    return-object v0
.end method
