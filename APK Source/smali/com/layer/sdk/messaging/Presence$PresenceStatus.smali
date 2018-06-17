.class public final enum Lcom/layer/sdk/messaging/Presence$PresenceStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PresenceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/Presence$PresenceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/Presence$PresenceStatus;

.field public static final enum AVAILABLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

.field public static final enum AWAY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

.field public static final enum BUSY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

.field public static final enum INVISIBLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

.field public static final enum OFFLINE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->AVAILABLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v3, v5, v3}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->AWAY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v5, v6, v3}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->BUSY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v6, v7, v4}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->OFFLINE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    new-instance v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->INVISIBLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    sget-object v1, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->AVAILABLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->AWAY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->BUSY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->OFFLINE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->INVISIBLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->$VALUES:[Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->a:I

    iput-boolean p4, p0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->b:Z

    return-void
.end method

.method public static findByValue(I)Lcom/layer/sdk/messaging/Presence$PresenceStatus;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->AVAILABLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported PresenceStatus value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->AWAY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->BUSY:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->OFFLINE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->INVISIBLE:Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported PresenceStatus value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported PresenceStatus value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/Presence$PresenceStatus;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/Presence$PresenceStatus;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->$VALUES:[Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/Presence$PresenceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->a:I

    return v0
.end method

.method public final isUserSettable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->b:Z

    return v0
.end method
