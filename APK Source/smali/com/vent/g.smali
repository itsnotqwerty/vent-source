.class abstract Lcom/vent/g;
.super Landroid/support/v7/widget/RecyclerView$a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/g$c;,
        Lcom/vent/g$a;,
        Lcom/vent/g$d;,
        Lcom/vent/g$e;,
        Lcom/vent/g$f;,
        Lcom/vent/g$g;,
        Lcom/vent/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;"
        }
    .end annotation
.end field

.field public bUd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
            ">;"
        }
    .end annotation
.end field

.field public bVh:Lcom/vent/a/z;

.field public bZH:Z

.field bZV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/d;",
            ">;"
        }
    .end annotation
.end field

.field bZW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public bZX:Landroid/support/v4/widget/n;

.field public bZY:J

.field bZZ:Lcom/vent/g$b;

.field public bZf:I

.field public bZp:Z

.field caa:Lcom/vent/s$d;

.field public color:I


# direct methods
.method constructor <init>(Lcom/vent/a;)V
    .locals 1

    const v0, -0x7f7f80

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput v0, p0, Lcom/vent/g;->color:I

    iput v0, p0, Lcom/vent/g;->bZf:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/g;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method CA()V
    .locals 0

    return-void
.end method

.method a(Lcom/vent/g$f;)V
    .locals 0

    return-void
.end method

