.class public final enum Lcom/layer/b/f/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum byZ:Lcom/layer/b/f/a/f;

.field public static final enum bza:Lcom/layer/b/f/a/f;

.field private static final synthetic bzb:[Lcom/layer/b/f/a/f;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/layer/b/f/a/f;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3, v2}, Lcom/layer/b/f/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/f;->byZ:Lcom/layer/b/f/a/f;

    new-instance v0, Lcom/layer/b/f/a/f;

    const-string v1, "BOT"

    invoke-direct {v0, v1, v2, v4}, Lcom/layer/b/f/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/f;->bza:Lcom/layer/b/f/a/f;

    new-array v0, v4, [Lcom/layer/b/f/a/f;

    sget-object v1, Lcom/layer/b/f/a/f;->byZ:Lcom/layer/b/f/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/b/f/a/f;->bza:Lcom/layer/b/f/a/f;

    aput-object v1, v0, v2

    sput-object v0, Lcom/layer/b/f/a/f;->bzb:[Lcom/layer/b/f/a/f;

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

    iput p3, p0, Lcom/layer/b/f/a/f;->a:I

    return-void
.end method

.method public static dr(I)Lcom/layer/b/f/a/f;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/b/f/a/f;->byZ:Lcom/layer/b/f/a/f;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/b/f/a/f;->bza:Lcom/layer/b/f/a/f;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/a/f;
    .locals 1

    const-class v0, Lcom/layer/b/f/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/f;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/a/f;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/f;->bzb:[Lcom/layer/b/f/a/f;

    invoke-virtual {v0}, [Lcom/layer/b/f/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/a/f;

    return-object v0
.end method
