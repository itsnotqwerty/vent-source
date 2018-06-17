.class abstract Lcom/vent/o$b;
.super Lcom/vent/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/o$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vent/m",
        "<",
        "Lcom/vent/a/x;",
        ">.a;"
    }
.end annotation


# instance fields
.field final bUF:Lcom/vent/CachedImageView;

.field final bZI:Landroid/widget/TextView;

.field final cau:Landroid/widget/ImageButton;

.field final synthetic cbs:Lcom/vent/o;


# direct methods
.method constructor <init>(Lcom/vent/o;Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/vent/o$b;->cbs:Lcom/vent/o;

    invoke-direct {p0, p1, p2}, Lcom/vent/m$a;-><init>(Lcom/vent/m;Landroid/view/View;)V

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090232

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/CachedImageView;

    iput-object v0, p0, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    iget-object v0, p0, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p3, p3}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v0, p0, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v0, p0, Lcom/vent/o$b;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v0, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d5

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/o$b;->bZI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/o$b;->bZI:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09010b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/vent/o$b;->cau:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method CR()Lcom/vent/a/x;
    .locals 1

    invoke-virtual {p0}, Lcom/vent/o$b;->CQ()Lcom/vent/a/b;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/o$b;->CR()Lcom/vent/a/x;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/o$b;->cbs:Lcom/vent/o;

    iget-object v0, v0, Lcom/vent/o;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1}, Lcom/vent/a/x;->Fh()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/vent/o$b$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/vent/o$b$1;-><init>(Lcom/vent/o$b;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/vent/a/x;->Fj()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/vent/o$b$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/vent/o$b$2;-><init>(Lcom/vent/o$b;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->d(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/vent/a/x;->Ff()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/vent/o$b$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/vent/o$b$3;-><init>(Lcom/vent/o$b;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->c(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/vent/o$b$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/vent/o$b$4;-><init>(Lcom/vent/o$b;Lcom/vent/a/x;Landroid/support/v7/app/d;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/o$b;->cbs:Lcom/vent/o;

    invoke-virtual {v0, v1}, Lcom/vent/o;->a(Lcom/vent/a/x;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09010b -> :sswitch_0
        0x7f0901aa -> :sswitch_1
        0x7f090232 -> :sswitch_1
    .end sparse-switch
.end method
