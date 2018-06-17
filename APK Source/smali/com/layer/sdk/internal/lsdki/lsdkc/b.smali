.class public Lcom/layer/sdk/internal/lsdki/lsdkc/b;
.super Ljava/lang/Error;


# instance fields
.field private final a:Lcom/layer/b/d/g;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p3, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/b;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/layer/b/d/m;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/layer/b/d/m;

    iget-object v0, p2, Lcom/layer/b/d/m;->bwa:Lcom/layer/b/d/g;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/b;->a:Lcom/layer/b/d/g;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/b;->a:Lcom/layer/b/d/g;

    goto :goto_0
.end method
