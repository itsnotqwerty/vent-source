.class final Lcom/intercom/input/gallery/adapter/d;
.super Landroid/support/v7/widget/RecyclerView$x;


# instance fields
.field final blB:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/intercom/input/gallery/adapter/e;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    sget v0, Lcom/intercom/input/gallery/m$d;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/intercom/input/gallery/adapter/d;->blB:Landroid/widget/ImageView;

    new-instance v0, Lcom/intercom/input/gallery/adapter/d$1;

    invoke-direct {v0, p0, p2}, Lcom/intercom/input/gallery/adapter/d$1;-><init>(Lcom/intercom/input/gallery/adapter/d;Lcom/intercom/input/gallery/adapter/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
