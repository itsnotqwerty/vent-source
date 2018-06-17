.class final Landroid/support/v4/app/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic tO:Ljava/util/ArrayList;

.field final synthetic tP:Ljava/lang/Object;

.field final synthetic tQ:Ljava/util/ArrayList;

.field final synthetic tR:Ljava/lang/Object;

.field final synthetic tT:Ljava/util/ArrayList;

.field final synthetic yH:Landroid/support/v4/app/w;

.field final synthetic yI:Landroid/view/View;

.field final synthetic yJ:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/app/w;Landroid/view/View;Landroid/support/v4/app/i;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/u$2;->tP:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/u$2;->yH:Landroid/support/v4/app/w;

    iput-object p3, p0, Landroid/support/v4/app/u$2;->yI:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/u$2;->yJ:Landroid/support/v4/app/i;

    iput-object p5, p0, Landroid/support/v4/app/u$2;->tT:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/u$2;->tQ:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/u$2;->tO:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/u$2;->tR:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/u$2;->tP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/u$2;->yH:Landroid/support/v4/app/w;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->tP:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/u$2;->yI:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/w;->c(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/u$2;->yH:Landroid/support/v4/app/w;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->tP:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/u$2;->yJ:Landroid/support/v4/app/i;

    iget-object v3, p0, Landroid/support/v4/app/u$2;->tT:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/u$2;->yI:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/u$2;->tQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/u$2;->tO:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/u$2;->tR:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/support/v4/app/u$2;->yI:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/u$2;->yH:Landroid/support/v4/app/w;

    iget-object v2, p0, Landroid/support/v4/app/u$2;->tR:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/u$2;->tO:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/w;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/u$2;->tO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/u$2;->tO:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/u$2;->yI:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
