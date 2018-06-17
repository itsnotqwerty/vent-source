.class final Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:I

.field final synthetic bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;


# direct methods
.method private constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->b:I

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    iget v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;->b:I

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(I)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
