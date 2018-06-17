.class public final enum Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HistoricSyncStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

.field public static final enum INVALID:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

.field public static final enum MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

.field public static final enum NO_MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

.field public static final enum SYNC_PENDING:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    const-string v1, "MORE_AVAILABLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    const-string v1, "SYNC_PENDING"

    invoke-direct {v0, v1, v3, v3}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->SYNC_PENDING:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    const-string v1, "NO_MORE_AVAILABLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->NO_MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5, v5}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->INVALID:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->SYNC_PENDING:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->NO_MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->INVALID:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->$VALUES:[Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->a:I

    return-void
.end method

.method public static fromValue(I)Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
    .locals 5

    invoke-static {}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->values()[Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->$VALUES:[Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->a:I

    return v0
.end method
