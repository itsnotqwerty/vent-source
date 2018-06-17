.class final Lcom/vent/i$b;
.super Lcom/vent/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/l",
        "<",
        "Lcom/vent/a/k;",
        ">.a;"
    }
.end annotation


# instance fields
.field final bVB:Landroid/widget/TextView;

.field final bWe:Landroid/view/View;

.field final bWi:Lcom/vent/CachedImageView;

.field final synthetic caI:Lcom/vent/i;

.field final caM:Landroid/widget/TextView;

.field final caN:Landroid/widget/ImageView;

.field final caO:Landroid/view/View;

.field final cay:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/vent/i;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    invoke-direct {p0, p1, p2}, Lcom/vent/l$a;-><init>(Lcom/vent/l;Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/i$b;->bWi:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/i$b;->bWi:Lcom/vent/CachedImageView;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/i$b;->bWi:Lcom/vent/CachedImageView;

    sget v1, Lcom/vent/MyApplication;->cgm:I

    sget v2, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/CachedImageView;->aH(II)V

    const v0, 0x7f0901e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/i$b;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/i$b;->bVB:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0901d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/i$b;->caM:Landroid/widget/TextView;

    const v0, 0x7f0901bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/i$b;->caN:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vent/i$b;->caN:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/i$b;->caO:Landroid/view/View;

    const v0, 0x7f090252

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/i$b;->cay:Landroid/widget/TextView;

    const v0, 0x7f0901e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/i$b;->bWe:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final CK()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/i$b;->CO()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    iget-object v1, p0, Lcom/vent/i$b;->caN:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0800c9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/vent/i$b;->caN:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vent/i$b;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0800ca

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vent/i$b;->CO()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    invoke-virtual {v1}, Lcom/vent/i;->Cw()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->caH:Lcom/vent/i$a;

    iget-object v1, v1, Lcom/vent/i$a;->caK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v2, v2, Lcom/vent/i;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/i;

    invoke-static {v1, v2, v0}, Lcom/vent/ActGroup;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/k;)V

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/vent/i$b$1;

    invoke-direct {v2, p0}, Lcom/vent/i$b$1;-><init>(Lcom/vent/i$b;)V

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0, v3, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vent/i$b;->caI:Lcom/vent/i;

    iget-object v1, v1, Lcom/vent/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0, v3, v2}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0901bf
        :pswitch_0
    .end packed-switch
.end method
