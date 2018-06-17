.class final Lcom/layer/sdk/internal/lsdkc/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/j$b",
        "<",
        "Lcom/layer/sdk/listeners/LayerProgressListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

.field final synthetic bqs:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

.field final synthetic bqu:Lcom/layer/sdk/internal/lsdkc/b;

.field final synthetic bqv:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/b;Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->bqu:Lcom/layer/sdk/internal/lsdkc/b;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->bqs:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->bqv:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/layer/sdk/listeners/LayerProgressListener;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->bqs:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b$4;->bqv:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, v2}, Lcom/layer/sdk/listeners/LayerProgressListener;->onProgressError(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V

    return-void
.end method
