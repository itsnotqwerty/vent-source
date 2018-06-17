.class final synthetic Lcom/layer/sdk/internal/lsdki/lsdka/b$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/lsdka/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic b:[I

.field static final synthetic bqK:[I

.field static final synthetic bqe:[I

.field static final synthetic brd:[I

.field static final synthetic bsw:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->values()[Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bsw:[I

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bsw:[I

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->PENDING:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_0
    :try_start_1
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bsw:[I

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->SENT:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    :goto_1
    :try_start_2
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bsw:[I

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->DELIVERED:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_2
    :try_start_3
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bsw:[I

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_3
    invoke-static {}, Lcom/layer/sdk/internal/lsdki/c$b;->values()[Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    :try_start_4
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$b;->c:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_4
    :try_start_5
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$b;->a:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_5
    :try_start_6
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$b;->b:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    :goto_6
    :try_start_7
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$b;->d:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    :goto_7
    :try_start_8
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->brd:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$b;->e:Lcom/layer/sdk/internal/lsdki/c$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->values()[Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqK:[I

    :try_start_9
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    :goto_9
    :try_start_a
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_a
    :try_start_b
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqK:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    :goto_b
    invoke-static {}, Lcom/layer/sdk/internal/lsdki/c$a;->values()[Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    :try_start_c
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$a;->a:Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_c
    :try_start_d
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$a;->b:Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    :goto_d
    :try_start_e
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->b:[I

    sget-object v1, Lcom/layer/sdk/internal/lsdki/c$a;->c:Lcom/layer/sdk/internal/lsdki/c$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_e
    invoke-static {}, Lcom/layer/b/f/c/f;->values()[Lcom/layer/b/f/c/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqe:[I

    :try_start_f
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqe:[I

    sget-object v1, Lcom/layer/b/f/c/f;->bDJ:Lcom/layer/b/f/c/f;

    invoke-virtual {v1}, Lcom/layer/b/f/c/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_f
    :try_start_10
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdka/b$1;->bqe:[I

    sget-object v1, Lcom/layer/b/f/c/f;->bDI:Lcom/layer/b/f/c/f;

    invoke-virtual {v1}, Lcom/layer/b/f/c/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_10
    return-void

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto/16 :goto_8

    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto/16 :goto_5

    :catch_c
    move-exception v0

    goto/16 :goto_4

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_1

    :catch_10
    move-exception v0

    goto/16 :goto_0
.end method
