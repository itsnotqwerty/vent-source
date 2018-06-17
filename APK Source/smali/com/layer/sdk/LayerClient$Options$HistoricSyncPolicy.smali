.class public final enum Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/LayerClient$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HistoricSyncPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

.field public static final enum ALL_MESSAGES:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

.field public static final enum FROM_EARLIEST_UNREAD_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

.field public static final enum FROM_LAST_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    const-string v1, "ALL_MESSAGES"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->ALL_MESSAGES:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    new-instance v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    const-string v1, "FROM_EARLIEST_UNREAD_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_EARLIEST_UNREAD_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    new-instance v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    const-string v1, "FROM_LAST_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_LAST_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    sget-object v1, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->ALL_MESSAGES:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_EARLIEST_UNREAD_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->FROM_LAST_MESSAGE:Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->$VALUES:[Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;
    .locals 1

    const-class v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;
    .locals 1

    sget-object v0, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->$VALUES:[Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    invoke-virtual {v0}, [Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    return-object v0
.end method
