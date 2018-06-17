.class public Lcom/layer/sdk/internal/lsdkh/h$c;
.super Lcom/layer/sdk/internal/lsdkh/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
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

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkh/h$f;-><init>()V

    iput p1, p0, Lcom/layer/sdk/internal/lsdkh/h$c;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$c;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$c;->a:I

    return v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
