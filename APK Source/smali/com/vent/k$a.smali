.class final Lcom/vent/k$a;
.super Lcom/vent/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<",
        "Lcom/vent/a/p;",
        ">.a;"
    }
.end annotation


# instance fields
.field final bVB:Landroid/widget/TextView;

.field final caX:Landroid/view/View;

.field final synthetic caY:Lcom/vent/k;


# direct methods
.method constructor <init>(Lcom/vent/k;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    invoke-direct {p0, p1, p2}, Lcom/vent/l$a;-><init>(Lcom/vent/l;Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/k$a;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/k$a;->bVB:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0902aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/k$a;->caX:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final CM()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/k$a;->CO()I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/vent/k$a;->caX:Landroid/view/View;

    iget-object v2, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v2, v2, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vent/k$a;->CO()I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v1, v1, Lcom/vent/k;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/FrgInterests;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v3, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget v3, v3, Lcom/vent/k;->caW:I

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/p;

    iget-object v0, v0, Lcom/vent/a/p;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/vent/k$a;->CM()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v1, v1, Lcom/vent/k;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a;

    const v2, 0x7f0f025f

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget v4, v4, Lcom/vent/k;->caW:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/vent/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->caU:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/vent/FrgInterests;->ceB:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/vent/k$a;->caY:Lcom/vent/k;

    iget-object v0, v0, Lcom/vent/k;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/p;

    iget-object v0, v0, Lcom/vent/a/p;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/vent/k$a;->CM()V

    goto/16 :goto_0
.end method
