.class final Lcom/vent/j$a;
.super Lcom/vent/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/k;",
        ">.a;"
    }
.end annotation


# instance fields
.field final bVB:Landroid/widget/TextView;

.field final bWi:Lcom/vent/CachedImageView;

.field final bio:Landroid/widget/TextView;

.field final caN:Landroid/widget/ImageView;

.field final caQ:Landroid/widget/TextView;

.field final synthetic caR:Lcom/vent/j;


# direct methods
.method constructor <init>(Lcom/vent/j;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/vent/j$a;->caR:Lcom/vent/j;

    invoke-direct {p0, p1, p2}, Lcom/vent/m$a;-><init>(Lcom/vent/m;Landroid/view/View;)V

    const v0, 0x7f09021f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/j$a;->bWi:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/j$a;->bWi:Lcom/vent/CachedImageView;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/j$a;->bWi:Lcom/vent/CachedImageView;

    sget v1, Lcom/vent/MyApplication;->cgm:I

    sget v2, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v0, v1, v2}, Lcom/vent/CachedImageView;->aH(II)V

    const v0, 0x7f0901e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/j$a;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/j$a;->bVB:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0901d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/j$a;->caQ:Landroid/widget/TextView;

    const v0, 0x7f0901bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/j$a;->caN:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vent/j$a;->caN:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-static {}, Lcom/vent/views/FixedTextViewTouchConsume$a;->FB()Lcom/vent/views/FixedTextViewTouchConsume$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/j$a;->bio:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method final CK()V
    .locals 4

    invoke-virtual {p0}, Lcom/vent/j$a;->CQ()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/vent/j$a;->caN:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0800c9

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/vent/j$a;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/vent/j$a;->caN:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/vent/j$a;->caN:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vent/j$a;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v0

    invoke-static {v3, v1, v1, v0}, Lcom/vent/d/a;->b(Landroid/content/Context;IIZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0800ca

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/vent/j$a;->CQ()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/vent/j$a$1;

    invoke-direct {v2, p0}, Lcom/vent/j$a$1;-><init>(Lcom/vent/j$a;)V

    invoke-virtual {v0}, Lcom/vent/a/k;->EX()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vent/j$a;->caR:Lcom/vent/j;

    iget-object v1, v1, Lcom/vent/j;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0, v3, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vent/j$a;->caR:Lcom/vent/j;

    iget-object v1, v1, Lcom/vent/j;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0, v3, v2}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V

    goto :goto_0
.end method
