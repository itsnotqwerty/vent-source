.class final Lcom/vent/ActStore$a;
.super Lcom/vent/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActStore$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bYw:Lcom/vent/ActStore;


# direct methods
.method constructor <init>(Lcom/vent/ActStore;Lcom/vent/a;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    invoke-direct {p0, p2, v5}, Lcom/vent/m;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    invoke-virtual {p0}, Lcom/vent/ActStore$a;->CC()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-static {v0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v1, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v1, v1, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/vent/a/h;->ER()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/vent/a/h;->EU()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/vent/a/h;->ET()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v1, v1, Lcom/vent/ActStore;->bYt:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/vent/a/h;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/vent/a/h;->cka:Ljava/lang/String;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v0, v0, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/ActStore$a$1;

    invoke-direct {v1, p0}, Lcom/vent/ActStore$a$1;-><init>(Lcom/vent/ActStore$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/vent/ActStore$a;->setHasStableIds(Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    invoke-static {v0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0262

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/ActStore$a$2;

    invoke-direct {v1, p0}, Lcom/vent/ActStore$a$2;-><init>(Lcom/vent/ActStore$a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/app/c$a;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    invoke-virtual {v0}, Lcom/vent/ActStore;->finish()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/ActStore$a$3;

    invoke-direct {v1, p0}, Lcom/vent/ActStore$a$3;-><init>(Lcom/vent/ActStore$a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2
.end method


# virtual methods
.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 10

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    check-cast p1, Lcom/vent/ActStore$a$a;

    iget-object v0, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v2, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/a/m;->c(Lcom/vent/a/m;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, v0, Lcom/vent/ActStore;->bVq:I

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v0, v0, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/vent/a/h;->EV()Z

    move-result v0

    if-nez v0, :cond_3

    move v7, v3

    :goto_2
    if-eqz v7, :cond_4

    sget-object v0, Lcom/vent/bb;->ciU:Ljava/util/Set;

    iget-object v5, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_3
    iget-object v3, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v5, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-static {v5}, Lcom/vent/a/m;->c(Lcom/vent/a/m;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v3, v3, Lcom/vent/ActStore;->bVp:I

    :goto_4
    iget-object v5, p1, Lcom/vent/ActStore$a$a;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v8, p1, Lcom/vent/ActStore$a$a;->bVB:Landroid/widget/TextView;

    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    const v9, 0x7f0f005d

    invoke-virtual {v5, v9}, Lcom/vent/ActStore;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/vent/ActStore$a$a;->bVB:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p1, Lcom/vent/ActStore$a$a;->bYy:Landroid/widget/ImageView;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v8, p1, Lcom/vent/ActStore$a$a;->bYy:Landroid/widget/ImageView;

    if-nez v7, :cond_7

    move v5, v4

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p1, Lcom/vent/ActStore$a$a;->bYz:Landroid/widget/ImageView;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p1, Lcom/vent/ActStore$a$a;->bYz:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    move v0, v4

    :goto_7
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v0, v0, Lcom/vent/ActStore;->bYs:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vent/a/h;->ER()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v0, v0, Lcom/vent/ActStore;->bVI:Lcom/vent/a/x;

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActStore$a;->cbg:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/vent/ActStore$a;->ew(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lcom/vent/a/h;->bo(Z)I

    move-result v0

    move v2, v0

    goto/16 :goto_1

    :cond_3
    move v7, v4

    goto/16 :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v4}, Lcom/vent/a/h;->bm(Z)I

    move-result v3

    goto :goto_4

    :cond_6
    iget-object v5, v1, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5

    :cond_7
    move v5, v6

    goto :goto_6

    :cond_8
    move v0, v6

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    iget-object v0, v0, Lcom/vent/ActStore;->bYs:Ljava/util/Map;

    iget-object v5, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/vent/d/a;->eQ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v0, Lcom/vent/bb;->ciT:Ljava/util/Map;

    iget-object v1, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_b

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    const v1, 0x7f0f0157

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/vent/d/a;->eQ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, p1, Lcom/vent/ActStore$a$a;->bYA:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    new-instance v0, Lcom/vent/ActStore$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00d3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/ActStore$a$a;-><init>(Lcom/vent/ActStore$a;Landroid/view/View;)V

    return-object v0
.end method