.method public final ba(Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/vent/g;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vent/g;->bZX:Landroid/support/v4/widget/n;

    iget-boolean v3, p0, Lcom/vent/g;->bZp:Z

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    if-ne v1, v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/n;->setRefreshing(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract ev(I)V
.end method

.method public getItemCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iget-boolean v2, p0, Lcom/vent/g;->bZH:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/vent/g;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, -0x3

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v1, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v2, v0, p1

    iget-boolean v0, p0, Lcom/vent/g;->bZH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/d;

    iget-object v0, v0, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, -0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v2}, Lcom/vent/a/z;->Fl()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/vent/g;->bZH:Z

    if-eqz v2, :cond_4

    if-ne p1, v1, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 13

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lcom/vent/s$g;

    iget-object v0, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/vent/s;->a(Lcom/vent/s$g;Lcom/vent/a/z;ZLcom/vent/a/m;Lcom/vent/a/m;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    check-cast p1, Lcom/vent/g$g;

    iget-boolean v1, p0, Lcom/vent/g;->bZp:Z

    iget-object v2, p1, Lcom/vent/g$g;->can:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/vent/g$g;->cao:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    check-cast p1, Lcom/vent/g$f;

    iget-object v0, p0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/v7/app/d;

    iget-object v0, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v1, v0, p2

    iget-boolean v0, p0, Lcom/vent/g;->bZH:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vent/a/d;

    iget-object v0, p0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vent/g;->bUd:Ljava/util/HashMap;

    iget-object v1, v11, Lcom/vent/a/d;->cjD:Lcom/vent/a/m;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    iput-object v11, p1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v1, p1, Lcom/vent/g$f;->bUF:Lcom/vent/CachedImageView;

    sget v2, Lcom/vent/MyApplication;->cgm:I

    sget v3, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v0, v1, v2, v3}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    iget-object v1, p1, Lcom/vent/g$f;->bZI:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vent/g$f;->cah:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v1, v1, Lcom/vent/a/d;->cjA:Ljava/util/Date;

    iget-object v2, p1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    iget-object v2, v2, Lcom/vent/a/d;->cjB:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/vent/d/e;->b(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/vent/a/d;->body:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7fffffff

    :goto_5
    iget v4, p0, Lcom/vent/g;->bZf:I

    iget-object v5, v11, Lcom/vent/a/d;->cjC:Ljava/util/HashMap;

    iget-object v6, v11, Lcom/vent/a/d;->cjE:Ljava/util/HashMap;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;I[Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    iget v2, p0, Lcom/vent/g;->bZf:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    iget-object v1, p1, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    iget-boolean v0, v11, Lcom/vent/a/d;->cjG:Z

    if-nez v0, :cond_a

    const v0, 0x7f0800a7

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p1, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/vent/g;->bZf:I

    iget v2, p0, Lcom/vent/g;->bZf:I

    iget-boolean v3, v11, Lcom/vent/a/d;->cjG:Z

    invoke-static {v10, v1, v2, v3}, Lcom/vent/d/a;->a(Landroid/content/Context;IIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/vent/g$f;->cal:Landroid/widget/TextView;

    iget v1, v11, Lcom/vent/a/d;->cjF:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_7
    sget v3, Lcom/vent/d/e;->cng:I

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, p1, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_9
    iget-object v1, p1, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    const v0, 0x7f0800a8

    goto :goto_7

    :cond_b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/vent/g;->bVh:Lcom/vent/a/z;

    invoke-virtual {v1}, Lcom/vent/a/z;->Fl()Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x7f0f0016

    :goto_8
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setText(I)V

    goto/16 :goto_0

    :cond_c
    const v1, 0x7f0f0031

    goto :goto_8
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/g$f;

    invoke-virtual {v0}, Lcom/vent/g$f;->getAdapterPosition()I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v1, p0, Lcom/vent/g;->bZV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v5, v1, v4

    iget-boolean v1, p0, Lcom/vent/g;->bZH:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/g;->bZW:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/vent/g;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090058 -> :sswitch_0
        0x7f09009a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/vent/s$g;

    iget-object v3, p0, Lcom/vent/g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3, v2, v0, v5}, Lcom/vent/s$g;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;Z)V

    new-instance v2, Lcom/vent/g$1;

    invoke-direct {v2, p0}, Lcom/vent/g$1;-><init>(Lcom/vent/g;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    new-instance v2, Lcom/vent/s$c;

    iget-object v3, p0, Lcom/vent/g;->caa:Lcom/vent/s$d;

    invoke-direct {v2, v1, v3}, Lcom/vent/s$c;-><init>(Lcom/vent/s$g;Lcom/vent/s$d;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-ne p2, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/vent/g$g;

    invoke-direct {v1, v0}, Lcom/vent/g$g;-><init>(Landroid/view/View;)V

    new-instance v2, Lcom/vent/g$2;

    invoke-direct {v2, p0}, Lcom/vent/g$2;-><init>(Lcom/vent/g;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/vent/g$3;

    invoke-direct {v2, p0}, Lcom/vent/g$3;-><init>(Lcom/vent/g;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/vent/g$f;

    invoke-direct {v2, p0, v0}, Lcom/vent/g$f;-><init>(Lcom/vent/g;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vent/CachedImageView;

    iput-object v1, v2, Lcom/vent/g$f;->bUF:Lcom/vent/CachedImageView;

    iget-object v1, v2, Lcom/vent/g$f;->bUF:Lcom/vent/CachedImageView;

    sget v3, Lcom/vent/MyApplication;->cgm:I

    sget v4, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v1, v3, v4}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v1, v2, Lcom/vent/g$f;->bUF:Lcom/vent/CachedImageView;

    const v3, 0x7f08012b

    invoke-virtual {v1, v3}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    const v1, 0x7f090234

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/vent/g$d;

    invoke-direct {v3, p0, v2}, Lcom/vent/g$d;-><init>(Lcom/vent/g;Lcom/vent/g$f;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vent/g$f;->bZI:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/vent/g$f;->bZI:Landroid/widget/TextView;

    sget-object v3, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v2, Lcom/vent/g$f;->bZI:Landroid/widget/TextView;

    new-instance v3, Lcom/vent/g$d;

    invoke-direct {v3, p0, v2}, Lcom/vent/g$d;-><init>(Lcom/vent/g;Lcom/vent/g$f;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vent/g$f;->cah:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/vent/g$f;->cah:Landroid/widget/TextView;

    sget-object v3, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    sget-object v3, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    iget-object v1, v2, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_2
    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Lcom/vent/g$f;->caj:Landroid/widget/TextView;

    sget-object v3, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v2, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    iget-object v1, v2, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v3, Lcom/vent/s;->cbJ:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, v2, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v2, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/vent/g;->bZf:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v2, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    new-instance v3, Lcom/vent/g$4;

    invoke-direct {v3, p0}, Lcom/vent/g$4;-><init>(Lcom/vent/g;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/vent/g$f;->cal:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/vent/g$f;->cal:Landroid/widget/TextView;

    sget-object v3, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v2, Lcom/vent/g$f;->cal:Landroid/widget/TextView;

    iget v3, p0, Lcom/vent/g;->bZf:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v3, Lcom/vent/g$5;

    invoke-direct {v3, p0}, Lcom/vent/g$5;-><init>(Lcom/vent/g;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v2, Lcom/vent/g$f;->cam:Landroid/widget/ImageButton;

    iget-object v0, v2, Lcom/vent/g$f;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, v2, Lcom/vent/g$f;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, v2, Lcom/vent/g$f;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/g;->bZZ:Lcom/vent/g$b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/vent/g$c;

    invoke-direct {v0, p0}, Lcom/vent/g$c;-><init>(Lcom/vent/g;)V

    iput-object v0, p0, Lcom/vent/g;->bZZ:Lcom/vent/g$b;

    :cond_3
    iget-object v0, v2, Lcom/vent/g$f;->cam:Landroid/widget/ImageButton;

    new-instance v1, Lcom/vent/g$a;

    iget-object v3, p0, Lcom/vent/g;->bZZ:Lcom/vent/g$b;

    invoke-direct {v1, p0, v2, v3}, Lcom/vent/g$a;-><init>(Lcom/vent/g;Lcom/vent/g$f;Lcom/vent/g$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/vent/g$f;->cam:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/vent/g;->bZf:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    new-instance v0, Lcom/vent/g$e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00be

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vent/g$e;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/g$f;

    invoke-virtual {p0, v0}, Lcom/vent/g;->a(Lcom/vent/g$f;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_1

    check-cast p1, Lcom/vent/s$g;

    invoke-virtual {p1}, Lcom/vent/s$g;->Db()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/vent/g$f;

    iget-object v0, p1, Lcom/vent/g$f;->cak:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/vent/d/a;->bq(Landroid/view/View;)V

    iget-object v0, p1, Lcom/vent/g$f;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/vent/g$f;->cai:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, p1, Lcom/vent/g$f;->caf:Lcom/vent/a/x;

    iput-object v2, p1, Lcom/vent/g$f;->cag:Lcom/vent/a/d;

    goto :goto_0
.end method
