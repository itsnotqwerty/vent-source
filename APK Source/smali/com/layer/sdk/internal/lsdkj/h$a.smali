.class public Lcom/layer/sdk/internal/lsdkj/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkj/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/layer/b/b/b;

.field private final b:Lcom/layer/sdk/internal/lsdka/a;

.field private final c:Lcom/layer/sdk/internal/a;


# direct methods
.method public constructor <init>(Lcom/layer/b/b/b;Lcom/layer/sdk/internal/lsdka/a;Lcom/layer/sdk/internal/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkj/h$a;->a:Lcom/layer/b/b/b;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkj/h$a;->b:Lcom/layer/sdk/internal/lsdka/a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkj/h$a;->c:Lcom/layer/sdk/internal/a;

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/b/b/b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/h$a;->a:Lcom/layer/b/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/h$a;->b:Lcom/layer/sdk/internal/lsdka/a;

    return-object v0
.end method

.method static synthetic d(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/h$a;->c:Lcom/layer/sdk/internal/a;

    return-object v0
.end method
