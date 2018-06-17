.class public final enum Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/messaging/MessagePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/messaging/MessagePart$TransferStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

.field public static final enum AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

.field public static final enum COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

.field public static final enum DOWNLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

.field public static final enum READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

.field public static final enum UPLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const-string v1, "AWAITING_UPLOAD"

    invoke-direct {v0, v1, v2, v2}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v3, v3}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->UPLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const-string v1, "READY_FOR_DOWNLOAD"

    invoke-direct {v0, v1, v4, v4}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5, v5}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->DOWNLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    new-instance v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6, v6}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->UPLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->DOWNLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->$VALUES:[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

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

    iput p3, p0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->a:I

    return-void
.end method

.method public static fromOrdinal(I)Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    .locals 1

    invoke-static {}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->values()[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    .locals 1

    const-class v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    .locals 1

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->$VALUES:[Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v0}, [Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->a:I

    return v0
.end method
