.class public Lcom/layer/sdk/internal/lsdkh/h$h;
.super Lcom/layer/sdk/internal/lsdkh/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "h"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/net/Uri;


# direct methods
.method private constructor <init>(IILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkh/h$e;-><init>()V

    iput p1, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->a:I

    iput p2, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->b:I

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->c:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/net/Uri;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkh/h$h;-><init>(IILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->a:I

    return v0
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

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->b:I

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->c:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/h$h;->b:I

    return v0
.end method
