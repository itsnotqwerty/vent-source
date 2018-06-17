.class final synthetic Lcom/vent/ba$9;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic chD:[I

.field static final synthetic chE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/layer/sdk/messaging/LayerObject$Type;->values()[Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vent/ba$9;->chE:[I

    :try_start_0
    sget-object v0, Lcom/vent/ba$9;->chE:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/vent/ba$9;->chE:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/vent/ba$9;->chE:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    invoke-static {}, Lcom/layer/sdk/changes/LayerChange$Type;->values()[Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vent/ba$9;->chD:[I

    :try_start_3
    sget-object v0, Lcom/vent/ba$9;->chD:[I

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/vent/ba$9;->chD:[I

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/vent/ba$9;->chD:[I

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
