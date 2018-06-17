.class final Lcom/vent/ActVentView$7;
.super Lcom/vent/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActVentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZB:Lcom/vent/ActVentView;

.field final synthetic bZF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vent/ActVentView;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iput-object p6, p0, Lcom/vent/ActVentView$7;->bZF:Ljava/lang/String;

    const v5, 0x7f0f002e

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/vent/u;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iput-boolean v3, v1, Lcom/vent/ActVentView;->bZw:Z

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iput-object v0, v4, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZF:Ljava/lang/String;

    invoke-static {v4}, Lcom/vent/bb;->ec(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/vent/bb;->dZ(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZV:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v5, v5, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v5, v5, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v5, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v5, v5, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v5, v5, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v4, v5, v4

    iget-object v5, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v5, v5, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v5, v5, Lcom/vent/g;->bZH:Z

    if-eqz v5, :cond_5

    :goto_2
    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/vent/g;->notifyItemChanged(I)V

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    invoke-static {v0}, Lcom/vent/ax;->aQ(Landroid/content/Context;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/d;

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    sget-object v5, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v5, v5, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    sget-object v6, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    sget-object v5, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    iget-object v5, v5, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-virtual {v4, v5, v2}, Lcom/vent/a/z;->a(Lcom/vent/a/m;I)V

    :cond_8
    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v4, v3}, Lcom/vent/g;->notifyItemChanged(I)V

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v4, v4, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-boolean v4, v4, Lcom/vent/g;->bZH:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v4, v4, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v4, v2}, Lcom/vent/g;->notifyItemRemoved(I)V

    :cond_9
    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v2, v2, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0}, Lcom/vent/g;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v2, v0}, Lcom/vent/g;->notifyItemInserted(I)V

    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/vent/ActVentView$7;->bZB:Lcom/vent/ActVentView;

    invoke-static {v0}, Lcom/vent/ax;->aO(Landroid/content/Context;)V

    goto/16 :goto_4
.end method
