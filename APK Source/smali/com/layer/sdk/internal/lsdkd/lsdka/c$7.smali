.class final synthetic Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;
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

    invoke-static {}, Lcom/layer/sdk/changes/LayerChange$Type;->values()[Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqK:[I

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqK:[I

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqK:[I

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_1
    :try_start_2
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqK:[I

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_2
    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->values()[Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    :try_start_3
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_5
    :try_start_6
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->l:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    invoke-static {}, Lcom/layer/sdk/LayerClient$DeletionMode;->values()[Lcom/layer/sdk/LayerClient$DeletionMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqe:[I

    :try_start_10
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqe:[I

    sget-object v1, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqe:[I

    sget-object v1, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v1}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    return-void

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_1

    :catch_11
    move-exception v0

    goto/16 :goto_0
.end method
