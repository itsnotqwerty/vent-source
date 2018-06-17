.class final Lcom/vent/i$b$1;
.super Lcom/vent/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/i$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caP:Lcom/vent/i$b;


# direct methods
.method constructor <init>(Lcom/vent/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    invoke-direct {p0}, Lcom/vent/d/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/i$b$1;->cmT:Ljava/lang/Object;

    check-cast v0, Lcom/vent/a/k;

    iget-object v1, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v1, v1, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v2, v2, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v2, v2, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v2, v2, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v2, v2, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v3, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v3, v3, Lcom/vent/i$b;->caI:Lcom/vent/i;

    invoke-virtual {v3, v1}, Lcom/vent/i;->ex(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/vent/i;->notifyItemChanged(I)V

    :cond_0
    iget-object v1, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    invoke-virtual {v1}, Lcom/vent/i$b;->CK()V

    iget-object v1, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v1, v1, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caG:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v1, v1, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caG:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/i$b$1;->caP:Lcom/vent/i$b;

    iget-object v1, v1, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x7f0f0075

    invoke-static {v1, v0, v2, v3}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;I)V

    :cond_2
    return-void
.end method
