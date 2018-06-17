.class public final Lcom/vent/ActStoreEmotCat;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private bVH:Lcom/vent/a/h;

.field private bVI:Lcom/vent/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V
    .locals 2

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActStoreEmotCat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ec"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "user_gift"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lcom/vent/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "closeStore"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/vent/ActStoreEmotCat;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    instance-of v0, p1, Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vent/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    invoke-static {p0, v0, v1}, Lcom/vent/ActGift;->a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    invoke-static {p0, v0, v1}, Lcom/vent/ActGift;->a(Lcom/vent/a;Lcom/vent/a/h;Lcom/vent/a/x;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    invoke-virtual {v0}, Lcom/vent/a/h;->ET()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    iget-object v0, v0, Lcom/vent/MyApplication;->cgB:Lcom/vent/b/a;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/vent/ActStoreEmotCat$1;

    invoke-direct {v3, p0}, Lcom/vent/ActStoreEmotCat$1;-><init>(Lcom/vent/ActStoreEmotCat;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/vent/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/vent/ActStoreEmotCat$2;

    invoke-direct {v0, p0}, Lcom/vent/ActStoreEmotCat$2;-><init>(Lcom/vent/ActStoreEmotCat;)V

    invoke-static {p0, v0}, Lcom/vent/b/a;->a(Landroid/app/Activity;Lcom/vent/d/c$b;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f09005d -> :sswitch_1
        0x7f090110 -> :sswitch_0
        0x7f09011b -> :sswitch_0
        0x7f0901bc -> :sswitch_0
        0x7f0902ca -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f0901bc

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->setContentView(I)V

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iput-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_gift"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    iput-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    const v0, 0x7f0902af

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-static {v1}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    invoke-virtual {v1, v3}, Lcom/vent/a/h;->bm(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v12}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->ckb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_2
    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/m;

    sget-object v4, Lcom/vent/bb;->ciP:Ljava/util/Map;

    if-nez v4, :cond_5

    const/4 v1, 0x0

    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_3

    iget-boolean v1, v4, Lcom/vent/a/g;->axa:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/vent/bb;->cia:Z

    if-eqz v1, :cond_3

    :cond_4
    new-instance v8, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v8, p0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    invoke-virtual {v8, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    invoke-virtual {v1, v3}, Lcom/vent/a/h;->bo(Z)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v1, v5

    invoke-virtual {v8, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v8, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v1, v4, Lcom/vent/a/g;->axa:Z

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/g;

    move-object v4, v1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " [*]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0902ca

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    if-nez v5, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    invoke-virtual {v0}, Lcom/vent/a/h;->EV()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    if-eqz v0, :cond_0

    const v0, 0x7f090110

    invoke-virtual {p0, v0}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v12}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    instance-of v0, p1, Landroid/support/v7/widget/AppCompatTextView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vent/a/g;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/vent/a/g;

    const-string v3, ""

    sget-object v1, Lcom/vent/bb;->ciR:Ljava/util/Map;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vent/bb;->ciR:Ljava/util/Map;

    iget-object v0, v0, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/m;

    invoke-static {v1}, Lcom/vent/a/o;->e(Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [???]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    iget-object v4, v4, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v1, v4}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "[*]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vent/a/o;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[<-]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901aa

    invoke-virtual {p0, v1}, Lcom/vent/ActStoreEmotCat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_5
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/vent/a;->onLongClick(Landroid/view/View;)Z

    move-result v0

    goto :goto_2
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, -0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->finish()V

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/vent/bb;->ciU:Ljava/util/Set;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->invalidateOptionsMenu()V

    const v0, 0x7f0f005f

    invoke-static {p0, v0, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/vent/bb;->ciU:Ljava/util/Set;

    iget-object v1, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v1, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    invoke-virtual {p0}, Lcom/vent/ActStoreEmotCat;->invalidateOptionsMenu()V

    const v0, 0x7f0f005e

    invoke-static {p0, v0, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0

    :sswitch_3
    const-string v0, "http://help.vent.co/support/solutions/42000009808"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09012d -> :sswitch_3
        0x7f090131 -> :sswitch_2
        0x7f09027d -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    invoke-virtual {v0}, Lcom/vent/a/h;->EV()Z

    move-result v4

    sget-object v0, Lcom/vent/bb;->ciU:Ljava/util/Set;

    iget-object v5, p0, Lcom/vent/ActStoreEmotCat;->bVH:Lcom/vent/a/h;

    iget-object v5, v5, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const v0, 0x7f09027d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090131

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09012d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v5, p0, Lcom/vent/ActStoreEmotCat;->bVI:Lcom/vent/a/x;

    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
