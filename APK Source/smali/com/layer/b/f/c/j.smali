.class public final enum Lcom/layer/b/f/c/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bEa:Lcom/layer/b/f/c/j;

.field public static final enum bEb:Lcom/layer/b/f/c/j;

.field public static final enum bEc:Lcom/layer/b/f/c/j;

.field private static final synthetic bEd:[Lcom/layer/b/f/c/j;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/b/f/c/j;

    const-string v1, "APNS"

    invoke-direct {v0, v1, v2, v2}, Lcom/layer/b/f/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/j;->bEa:Lcom/layer/b/f/c/j;

    new-instance v0, Lcom/layer/b/f/c/j;

    const-string v1, "GCM"

    invoke-direct {v0, v1, v3, v3}, Lcom/layer/b/f/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/j;->bEb:Lcom/layer/b/f/c/j;

    new-instance v0, Lcom/layer/b/f/c/j;

    const-string v1, "FAKE"

    invoke-direct {v0, v1, v4, v4}, Lcom/layer/b/f/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/j;->bEc:Lcom/layer/b/f/c/j;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/b/f/c/j;

    sget-object v1, Lcom/layer/b/f/c/j;->bEa:Lcom/layer/b/f/c/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/b/f/c/j;->bEb:Lcom/layer/b/f/c/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/b/f/c/j;->bEc:Lcom/layer/b/f/c/j;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/b/f/c/j;->bEd:[Lcom/layer/b/f/c/j;

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

    iput p3, p0, Lcom/layer/b/f/c/j;->a:I

    return-void
.end method

.method public static dC(I)Lcom/layer/b/f/c/j;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/b/f/c/j;->bEa:Lcom/layer/b/f/c/j;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/b/f/c/j;->bEb:Lcom/layer/b/f/c/j;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/b/f/c/j;->bEc:Lcom/layer/b/f/c/j;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/j;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/j;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/j;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/j;->bEd:[Lcom/layer/b/f/c/j;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/j;

    return-object v0
.end method
