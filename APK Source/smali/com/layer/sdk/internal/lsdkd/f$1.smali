.class final synthetic Lcom/layer/sdk/internal/lsdkd/f$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic b:[I

.field static final synthetic bqK:[I

.field static final synthetic bqe:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/layer/sdk/messaging/LayerObject$Type;->values()[Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->CONVERSATION:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->ANNOUNCEMENT:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/LayerObject$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    invoke-static {}, Lcom/layer/sdk/LayerClient$DeletionMode;->values()[Lcom/layer/sdk/LayerClient$DeletionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->b:[I

    :try_start_5
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->b:[I

    sget-object v1, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->b:[I

    sget-object v1, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/k$a;->values()[Lcom/layer/sdk/internal/lsdkd/k$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    :try_start_7
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->c:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->d:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->b:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/f$1;->bqe:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->g:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    goto/16 :goto_0
.end method
