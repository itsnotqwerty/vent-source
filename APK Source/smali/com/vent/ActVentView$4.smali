.class final Lcom/vent/ActVentView$4;
.super Lcom/vent/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVentView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZB:Lcom/vent/ActVentView;


# direct methods
.method constructor <init>(Lcom/vent/ActVentView;Lcom/vent/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    invoke-direct {p0, p2}, Lcom/vent/g$c;-><init>(Lcom/vent/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vent/g$f;I)V
    .locals 10

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/vent/g$c;->a(Lcom/vent/g$f;I)V

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fc()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    invoke-static {v0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v1, p1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iput-object v1, v0, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v2, v2, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    iget-object v2, v2, Lcom/vent/a/d;->body:Ljava/lang/String;

    const v3, 0x7fffffff

    iget-object v5, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v5, v5, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    iget-object v5, v5, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v6, v6, Lcom/vent/ActVentView;->bZv:Lcom/vent/a/d;

    iget-object v6, v6, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    const/4 v8, 0x1

    const/4 v9, 0x2

    move v7, v4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v1, v1, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    iget-object v0, v0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    sget-object v1, Lcom/vent/a/o;->ckx:Lcom/vent/a/o;

    iget-object v1, v1, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vent/a/z;->a(Lcom/vent/a/m;I)V

    iget-object v0, p0, Lcom/vent/ActVentView$4;->bZB:Lcom/vent/ActVentView;

    iget-object v0, v0, Lcom/vent/ActVentView;->bZt:Lcom/vent/g;

    invoke-virtual {v0, v4}, Lcom/vent/g;->notifyItemChanged(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900bc -> :sswitch_1
        0x7f0900d5 -> :sswitch_0
        0x7f090125 -> :sswitch_1
    .end sparse-switch
.end method
