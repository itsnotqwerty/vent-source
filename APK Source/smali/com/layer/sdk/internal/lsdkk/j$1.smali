.class final Lcom/layer/sdk/internal/lsdkk/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic bsO:Lcom/layer/sdk/internal/lsdkk/j$b;

.field final synthetic bsP:Lcom/layer/sdk/internal/lsdkk/j;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkk/j;Lcom/layer/sdk/internal/lsdkk/j$b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/j$1;->bsP:Lcom/layer/sdk/internal/lsdkk/j;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/j$1;->bsO:Lcom/layer/sdk/internal/lsdkk/j$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkk/j$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j$1;->bsO:Lcom/layer/sdk/internal/lsdkk/j$b;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkk/j$b;->a(Ljava/lang/Object;)V

    return-void
.end method
