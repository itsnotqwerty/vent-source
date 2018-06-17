.class public final enum Lcom/layer/b/f/a/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/b/f/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bAh:Lcom/layer/b/f/a/m;

.field public static final enum bAi:Lcom/layer/b/f/a/m;

.field public static final enum bAj:Lcom/layer/b/f/a/m;

.field public static final enum bAk:Lcom/layer/b/f/a/m;

.field public static final enum bAl:Lcom/layer/b/f/a/m;

.field public static final enum bAm:Lcom/layer/b/f/a/m;

.field private static final synthetic bAn:[Lcom/layer/b/f/a/m;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v0, Lcom/layer/b/f/a/m;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/layer/b/f/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/m;->bAh:Lcom/layer/b/f/a/m;

    new-instance v0, Lcom/layer/b/f/a/m;

    const-string v1, "AWAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/layer/b/f/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/m;->bAi:Lcom/layer/b/f/a/m;

    new-instance v0, Lcom/layer/b/f/a/m;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v4, v5}, Lcom/layer/b/f/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/m;->bAj:Lcom/layer/b/f/a/m;

    new-instance v0, Lcom/layer/b/f/a/m;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v5, v6}, Lcom/layer/b/f/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/m;->bAk:Lcom/layer/b/f/a/m;

    new-instance v0, Lcom/layer/b/f/a/m;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v6, v7}, Lcom/layer/b/f/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/m;->bAl:Lcom/layer/b/f/a/m;

    new-instance v0, Lcom/layer/b/f/a/m;

    const-string v1, "AUTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/layer/b/f/a/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/layer/b/f/a/m;->bAm:Lcom/layer/b/f/a/m;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/layer/b/f/a/m;

    sget-object v1, Lcom/layer/b/f/a/m;->bAh:Lcom/layer/b/f/a/m;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/layer/b/f/a/m;->bAi:Lcom/layer/b/f/a/m;

    aput-object v2, v0, v1

    sget-object v1, Lcom/layer/b/f/a/m;->bAj:Lcom/layer/b/f/a/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/b/f/a/m;->bAk:Lcom/layer/b/f/a/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/b/f/a/m;->bAl:Lcom/layer/b/f/a/m;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/b/f/a/m;->bAm:Lcom/layer/b/f/a/m;

    aput-object v1, v0, v7

    sput-object v0, Lcom/layer/b/f/a/m;->bAn:[Lcom/layer/b/f/a/m;

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

    iput p3, p0, Lcom/layer/b/f/a/m;->a:I

    return-void
.end method

.method public static ds(I)Lcom/layer/b/f/a/m;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/layer/b/f/a/m;->bAh:Lcom/layer/b/f/a/m;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/b/f/a/m;->bAi:Lcom/layer/b/f/a/m;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/layer/b/f/a/m;->bAj:Lcom/layer/b/f/a/m;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/layer/b/f/a/m;->bAk:Lcom/layer/b/f/a/m;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/layer/b/f/a/m;->bAl:Lcom/layer/b/f/a/m;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/layer/b/f/a/m;->bAm:Lcom/layer/b/f/a/m;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/b/f/a/m;
    .locals 1

    const-class v0, Lcom/layer/b/f/a/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/m;

    return-object v0
.end method

.method public static values()[Lcom/layer/b/f/a/m;
    .locals 1

    sget-object v0, Lcom/layer/b/f/a/m;->bAn:[Lcom/layer/b/f/a/m;

    invoke-virtual {v0}, [Lcom/layer/b/f/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/b/f/a/m;

    return-object v0
.end method
