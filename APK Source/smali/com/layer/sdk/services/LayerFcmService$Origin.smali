.class public final enum Lcom/layer/sdk/services/LayerFcmService$Origin;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/services/LayerFcmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/services/LayerFcmService$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/services/LayerFcmService$Origin;

.field public static final enum FCM:Lcom/layer/sdk/services/LayerFcmService$Origin;

.field public static final enum LAYER:Lcom/layer/sdk/services/LayerFcmService$Origin;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/sdk/services/LayerFcmService$Origin;

    const-string v1, "FCM"

    const-string v2, "FCM"

    invoke-direct {v0, v1, v3, v2}, Lcom/layer/sdk/services/LayerFcmService$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/services/LayerFcmService$Origin;->FCM:Lcom/layer/sdk/services/LayerFcmService$Origin;

    new-instance v0, Lcom/layer/sdk/services/LayerFcmService$Origin;

    const-string v1, "LAYER"

    const-string v2, "Layer"

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/sdk/services/LayerFcmService$Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/layer/sdk/services/LayerFcmService$Origin;->LAYER:Lcom/layer/sdk/services/LayerFcmService$Origin;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layer/sdk/services/LayerFcmService$Origin;

    sget-object v1, Lcom/layer/sdk/services/LayerFcmService$Origin;->FCM:Lcom/layer/sdk/services/LayerFcmService$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/services/LayerFcmService$Origin;->LAYER:Lcom/layer/sdk/services/LayerFcmService$Origin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/services/LayerFcmService$Origin;->$VALUES:[Lcom/layer/sdk/services/LayerFcmService$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/services/LayerFcmService$Origin;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/services/LayerFcmService$Origin;
    .locals 1

    const-class v0, Lcom/layer/sdk/services/LayerFcmService$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/services/LayerFcmService$Origin;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/services/LayerFcmService$Origin;
    .locals 1

    sget-object v0, Lcom/layer/sdk/services/LayerFcmService$Origin;->$VALUES:[Lcom/layer/sdk/services/LayerFcmService$Origin;

    invoke-virtual {v0}, [Lcom/layer/sdk/services/LayerFcmService$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/services/LayerFcmService$Origin;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/services/LayerFcmService$Origin;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/services/LayerFcmService$Origin;->a:Ljava/lang/String;

    return-object v0
.end method
