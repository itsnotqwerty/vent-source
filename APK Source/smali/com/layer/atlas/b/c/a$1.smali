.class final Lcom/layer/atlas/b/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/b/c/a;->a(Lcom/layer/atlas/b/c/a$a;Lcom/layer/atlas/b/c/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bpb:Lcom/layer/atlas/b/c/a$a;

.field final synthetic bpc:Lcom/layer/atlas/b/c/a;


# direct methods
.method constructor <init>(Lcom/layer/atlas/b/c/a;Lcom/layer/atlas/b/c/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/b/c/a$1;->bpc:Lcom/layer/atlas/b/c/a;

    iput-object p2, p0, Lcom/layer/atlas/b/c/a$1;->bpb:Lcom/layer/atlas/b/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/c/a$1;->bpb:Lcom/layer/atlas/b/c/a$a;

    iget-object v0, v0, Lcom/layer/atlas/b/c/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method public final onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/c/a$1;->bpb:Lcom/layer/atlas/b/c/a$a;

    iget-object v0, v0, Lcom/layer/atlas/b/c/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method
