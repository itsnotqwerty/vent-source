.class public final enum Lcom/layer/sdk/LayerClient$DeauthenticationAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/LayerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeauthenticationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/LayerClient$DeauthenticationAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/LayerClient$DeauthenticationAction;

.field public static final enum CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

.field public static final enum INVALID:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

.field public static final enum KEEP_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/LayerClient$DeauthenticationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->INVALID:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    new-instance v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    const-string v1, "KEEP_LOCAL_DATA"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/LayerClient$DeauthenticationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->KEEP_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    new-instance v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    const-string v1, "CLEAR_LOCAL_DATA"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/LayerClient$DeauthenticationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    sget-object v1, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->INVALID:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->KEEP_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->CLEAR_LOCAL_DATA:Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->$VALUES:[Lcom/layer/sdk/LayerClient$DeauthenticationAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/LayerClient$DeauthenticationAction;
    .locals 1

    const-class v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/LayerClient$DeauthenticationAction;
    .locals 1

    sget-object v0, Lcom/layer/sdk/LayerClient$DeauthenticationAction;->$VALUES:[Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    invoke-virtual {v0}, [Lcom/layer/sdk/LayerClient$DeauthenticationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/LayerClient$DeauthenticationAction;

    return-object v0
.end method
