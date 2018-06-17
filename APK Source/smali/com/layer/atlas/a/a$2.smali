.class final Lcom/layer/atlas/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/a/a;->a(Lcom/layer/sdk/messaging/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnP:Lcom/layer/atlas/a/a;

.field final synthetic bnQ:Lcom/layer/sdk/messaging/Message;

.field final synthetic bnR:I


# direct methods
.method constructor <init>(Lcom/layer/atlas/a/a;Lcom/layer/sdk/messaging/Message;I)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/a/a$2;->bnP:Lcom/layer/atlas/a/a;

    iput-object p2, p0, Lcom/layer/atlas/a/a$2;->bnQ:Lcom/layer/sdk/messaging/Message;

    iput p3, p0, Lcom/layer/atlas/a/a$2;->bnR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/layer/atlas/a/a$2;->bnP:Lcom/layer/atlas/a/a;

    iget-object v1, p0, Lcom/layer/atlas/a/a$2;->bnP:Lcom/layer/atlas/a/a;

    iget-object v2, p0, Lcom/layer/atlas/a/a$2;->bnQ:Lcom/layer/sdk/messaging/Message;

    iget v3, p0, Lcom/layer/atlas/a/a$2;->bnR:I

    iget-object v1, v1, Lcom/layer/atlas/a/a;->bnu:Lcom/layer/sdk/query/RecyclerViewController;

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/query/RecyclerViewController;->getPosition(Lcom/layer/sdk/query/Queryable;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/layer/atlas/a/a;->notifyItemChanged(I)V

    return-void
.end method
