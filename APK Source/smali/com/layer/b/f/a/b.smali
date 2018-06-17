.class public final enum Lcom/layer/b/f/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bxK:Lcom/layer/b/f/a/b;

.field public static final enum bxL:Lcom/layer/b/f/a/b;

.field public static final enum bxM:Lcom/layer/b/f/a/b;

.field public static final enum bxN:Lcom/layer/b/f/a/b;

.field public static final enum bxO:Lcom/layer/b/f/a/b;

.field public static final enum bxP:Lcom/layer/b/f/a/b;

.field public static final enum bxQ:Lcom/layer/b/f/a/b;

.field private static final synthetic bxR:[Lcom/layer/b/f/a/b;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_UNSPECIFIED_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxK:Lcom/layer/b/f/a/b;

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_IDENTITY_DOES_NOT_EXIST"

    invoke-direct {v0, v1, v4, v5}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxL:Lcom/layer/b/f/a/b;

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_ENTITY_ALREADY_EXISTS"

    invoke-direct {v0, v1, v5, v6}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxM:Lcom/layer/b/f/a/b;

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_REQUIRED_FIELD_EMPTY"

    invoke-direct {v0, v1, v6, v7}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxN:Lcom/layer/b/f/a/b;

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_MISSING_ACCEPT_HEADER"

    invoke-direct {v0, v1, v7, v8}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxO:Lcom/layer/b/f/a/b;

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_UNABLE_TO_DESERIALIZE_BODY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxP:Lcom/layer/b/f/a/b;

    new-instance v0, Lcom/layer/b/f/a/b;

    const-string v1, "AT_SERVICE_UNAVAILABLE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/b;->bxQ:Lcom/layer/b/f/a/b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/layer/b/f/a/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/a/b;->bxK:Lcom/layer/b/f/a/b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/a/b;->bxL:Lcom/layer/b/f/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/f/a/b;->bxM:Lcom/layer/b/f/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/a/b;->bxN:Lcom/layer/b/f/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/a/b;->bxO:Lcom/layer/b/f/a/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/b/f/a/b;->bxP:Lcom/layer/b/f/a/b;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/b/f/a/b;->bxQ:Lcom/layer/b/f/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/b/f/a/b;->bxR:[Lcom/layer/b/f/a/b;

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

    iput p3, p0, Lcom/layer/b/f/a/b;->a:I

    return-void
.end method

.method public static dp(I)Lcom/layer/b/f/a/b;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/b/f/a/b;->bxK:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/b/f/a/b;->bxL:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/b/f/a/b;->bxM:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/layer/b/f/a/b;->bxN:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/layer/b/f/a/b;->bxO:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/layer/b/f/a/b;->bxP:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/layer/b/f/a/b;->bxQ:Lcom/layer/b/f/a/b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/a/b;
    .locals 1

    const-class v0, Lcom/layer/b/f/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/b;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/a/b;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/b;->bxR:[Lcom/layer/b/f/a/b;

    invoke-virtual {v0}, [Lcom/layer/b/f/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/a/b;

    return-object v0
.end method
