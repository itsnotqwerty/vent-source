.class final Lcom/layer/sdk/internal/lsdkk/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/layer/sdk/LayerClient;

.field final b:Z

.field final bsS:Landroid/app/Activity;

.field final c:I

.field final d:I


# direct methods
.method private constructor <init>(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/l$a;->a:Lcom/layer/sdk/LayerClient;

    iput-boolean p2, p0, Lcom/layer/sdk/internal/lsdkk/l$a;->b:Z

    const/16 v0, 0xdac

    iput v0, p0, Lcom/layer/sdk/internal/lsdkk/l$a;->c:I

    const/16 v0, 0x4b

    iput v0, p0, Lcom/layer/sdk/internal/lsdkk/l$a;->d:I

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/l$a;->bsS:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkk/l$a;-><init>(Lcom/layer/sdk/LayerClient;ZLandroid/app/Activity;)V

    return-void
.end method
