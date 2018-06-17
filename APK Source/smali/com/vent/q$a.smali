.class final Lcom/vent/q$a;
.super Lcom/vent/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bVX:Landroid/view/View;

.field final bVY:Landroid/view/View;

.field final cby:Landroid/widget/TextView;

.field final synthetic cbz:Lcom/vent/q;


# direct methods
.method constructor <init>(Lcom/vent/q;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/vent/q$a;->cbz:Lcom/vent/q;

    invoke-direct {p0, p2}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/q$a;->cby:Landroid/widget/TextView;

    const v0, 0x7f09020b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/q$a;->bVX:Landroid/view/View;

    const v0, 0x7f09020c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/q$a;->bVY:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/q$a;->cbz:Lcom/vent/q;

    iget-object v0, v0, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/q$a;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/vent/q$a;->cbz:Lcom/vent/q;

    invoke-virtual {v1}, Lcom/vent/q;->CL()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/q$a;->cbz:Lcom/vent/q;

    invoke-virtual {v1}, Lcom/vent/q;->CS()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/q$a;->cbz:Lcom/vent/q;

    iget-object v1, v1, Lcom/vent/q;->cbx:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/v;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vent/a/v;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/q$a;->cbz:Lcom/vent/q;

    iget-object v1, v1, Lcom/vent/q;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/FrgSearchBoth;

    iget-object v0, v0, Lcom/vent/a/v;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vent/FrgSearchBoth;->dY(Ljava/lang/String;)V

    goto :goto_0
.end method
