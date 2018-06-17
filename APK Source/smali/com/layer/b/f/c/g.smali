.class public final enum Lcom/layer/b/f/c/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bDL:Lcom/layer/b/f/c/g;

.field private static final synthetic bDM:[Lcom/layer/b/f/c/g;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/layer/b/f/c/g;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Lcom/layer/b/f/c/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/b/f/c/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/b/f/c/g;->bDM:[Lcom/layer/b/f/c/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/layer/b/f/c/g;->a:I

    return-void
.end method

.method public static dB(I)Lcom/layer/b/f/c/g;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/b/f/c/g;->bDL:Lcom/layer/b/f/c/g;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/c/g;
    .locals 1

    const-class v0, Lcom/layer/b/f/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/g;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/c/g;
    .locals 1

    sget-object v0, Lcom/layer/b/f/c/g;->bDM:[Lcom/layer/b/f/c/g;

    invoke-virtual {v0}, [Lcom/layer/b/f/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/c/g;

    return-object v0
.end method
