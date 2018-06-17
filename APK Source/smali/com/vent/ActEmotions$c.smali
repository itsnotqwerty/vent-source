.class public final Lcom/vent/ActEmotions$c;
.super Lcom/vent/ah;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActEmotions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field bVD:I

.field bVE:I

.field bVF:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ah;-><init>()V

    return-void
.end method

.method static eh(I)Landroid/support/v4/app/i;
    .locals 3

    new-instance v0, Lcom/vent/ActEmotions$c;

    invoke-direct {v0}, Lcom/vent/ActEmotions$c;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ec_idx"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vent/ActEmotions$c;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/vent/ActEmotions$c;->bVD:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/vent/ActEmotions$c;->bVD:I

    iget-object v2, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vent/ActEmotions$c;->bVD:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/h;

    iget-object v2, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v3, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v2, v3}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v6

    iget-object v2, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v3, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    invoke-static {v2, v3}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v7

    if-nez v6, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vent/a/g;

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/vent/a/h;->EV()Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v3, v3, Lcom/vent/a/y;->ckR:Ljava/util/Date;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v3}, Lcom/vent/a/y;->Fc()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/vent/a/h;->ES()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/vent/ActEmotions$c;->bVD:I

    iget-object v1, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/h;

    iget-object v3, v1, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/vent/ActEmotions;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/vent/MyApplication;

    iget-object v1, v1, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    new-instance v4, Lcom/vent/ActEmotions$8;

    invoke-direct {v4, v0, v2}, Lcom/vent/ActEmotions$8;-><init>(Lcom/vent/ActEmotions;I)V

    invoke-virtual {v1, v0, v3, v8, v4}, Lcom/vent/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_9

    sget-object v1, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    :goto_2
    sget-object v3, Lcom/vent/bb;->ciW:Lcom/vent/a/m;

    invoke-static {v3, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v3

    if-nez v3, :cond_e

    sput-object v1, Lcom/vent/bb;->ciW:Lcom/vent/a/m;

    move v3, v5

    :goto_3
    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    iget-object v3, v2, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    move v3, v5

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {}, Lcom/vent/bb;->EE()V

    :cond_7
    iget-object v1, v0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    iput-object v2, v1, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    :cond_8
    iget-object v1, v0, Lcom/vent/ActEmotions;->bVh:Lcom/vent/a/z;

    invoke-static {v0, v8, v1}, Lcom/vent/ActVent;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/z;)V

    goto :goto_1

    :cond_9
    iget-object v1, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    goto :goto_2

    :cond_a
    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/m;

    iget-object v6, v2, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-static {v1, v6}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    iget-object v3, v2, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    iget-object v3, v2, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_4
    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x7

    if-le v1, v3, :cond_5

    sget-object v1, Lcom/vent/bb;->ciV:Ljava/util/List;

    sget-object v3, Lcom/vent/bb;->ciV:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Lcom/vent/a/h;->ES()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v7, :cond_c

    invoke-virtual {v0, v4}, Lcom/vent/ActEmotions;->aV(Z)V

    :cond_c
    iget-object v2, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/vent/ActEmotions;->eg(I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v1}, Lcom/vent/a/h;->ET()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1, v8}, Lcom/vent/ActStoreEmotCat;->a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V

    goto/16 :goto_1

    :cond_e
    move v3, v4

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x7f0901cc
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/ah;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vent/ActEmotions$c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ec_idx"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vent/ActEmotions$c;->bVD:I

    invoke-virtual {p0}, Lcom/vent/ActEmotions$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vent/ActEmotions$c;->bVE:I

    invoke-virtual {p0}, Lcom/vent/ActEmotions$c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/vent/ActEmotions$c;->bVF:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    const v2, 0x7f0b006a

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vent/ActEmotions$c;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    check-cast v2, Lcom/vent/ActEmotions;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vent/ActEmotions$c;->bVD:I

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vent/ActEmotions$c;->bVD:I

    iget-object v4, v2, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, v2, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vent/ActEmotions$c;->bVD:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vent/a/h;

    iget-object v4, v3, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v5, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v4, v5}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v7

    iget-object v4, v3, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v5, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    invoke-static {v4, v5}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v14

    if-nez v7, :cond_0

    if-eqz v14, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v6, v4

    :goto_0
    invoke-virtual {v3}, Lcom/vent/a/h;->EV()Z

    move-result v4

    if-nez v6, :cond_5

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    const v5, 0x7f0901cc

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_1

    const v4, 0x7f0901cd

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/vent/a/h;->bm(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v4, 0x7f0901bc

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v5, v2, Lcom/vent/ActEmotions;->bVb:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vent/ActEmotions$c;->bVD:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v3, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vent/ActEmotions$c;->bVE:I

    mul-int/lit8 v6, v6, 0x3

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatTextView;->setBreakStrategy(I)V

    :cond_2
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatTextView;->setGravity(I)V

    sget-object v5, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vent/ActEmotions$c;->bVE:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/vent/ActEmotions;->c(Lcom/vent/a/h;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setTextColor(I)V

    if-eqz v7, :cond_7

    const v2, 0x7f0f0183

    :goto_3
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setText(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_4
    return-object v13

    :cond_4
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0x8

    goto/16 :goto_2

    :cond_7
    const v2, 0x7f0f00c8

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_9
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vent/a/g;

    if-eqz v6, :cond_b

    invoke-static {v5}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v7

    move-object v12, v7

    :goto_6
    if-eqz v12, :cond_9

    new-instance v16, Landroid/support/v7/widget/AppCompatTextView;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatTextView;->setMinLines(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatTextView;->setMaxLines(I)V

    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Lcom/vent/a/h;->bo(Z)I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatTextView;->setTextColor(I)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vent/ActEmotions$c;->bVE:I

    int-to-float v8, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    if-eqz v6, :cond_c

    invoke-virtual {v12}, Lcom/vent/a/h;->EV()Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    move v11, v7

    :goto_7
    if-eqz v11, :cond_d

    sget v7, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v7, v7, 0x5

    move v10, v7

    :goto_8
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vent/ActEmotions$c;->bVF:I

    mul-int/lit8 v7, v7, 0x2

    move v9, v7

    :goto_9
    if-eqz v11, :cond_f

    sget v7, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v7, v7, 0x5

    move v8, v7

    :goto_a
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vent/ActEmotions$c;->bVF:I

    mul-int/lit8 v7, v7, 0x2

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v9, v8, v7}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    iget-boolean v7, v5, Lcom/vent/a/g;->axa:Z

    if-eqz v7, :cond_11

    invoke-virtual {v5}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    :goto_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/AppCompatTextView;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/AppCompatTextView;->setGravity(I)V

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_a

    invoke-virtual/range {v16 .. v17}, Landroid/support/v7/widget/AppCompatTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/vent/a/h;->bm(Z)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/AppCompatTextView;->setBackgroundColor(I)V

    :cond_a
    if-eqz v11, :cond_12

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/support/v7/widget/r;

    invoke-direct {v7, v2}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sget v9, Lcom/vent/MyApplication;->cgh:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f080129

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_b
    move-object v12, v3

    goto/16 :goto_6

    :cond_c
    const/4 v7, 0x0

    move v11, v7

    goto/16 :goto_7

    :cond_d
    sget v7, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v7, v7, 0x2

    move v10, v7

    goto/16 :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/vent/ActEmotions$c;->bVF:I

    move v9, v7

    goto/16 :goto_9

    :cond_f
    sget v7, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v7, v7, 0x2

    move v8, v7

    goto/16 :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget v7, v0, Lcom/vent/ActEmotions$c;->bVF:I

    goto/16 :goto_b

    :cond_11
    invoke-virtual {v5}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, " [*]"

    invoke-static {v7, v8}, Lcom/vent/d/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_c

    :cond_12
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_13
    if-eqz v14, :cond_3

    iget-boolean v3, v2, Lcom/vent/ActEmotions;->bVd:Z

    if-eqz v3, :cond_3

    new-instance v3, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/support/v7/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setMinLines(I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setMaxLines(I)V

    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setTextColor(I)V

    const/4 v2, 0x2

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v3, v2, v5}, Landroid/support/v7/widget/AppCompatTextView;->setTextSize(IF)V

    sget v2, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vent/ActEmotions$c;->bVF:I

    mul-int/lit8 v5, v5, 0x2

    sget v6, Lcom/vent/MyApplication;->cgg:I

    mul-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vent/ActEmotions$c;->bVF:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    const v2, 0x7f0f010a

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setText(I)V

    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/AppCompatTextView;->setGravity(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vent/ActEmotions$c;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vent/ActEmotions$c;->bVD:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/vent/ActEmotions$c;->bVD:I

    iget-object v3, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v1, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    iget v3, p0, Lcom/vent/ActEmotions$c;->bVD:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/h;

    iget-object v3, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v4, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v3, v4}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v3

    iget-object v1, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v4, Lcom/vent/ActEmotions;->bVt:Lcom/vent/a/m;

    invoke-static {v1, v4}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v1

    if-nez v3, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/vent/ActEmotions;->aV(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/g;

    invoke-static {v1}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v1

    iget-object v3, v0, Lcom/vent/ActEmotions;->bVa:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/vent/ActEmotions;->eg(I)V

    :cond_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_0
.end method
