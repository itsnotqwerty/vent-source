.class public Lcom/layer/sdk/internal/lsdkj/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkj/c$a;->a:Lcom/layer/b/d/k;

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkj/c$a;)Lcom/layer/b/d/k;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/c$a;->a:Lcom/layer/b/d/k;

    return-object v0
.end method
