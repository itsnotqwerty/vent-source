.class public final enum Lcom/layer/sdk/listeners/LayerProgressListener$Operation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/listeners/LayerProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/listeners/LayerProgressListener$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

.field public static final enum DOWNLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

.field public static final enum UPLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->UPLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    new-instance v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->DOWNLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    sget-object v1, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->UPLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->DOWNLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->$VALUES:[Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;
    .locals 1

    const-class v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/listeners/LayerProgressListener$Operation;
    .locals 1

    sget-object v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->$VALUES:[Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    invoke-virtual {v0}, [Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    return-object v0
.end method
