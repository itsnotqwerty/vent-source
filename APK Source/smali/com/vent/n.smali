.class public abstract Lcom/vent/n;
.super Lcom/vent/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/n$a;,
        Lcom/vent/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/s;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/vent/a;Lcom/vent/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vent/m;-><init>(Lcom/vent/a;Lcom/vent/am;)V

    return-void
.end method


# virtual methods
.method protected abstract AZ()V
.end method

.method public final bridge synthetic CB()V
    .locals 0

    invoke-super {p0}, Lcom/vent/m;->CB()V

    return-void
.end method

.method public final bridge synthetic CC()V
    .locals 0

    invoke-super {p0}, Lcom/vent/m;->CC()V

    return-void
.end method

.method public final CG()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vent/n;->Cw()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const v3, 0xa000

    if-ge v2, v3, :cond_1

    :cond_0
    const-string v2, "notifications"

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "needmore"

    iget-boolean v3, p0, Lcom/vent/n;->cbf:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "age"

    iget-wide v4, p0, Lcom/vent/n;->bZY:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic CH()V
    .locals 0

    invoke-super {p0}, Lcom/vent/m;->CH()V

    return-void
.end method

.method public final bridge synthetic g(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/vent/m;->g(ZZ)V

    return-void
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/m;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/m;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/vent/m;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/vent/n;->AZ()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vent/n;->ew(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/vent/n;->cbf:Z

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/vent/n;->Cw()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    if-lt v4, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/vent/n;->AZ()V

    :cond_2
    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v19, v4

    :goto_1
    check-cast p1, Lcom/vent/n$b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vent/n;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/support/v7/app/d;

    invoke-static/range {v18 .. v18}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v21

    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    if-nez v4, :cond_7

    :cond_4
    const v4, -0x7f7f80

    move/from16 v20, v4

    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v5, 0x7f060076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/vent/a/s;->read:Z

    if-eqz v5, :cond_a

    :cond_5
    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbi:Landroid/widget/TextView;

    if-nez v19, :cond_e

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/vent/n$b;->cbj:Landroid/widget/TextView;

    if-nez v19, :cond_f

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v19, :cond_11

    const/4 v10, 0x0

    :goto_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vent/n;->bUM:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vent/n;->caZ:Ljava/lang/ref/WeakReference;

    sget v4, Lcom/vent/d/e;->cng:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v11, v4, 0x1

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    if-eqz v4, :cond_12

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v13, v4, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    :goto_7
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v12, v7

    invoke-static/range {v8 .. v17}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Z

    const/4 v6, 0x2

    invoke-static {v4, v6, v5}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;I[Z)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/vent/d/e;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_14

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    check-cast v4, Lcom/vent/CachedImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vent/a/s;

    move-object/from16 v19, v4

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v5, v5, Lcom/vent/a/t;->cjQ:Lcom/vent/a/m;

    invoke-static {v4, v5}, Lcom/vent/d/c;->b(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v4

    if-nez v4, :cond_9

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget v4, v4, Lcom/vent/a/t;->ckI:I

    if-nez v4, :cond_8

    const v4, -0x7f7f80

    move/from16 v20, v4

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget v4, v4, Lcom/vent/a/t;->ckI:I

    move/from16 v0, v21

    invoke-static {v0, v4}, Lcom/vent/a/h;->b(ZI)I

    move-result v4

    move/from16 v20, v4

    goto/16 :goto_2

    :cond_9
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/vent/a/h;->bn(Z)I

    move-result v4

    move/from16 v20, v4

    goto/16 :goto_2

    :cond_a
    move/from16 v0, v20

    invoke-static {v0, v4}, Landroid/support/v4/a/a;->m(II)D

    move-result-wide v4

    if-eqz v21, :cond_c

    const-wide v8, 0x4004cccccccccccdL    # 2.6

    cmpg-double v4, v4, v8

    if-gez v4, :cond_b

    const/high16 v4, 0x50000000

    :goto_9
    const v5, 0xffffff

    and-int v5, v5, v20

    or-int/2addr v4, v5

    goto/16 :goto_3

    :cond_b
    const/high16 v4, 0x30000000

    goto :goto_9

    :cond_c
    const-wide v8, 0x4004cccccccccccdL    # 2.6

    cmpg-double v4, v4, v8

    if-gez v4, :cond_d

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_9

    :cond_d
    const/high16 v4, 0x19000000

    goto :goto_9

    :cond_e
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckF:Ljava/util/Date;

    invoke-static {v4}, Lcom/vent/d/e;->m(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vent/n;->bUM:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vent/n;->caZ:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vent/a/s;->ckC:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    if-eqz v8, :cond_10

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v8, v8, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    :goto_a
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;ILjava/lang/Object;ZZ)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    goto/16 :goto_5

    :cond_10
    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/vent/a/s;->ckD:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    if-eqz v4, :cond_19

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v4, v4, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    if-eqz v4, :cond_19

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v4, v4, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lez v7, :cond_18

    const/4 v4, 0x0

    move v6, v4

    :goto_b
    if-ge v6, v7, :cond_17

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v4, v4, Lcom/vent/a/t;->ccR:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vent/a/x;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbo:Ljava/util/List;

    invoke-static {v5}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbo:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vent/CachedImageView;

    :goto_c
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    sget v9, Lcom/vent/MyApplication;->cgk:I

    sget v10, Lcom/vent/MyApplication;->cgk:I

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v6, :cond_15

    sget v9, Lcom/vent/MyApplication;->cge:I

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_15
    sget v9, Lcom/vent/MyApplication;->cgj:I

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget v9, Lcom/vent/MyApplication;->cgj:I

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v8}, Lcom/vent/CachedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v8, Lcom/vent/MyApplication;->cgk:I

    sget v9, Lcom/vent/MyApplication;->cgm:I

    invoke-static {v4, v5, v8, v9}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    new-instance v8, Lcom/vent/n$a;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vent/n;->bUM:Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v9, v4}, Lcom/vent/n$a;-><init>(Ljava/lang/ref/WeakReference;Lcom/vent/a/x;)V

    invoke-virtual {v5, v8}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_b

    :cond_16
    new-instance v5, Lcom/vent/CachedImageView;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/vent/CachedImageView;-><init>(Landroid/content/Context;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Lcom/vent/CachedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v8, Lcom/vent/MyApplication;->cgk:I

    sget v9, Lcom/vent/MyApplication;->cgk:I

    invoke-virtual {v5, v8, v9}, Lcom/vent/CachedImageView;->aH(II)V

    const v8, 0x7f08012b

    invoke-virtual {v5, v8}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    goto :goto_c

    :cond_17
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_d
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "InteractedWithVent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v4, v4, Lcom/vent/a/t;->ckH:Lcom/vent/a/o;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->ckE:Lcom/vent/a/t;

    iget-object v4, v4, Lcom/vent/a/t;->ckH:Lcom/vent/a/o;

    sget-object v5, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    iget-object v5, v5, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v4, v5}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f0800a8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    :cond_19
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbl:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    :cond_1a
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v6, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v6}, Lcom/vent/d/a;->c(ZIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/vent/a/o;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "CommentedOnVent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f08007b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_1e

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "MentionedInComment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "MentionedInVent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "FavouriteComment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f0800a8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_21

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "NewListener"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "AcceptedFollowRequest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f08005a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_22

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "NewFollowRequest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f080079

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    if-eqz v4, :cond_23

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vent/a/s;->type:Ljava/lang/String;

    const-string v5, "NewGift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const v5, 0x7f0800cc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbm:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/vent/m;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/vent/n$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00ce

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/n$b;-><init>(Lcom/vent/n;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/vent/n$b;

    iget-object v0, p1, Lcom/vent/n$b;->cbn:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/vent/d/a;->bq(Landroid/view/View;)V

    iget-object v0, p1, Lcom/vent/n$b;->cbj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vent/n$b;->cbk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v0, "notifications"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/vent/a/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v0, "needmore"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vent/n;->cbf:Z

    const-string v0, "age"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vent/n;->bZY:J

    :cond_0
    invoke-super {p0, v3, v3}, Lcom/vent/m;->g(ZZ)V

    :cond_1
    return-void
.end method
