.class public final enum Lcom/layer/b/d/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/d/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bvU:Lcom/layer/b/d/f;

.field public static final enum bvV:Lcom/layer/b/d/f;

.field public static final enum bvW:Lcom/layer/b/d/f;

.field public static final enum bvX:Lcom/layer/b/d/f;

.field public static final enum bvY:Lcom/layer/b/d/f;

.field private static final synthetic bvZ:[Lcom/layer/b/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/b/d/f;

    const-string v1, "RETRYABLE_RECERTIFIABLE"

    invoke-direct {v0, v1, v2}, Lcom/layer/b/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/d/f;->bvU:Lcom/layer/b/d/f;

    new-instance v0, Lcom/layer/b/d/f;

    const-string v1, "RETRYABLE_CHALLENGE"

    invoke-direct {v0, v1, v3}, Lcom/layer/b/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/d/f;->bvV:Lcom/layer/b/d/f;

    new-instance v0, Lcom/layer/b/d/f;

    const-string v1, "RETRYABLE_RIGHT_NOW"

    invoke-direct {v0, v1, v4}, Lcom/layer/b/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/d/f;->bvW:Lcom/layer/b/d/f;

    new-instance v0, Lcom/layer/b/d/f;

    const-string v1, "RETRYABLE_LATER"

    invoke-direct {v0, v1, v5}, Lcom/layer/b/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    new-instance v0, Lcom/layer/b/d/f;

    const-string v1, "UNRECOVERABLE"

    invoke-direct {v0, v1, v6}, Lcom/layer/b/d/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/layer/b/d/f;

    sget-object v1, Lcom/layer/b/d/f;->bvU:Lcom/layer/b/d/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/b/d/f;->bvV:Lcom/layer/b/d/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/b/d/f;->bvW:Lcom/layer/b/d/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/layer/b/d/f;->bvZ:[Lcom/layer/b/d/f;

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

.method public static a(Lcom/layer/b/d/b;Z)Lcom/layer/b/d/f;
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/layer/b/d/f;->bvV:Lcom/layer/b/d/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/layer/b/d/f$1;->bqe:[I

    invoke-virtual {p0}, Lcom/layer/b/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/layer/b/d/f;->bvU:Lcom/layer/b/d/f;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/b/d/f;->bvW:Lcom/layer/b/d/f;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/d/f;
    .locals 1

    const-class v0, Lcom/layer/b/d/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/f;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/d/f;
    .locals 1

    sget-object v0, Lcom/layer/b/d/f;->bvZ:[Lcom/layer/b/d/f;

    invoke-virtual {v0}, [Lcom/layer/b/d/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/d/f;

    return-object v0
.end method
