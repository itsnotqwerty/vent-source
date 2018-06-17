.class final Lcom/intercom/composer/b/b/d;
.super Landroid/support/v7/widget/RecyclerView$x;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final blB:Landroid/widget/ImageView;

.field final blC:Lcom/intercom/composer/b/b/b;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/intercom/composer/b/b/b;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/intercom/composer/b/b/d;->blC:Lcom/intercom/composer/b/b/b;

    sget v0, Lcom/intercom/composer/g$e;->input_icon_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/intercom/composer/b/b/d;->blB:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/intercom/composer/b/b/d;->blB:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/b/b/d;->blC:Lcom/intercom/composer/b/b/b;

    invoke-interface {v0, p0}, Lcom/intercom/composer/b/b/b;->z(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method
