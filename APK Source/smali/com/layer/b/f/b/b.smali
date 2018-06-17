.class public final enum Lcom/layer/b/f/b/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bAu:Lcom/layer/b/f/b/b;

.field public static final enum bAv:Lcom/layer/b/f/b/b;

.field public static final enum bAw:Lcom/layer/b/f/b/b;

.field public static final enum bAx:Lcom/layer/b/f/b/b;

.field private static final synthetic bAy:[Lcom/layer/b/f/b/b;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/layer/b/f/b/b;

    const-string v1, "POLICY_UNSPECIFIED_ERROR"

    invoke-direct {v0, v1, v5, v2}, Lcom/layer/b/f/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/b/b;->bAu:Lcom/layer/b/f/b/b;

    new-instance v0, Lcom/layer/b/f/b/b;

    const-string v1, "POLICY_REQUEST_TIMEOUT"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/b/b;->bAv:Lcom/layer/b/f/b/b;

    new-instance v0, Lcom/layer/b/f/b/b;

    const-string v1, "POLICY_INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v1, v3, v4}, Lcom/layer/b/f/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/b/b;->bAw:Lcom/layer/b/f/b/b;

    new-instance v0, Lcom/layer/b/f/b/b;

    const-string v1, "POLICY_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v4, v6}, Lcom/layer/b/f/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/b/b;->bAx:Lcom/layer/b/f/b/b;

    new-array v0, v6, [Lcom/layer/b/f/b/b;

    sget-object v1, Lcom/layer/b/f/b/b;->bAu:Lcom/layer/b/f/b/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/b/b;->bAv:Lcom/layer/b/f/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/b/f/b/b;->bAw:Lcom/layer/b/f/b/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/b/f/b/b;->bAx:Lcom/layer/b/f/b/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/b/f/b/b;->bAy:[Lcom/layer/b/f/b/b;

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

    iput p3, p0, Lcom/layer/b/f/b/b;->a:I

    return-void
.end method

.method public static dt(I)Lcom/layer/b/f/b/b;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/b/f/b/b;->bAu:Lcom/layer/b/f/b/b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/b/f/b/b;->bAv:Lcom/layer/b/f/b/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/b/f/b/b;->bAw:Lcom/layer/b/f/b/b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/layer/b/f/b/b;->bAx:Lcom/layer/b/f/b/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/b/b;
    .locals 1

    const-class v0, Lcom/layer/b/f/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/b/b;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/b/b;
    .locals 1

    sget-object v0, Lcom/layer/b/f/b/b;->bAy:[Lcom/layer/b/f/b/b;

    invoke-virtual {v0}, [Lcom/layer/b/f/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/b/b;

    return-object v0
.end method
