.class final Lcom/vent/ActVent$a$a$a;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActVent$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bVB:Landroid/widget/TextView;

.field final synthetic bZq:Lcom/vent/ActVent$a$a;

.field final bZs:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vent/ActVent$a$a;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/vent/ActVent$a$a$a;->bZq:Lcom/vent/ActVent$a$a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActVent$a$a$a;->bVB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActVent$a$a$a;->bVB:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/ActVent$a$a$a;->bZs:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vent/ActVent$a$a$a;->bZs:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/ActVent$a$a$a;->bZq:Lcom/vent/ActVent$a$a;

    iget-object v0, v0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActVent$a;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    invoke-virtual {v0}, Lcom/vent/ActVent$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActVent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vent/ActVent$a$a$a;->bZq:Lcom/vent/ActVent$a$a;

    invoke-virtual {p0}, Lcom/vent/ActVent$a$a$a;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vent/ActVent$a$a;->eu(I)Lcom/vent/a/k;

    move-result-object v1

    iget-object v2, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v2, :cond_0

    new-instance v2, Lcom/vent/a/z;

    invoke-direct {v2}, Lcom/vent/a/z;-><init>()V

    iput-object v2, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    :cond_0
    sget-object v2, Lcom/vent/ActVent;->bZg:Lcom/vent/a/m;

    invoke-static {v2, v1}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput v4, v1, Lcom/vent/a/z;->clc:I

    iget-object v1, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v3, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    :goto_0
    invoke-virtual {v0}, Lcom/vent/ActVent;->Ct()V

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/vent/ActVent;->bZh:Lcom/vent/a/m;

    invoke-static {v2, v1}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    const/4 v2, 0x1

    iput v2, v1, Lcom/vent/a/z;->clc:I

    iget-object v1, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v3, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/vent/ActVent;->bZi:Lcom/vent/a/m;

    invoke-static {v2, v1}, Lcom/vent/a/b;->a(Lcom/vent/a/m;Lcom/vent/a/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    const/4 v2, 0x2

    iput v2, v1, Lcom/vent/a/z;->clc:I

    iget-object v1, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v3, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput v4, v2, Lcom/vent/a/z;->clc:I

    iget-object v2, v0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v1, v2, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    goto :goto_0
.end method
