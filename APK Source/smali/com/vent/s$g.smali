.class final Lcom/vent/s$g;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final bUF:Lcom/vent/CachedImageView;

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

.field final bZI:Landroid/widget/TextView;

.field final caZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/am;",
            ">;"
        }
    .end annotation
.end field

.field final cai:Landroid/widget/TextView;

.field final caj:Landroid/widget/TextView;

.field final cam:Landroid/widget/ImageButton;

.field final cau:Landroid/widget/ImageButton;

.field final cay:Landroid/widget/TextView;

.field final cbC:Landroid/widget/TextView;

.field final ccA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final ccB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field ccq:Lcom/vent/a/z;

.field final ccr:Z

.field final ccs:Landroid/view/View;

.field final cct:Landroid/view/View;

.field final ccu:Landroid/view/View;

.field final ccv:Landroid/widget/TextView;

.field final ccw:Landroid/widget/TextView;

.field final ccx:Landroid/widget/TextView;

.field final ccy:Landroid/widget/LinearLayout;

.field final ccz:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/am;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/vent/s$g;->ccr:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/s$g;->ccA:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vent/s$g;->ccB:Ljava/util/List;

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090087

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/s$g;->ccs:Landroid/view/View;

    const v0, 0x7f090232

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    sget v2, Lcom/vent/MyApplication;->cgm:I

    sget v3, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v0, v2, v3}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    const v2, 0x7f08012b

    invoke-virtual {v0, v2}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090234

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/s$g;->cct:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/s$g;->cct:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/s$g;->cct:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0902d5

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->bZI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->bZI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/s$g;->bZI:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090186

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0900df

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/s$g;->cbC:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e7

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/s$g;->ccu:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/s$g;->ccu:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$g;->ccu:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0902e4

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->ccv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->ccv:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090252

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->cay:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090121

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/s$g;->ccw:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090187

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->ccx:Landroid/widget/TextView;

    const v0, 0x7f090058

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_3
    const v0, 0x7f09009a

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/s$g;->caj:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09014a

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vent/s$g;->ccy:Landroid/widget/LinearLayout;

    const v0, 0x7f0900a7

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vent/s$g;->ccz:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d3

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cam:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f09010b

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/s$g;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    new-instance v2, Landroid/support/v7/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/vent/s$g;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v3, Lcom/vent/MyApplication;->cgt:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget v3, Lcom/vent/MyApplication;->cgu:I

    sget v4, Lcom/vent/MyApplication;->cgv:I

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v3, 0x7f09018a

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/vent/s$g;->ccz:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method final Da()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vent/s$g;->ccy:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$g;->ccy:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/s$g;->ccy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/vent/d/a;->bq(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/vent/s;->cbJ:I

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/s$g;->ccB:Ljava/util/List;

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/s$g;->ccA:Ljava/util/List;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method final Db()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/s$g;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/s$g;->cai:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-virtual {p0}, Lcom/vent/s$g;->Da()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10

    const v9, 0x7f090194

    const v8, 0x7f09018a

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    :goto_1
    iget-object v1, p0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/am;

    :goto_2
    instance-of v2, v1, Lcom/vent/FrgVentsList;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/vent/FrgVentsList;

    iget-object v3, v2, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/vent/FrgVentsList;->ceE:Lcom/vent/l;

    check-cast v2, Lcom/vent/s;

    iget-object v2, v2, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/vent/s$a;->bZY:J

    :cond_2
    iget-object v2, p0, Lcom/vent/s$g;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    if-lt v3, v9, :cond_9

    const v1, 0x7f09019a

    if-ge v3, v1, :cond_9

    iget-object v1, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    sub-int v2, v3, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/n;

    iget-object v1, v1, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    invoke-static {v1}, Lcom/vent/a/o;->e(Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v2}, Lcom/vent/a/y;->Fc()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Lcom/vent/d/f;->v(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    move-object v0, v5

    goto :goto_1

    :cond_4
    move-object v1, v5

    goto :goto_2

    :sswitch_0
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    invoke-static {v0, v1, v2, v5}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget v2, v2, Lcom/vent/a/z;->clc:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-static {v0, v1, v2}, Lcom/vent/ActGroup;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/k;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Lcom/vent/s;->cbK:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "api/v2/users/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v6, v6, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v6}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/vents.json?q%5bprivacy_setting_eq%5d=privacy_personal"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/vent/ActVentList;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Lcom/vent/s;->cbL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "api/v2/users/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v6, v6, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v6}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/vents.json?q%5bprivacy_setting_eq%5d=privacy_mutuals"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/vent/ActVentList;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_5

    instance-of v2, v1, Lcom/vent/FrgVentsList;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/vent/FrgVentsList;

    iget v2, v2, Lcom/vent/FrgVentsList;->cfG:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v2/my/emotions/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vents.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v2, v5, Lcom/vent/a/g;->cjP:Ljava/lang/String;

    invoke-static {v2}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "SearchEmotions"

    invoke-static/range {v0 .. v5}, Lcom/vent/ActVentList;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v2/emotions/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/latest_vents.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v3, v1, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Lcom/vent/a/z;->f(Lcom/vent/a/m;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v3, v1, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v2, v3}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/z;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vent/a/z;->a(Lcom/vent/a/m;I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/d/c;->h(Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vent/s;->a(Lcom/vent/s$g;Lcom/vent/a/h;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v3, v1, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v2, v3}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/z;Lcom/vent/a/m;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vent/a/z;->a(Lcom/vent/a/m;I)V

    goto :goto_4

    :cond_9
    if-lt v3, v8, :cond_b

    const v1, 0x7f090190

    if-ge v3, v1, :cond_b

    iget-object v1, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->ckZ:Ljava/util/ArrayList;

    sub-int/2addr v3, v8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/n;

    iget-object v1, v1, Lcom/vent/a/n;->cjy:Lcom/vent/a/m;

    invoke-static {v1}, Lcom/vent/a/o;->e(Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v3, v3, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v3}, Lcom/vent/d/c;->h(Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v3

    iget-object v4, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Lcom/vent/a/h;->bB(Landroid/content/Context;)I

    :cond_a
    invoke-static {v0, v4, v1}, Lcom/vent/ActUserListInteractions;->a(Landroid/app/Activity;Lcom/vent/a/z;Lcom/vent/a/o;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    iget-object v1, p0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/vent/s$g;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/am;

    :goto_5
    instance-of v2, v0, Lcom/vent/ActVentView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-virtual {v2}, Lcom/vent/a/z;->Fm()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/support/v7/app/c$a;

    invoke-direct {v2, v0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0063

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v2

    const v3, 0x7f0f0142

    invoke-virtual {v0, v3}, Landroid/support/v7/app/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x7f0f0116

    new-instance v3, Lcom/vent/s$g$1;

    invoke-direct {v3, p0, v1}, Lcom/vent/s$g$1;-><init>(Lcom/vent/s$g;Landroid/support/v4/app/i;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto/16 :goto_0

    :cond_c
    move-object v1, v5

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    invoke-static {v0, v1, v4, v2}, Lcom/vent/ActVentView;->a(Landroid/app/Activity;Landroid/support/v4/app/i;ZLcom/vent/a/z;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0900df -> :sswitch_2
        0x7f0900e7 -> :sswitch_2
        0x7f090121 -> :sswitch_1
        0x7f090232 -> :sswitch_0
        0x7f090234 -> :sswitch_0
        0x7f0902d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
