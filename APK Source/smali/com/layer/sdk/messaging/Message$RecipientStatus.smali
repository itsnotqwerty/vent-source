.class public final enum Lcom/layer/sdk/messaging/Message$RecipientStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecipientStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/Message$RecipientStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/Message$RecipientStatus;

.field public static final enum DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

.field public static final enum PENDING:Lcom/layer/sdk/messaging/Message$RecipientStatus;

.field public static final enum READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

.field public static final enum SENT:Lcom/layer/sdk/messaging/Message$RecipientStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/messaging/Message$RecipientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->PENDING:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/messaging/Message$RecipientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->SENT:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const-string v1, "DELIVERED"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/messaging/Message$RecipientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const-string v1, "READ"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/messaging/Message$RecipientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/layer/sdk/messaging/Message$RecipientStatus;

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->PENDING:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->SENT:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->$VALUES:[Lcom/layer/sdk/messaging/Message$RecipientStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$RecipientStatus;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/Message$RecipientStatus;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->$VALUES:[Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/Message$RecipientStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/Message$RecipientStatus;

    return-object v0
.end method
