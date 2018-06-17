.class final Lcom/vent/ActEmotions$a$a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActEmotions$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActEmotions$a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field final bVA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ActEmotions$a;",
            ">;"
        }
    .end annotation
.end field

.field final bVz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions$a;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vent/ActEmotions$a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ActEmotions$a$a;->bVA:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vent/ActEmotions$a$a;->bVz:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEmotions$a$a;->bVz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/vent/ActEmotions$a$a;->bVz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    invoke-virtual {v0}, Lcom/vent/a/m;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/vent/ActEmotions$a$a$a;

    iget-object v0, p0, Lcom/vent/ActEmotions$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions$a;

    invoke-virtual {v0}, Lcom/vent/ActEmotions$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/ActEmotions;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActEmotions$a$a;->bVz:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/h;

    invoke-virtual {v0, v1}, Lcom/vent/ActEmotions;->c(Lcom/vent/a/h;)I

    move-result v4

    iget-object v5, p1, Lcom/vent/ActEmotions$a$a$a;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/vent/ActEmotions;->b(Lcom/vent/a/h;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/vent/a/h;->cjy:Lcom/vent/a/m;

    sget-object v5, Lcom/vent/ActEmotions;->bVs:Lcom/vent/a/m;

    invoke-static {v0, v5}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/vent/a/h;->EV()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-static {v1}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/vent/ActEmotions$a$a$a;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080129

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {v1, v4}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v1, 0x21

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p1, Lcom/vent/ActEmotions$a$a$a;->bVB:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p1, Lcom/vent/ActEmotions$a$a$a;->bVB:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/vent/ActEmotions$a$a$a;->bVB:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/vent/a/h;->cjP:Ljava/lang/String;

    invoke-static {v1}, Lcom/vent/d/e;->s(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    new-instance v0, Lcom/vent/ActEmotions$a$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vent/ActEmotions$a$a$a;-><init>(Lcom/vent/ActEmotions$a$a;Landroid/view/View;)V

    return-object v0
.end method
