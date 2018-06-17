.class public final enum Lcom/layer/b/f/c/o;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bFt:Lcom/layer/b/f/c/o;

.field public static final enum bFu:Lcom/layer/b/f/c/o;

.field public static final enum bFv:Lcom/layer/b/f/c/o;

.field private static final synthetic bFw:[Lcom/layer/b/f/c/o;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/layer/b/f/c/o;

    const-string v1, "CONVERSATION"

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/b/f/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    new-instance v0, Lcom/layer/b/f/c/o;

    const-string v1, "ANNOUNCEMENT"

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/b/f/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    new-instance v0, Lcom/layer/b/f/c/o;

    const-string v1, "CHANNEL"

    invoke-direct {v0, v1, v3, v5}, Lcom/layer/b/f/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    new-array v0, v5, [Lcom/layer/b/f/c/o;

    sget-object v1, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layer/b/f/c/o;->bFw:[Lcom/layer/b/f/c/o;

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

    iput p3, p0, Lcom/layer/b/f/c/o;->a:I

    return-void
.end method

.method public static dG(I)Lcom/layer/b/f/c/o;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/b/f/c/o;->bFt:Lcom/layer/b/f/c/o;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/b/f/c/o;->bFu:Lcom/layer/b/f/c/o;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/b/f/c/o;->bFv:Lcom/layer/b/f/c/o;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/o;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/o;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/o;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/o;->bFw:[Lcom/layer/b/f/c/o;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/o;

    return-object v0
.end method
