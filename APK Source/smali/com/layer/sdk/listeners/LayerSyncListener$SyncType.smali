.class public final enum Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/listeners/LayerSyncListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

.field public static final enum HISTORIC:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

.field public static final enum NORMAL:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    const-string v1, "HISTORIC"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->HISTORIC:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    new-instance v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->NORMAL:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    sget-object v1, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->HISTORIC:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->NORMAL:Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->$VALUES:[Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;
    .locals 1

    const-class v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;
    .locals 1

    sget-object v0, Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->$VALUES:[Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    invoke-virtual {v0}, [Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/listeners/LayerSyncListener$SyncType;

    return-object v0
.end method
