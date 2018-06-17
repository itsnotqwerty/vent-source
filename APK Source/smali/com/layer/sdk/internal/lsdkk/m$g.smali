.class public Lcom/layer/sdk/internal/lsdkk/m$g;
.super Lcom/layer/sdk/internal/lsdkk/m$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/m$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkk/m$d",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/m$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/m$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$g$a;)Z
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/m$1;->bqe:[I

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkk/m$g$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
