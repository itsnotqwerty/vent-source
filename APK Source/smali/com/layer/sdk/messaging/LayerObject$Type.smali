.class public final enum Lcom/layer/sdk/messaging/LayerObject$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/LayerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/LayerObject$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/LayerObject$Type;

.field public static final enum ANNOUNCEMENT:Lcom/layer/sdk/messaging/LayerObject$Type;

.field public static final enum CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

.field public static final enum IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

.field public static final enum MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

.field public static final enum MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/messaging/LayerObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

    new-instance v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    const-string v1, "ANNOUNCEMENT"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/messaging/LayerObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->ANNOUNCEMENT:Lcom/layer/sdk/messaging/LayerObject$Type;

    new-instance v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/messaging/LayerObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    new-instance v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    const-string v1, "MESSAGE_PART"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/messaging/LayerObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    new-instance v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v6}, Lcom/layer/sdk/messaging/LayerObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/sdk/messaging/LayerObject$Type;

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->ANNOUNCEMENT:Lcom/layer/sdk/messaging/LayerObject$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->$VALUES:[Lcom/layer/sdk/messaging/LayerObject$Type;

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

.method public static fromObject(Lcom/layer/sdk/messaging/LayerObject;)Lcom/layer/sdk/messaging/LayerObject$Type;
    .locals 3

    instance-of v0, p0, Lcom/layer/sdk/messaging/Conversation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/layer/sdk/messaging/Announcement;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->ANNOUNCEMENT:Lcom/layer/sdk/messaging/LayerObject$Type;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/layer/sdk/messaging/Message;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/layer/sdk/messaging/MessagePart;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/layer/sdk/messaging/Identity;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid object type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/LayerObject$Type;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/LayerObject$Type;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/LayerObject$Type;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/LayerObject$Type;->$VALUES:[Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/LayerObject$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/LayerObject$Type;

    return-object v0
.end method
