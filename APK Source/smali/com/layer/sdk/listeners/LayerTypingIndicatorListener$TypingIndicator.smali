.class public final enum Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypingIndicator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

.field public static final enum FINISHED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

.field public static final enum PAUSED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

.field public static final enum STARTED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->STARTED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    new-instance v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->PAUSED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    new-instance v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->FINISHED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    sget-object v1, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->STARTED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->PAUSED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->FINISHED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->$VALUES:[Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

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

.method public static fromValue(I)Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;
    .locals 1

    invoke-static {}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->values()[Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;
    .locals 1

    const-class v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;
    .locals 1

    sget-object v0, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->$VALUES:[Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-virtual {v0}, [Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->ordinal()I

    move-result v0

    return v0
.end method
