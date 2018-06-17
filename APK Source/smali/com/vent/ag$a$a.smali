.class final Lcom/vent/ag$a$a;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ag$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final bUF:Lcom/vent/CachedImageView;

.field final bZI:Landroid/widget/TextView;

.field final bZL:Landroid/widget/TextView;

.field final bZN:Landroid/view/View;

.field final caX:Landroid/view/View;

.field final synthetic cec:Lcom/vent/ag$a;


# direct methods
.method constructor <init>(Lcom/vent/ag$a;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/ag$a$a;->bZI:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vent/ag$a$a;->bZI:Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vent/CachedImageView;

    iput-object v1, p0, Lcom/vent/ag$a$a;->bUF:Lcom/vent/CachedImageView;

    iget-object v1, p0, Lcom/vent/ag$a$a;->bUF:Lcom/vent/CachedImageView;

    sget v2, Lcom/vent/MyApplication;->cgm:I

    sget v3, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v1, v2, v3}, Lcom/vent/CachedImageView;->aH(II)V

    iget-object v1, p0, Lcom/vent/ag$a$a;->bUF:Lcom/vent/CachedImageView;

    const v2, 0x7f08012b

    invoke-virtual {v1, v2}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    iget-object v1, p0, Lcom/vent/ag$a$a;->bUF:Lcom/vent/CachedImageView;

    invoke-virtual {v1, p0}, Lcom/vent/CachedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ag$a$a;->bZN:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ag$a$a;->bZN:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ag$a$a;->caX:Landroid/view/View;

    const v0, 0x7f0902cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ag$a$a;->bZL:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    iget-object v0, v0, Lcom/vent/ag$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ag;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/vent/ag;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    check-cast v1, Lcom/vent/ActMain;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vent/ag$a$a;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    iget-object v3, v3, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    iget-object v3, v3, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    const v0, 0x7f0f012c

    invoke-static {v1, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v3, p0, Lcom/vent/ag$a$a;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/vent/ag$a$a$1;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/vent/ag$a$a$1;-><init>(Lcom/vent/ag$a$a;Lcom/vent/ActMain;Landroid/support/v7/app/c;I)V

    invoke-static {v3, v4, v5}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    iget-object v0, v0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ag$b;

    iget-object v0, v0, Lcom/vent/ag$b;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    iget-object v0, v0, Lcom/vent/ag$a;->ceb:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/ag$a$a;->cec:Lcom/vent/ag$a;

    invoke-virtual {v0, v2}, Lcom/vent/ag$a;->notifyItemRemoved(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0900bc
        :pswitch_0
    .end packed-switch
.end method
