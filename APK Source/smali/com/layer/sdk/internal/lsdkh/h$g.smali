.class public Lcom/layer/sdk/internal/lsdkh/h$g;
.super Lcom/layer/sdk/internal/lsdkh/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "g"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkh/h$e;-><init>()V

    iput p1, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->a:I

    return v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->a:I

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->b:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$g;->b:Ljava/util/List;

    return-object v0
.end method
