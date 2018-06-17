.class final Lcom/vent/i$1;
.super Lcom/vent/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/i;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caI:Lcom/vent/i;


# direct methods
.method constructor <init>(Lcom/vent/i;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/i$1;->caI:Lcom/vent/i;

    invoke-direct {p0, p2}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/support/v7/app/c$a;

    iget-object v0, p0, Lcom/vent/i$1;->caI:Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0034

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0149

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f005b

    new-instance v2, Lcom/vent/i$1$1;

    invoke-direct {v2, p0}, Lcom/vent/i$1$1;-><init>(Lcom/vent/i$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/i$1;->caI:Lcom/vent/i;

    iget-object v0, v0, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/vent/i$1;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    invoke-static {v0, v1, v3, v3}, Lcom/vent/ActCreateEditGroup;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/l;Ljava/util/HashMap;)V

    goto :goto_0
.end method
