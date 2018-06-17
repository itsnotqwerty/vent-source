.class public Lcom/layer/sdk/internal/lsdkj/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/internal/a;

.field private final b:Lcom/layer/b/d/k;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/b/d/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkj/i$a;->a:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkj/i$a;->b:Lcom/layer/b/d/k;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkj/i$a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkj/i$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/i$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkj/i$a;)Lcom/layer/b/d/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/i$a;->b:Lcom/layer/b/d/k;

    return-object v0
.end method

.method static synthetic d(Lcom/layer/sdk/internal/lsdkj/i$a;)Lcom/layer/sdk/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/i$a;->a:Lcom/layer/sdk/internal/a;

    return-object v0
.end method
