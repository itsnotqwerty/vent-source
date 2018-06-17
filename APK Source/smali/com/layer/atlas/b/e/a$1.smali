.class final Lcom/layer/atlas/b/e/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/b/e/a;->a(Lcom/layer/atlas/b/e/a$a;Lcom/layer/atlas/b/e/a$b;Lcom/layer/sdk/messaging/Message;Lcom/layer/atlas/b/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bpg:Lcom/layer/atlas/b/e/a$a;

.field final synthetic bph:Lcom/layer/atlas/b/e/a;


# direct methods
.method constructor <init>(Lcom/layer/atlas/b/e/a;Lcom/layer/atlas/b/e/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/b/e/a$1;->bph:Lcom/layer/atlas/b/e/a;

    iput-object p2, p0, Lcom/layer/atlas/b/e/a$1;->bpg:Lcom/layer/atlas/b/e/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/e/a$1;->bpg:Lcom/layer/atlas/b/e/a$a;

    iget-object v0, v0, Lcom/layer/atlas/b/e/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method

.method public final onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/e/a$1;->bpg:Lcom/layer/atlas/b/e/a$a;

    iget-object v0, v0, Lcom/layer/atlas/b/e/a$a;->boW:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->hide()V

    return-void
.end method
