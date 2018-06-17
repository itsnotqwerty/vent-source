.class public final Lcom/intercom/input/gallery/adapter/c;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/intercom/input/gallery/adapter/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final blE:Landroid/view/LayoutInflater;

.field private final bmp:Lcom/intercom/input/gallery/adapter/e;

.field private final expanded:Z

.field public final galleryImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intercom/input/gallery/b;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/intercom/composer/e;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;ZLcom/intercom/input/gallery/adapter/e;Lcom/intercom/composer/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/input/gallery/b;",
            ">;Z",
            "Lcom/intercom/input/gallery/adapter/e;",
            "Lcom/intercom/composer/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object p1, p0, Lcom/intercom/input/gallery/adapter/c;->blE:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/intercom/input/gallery/adapter/c;->galleryImages:Ljava/util/List;

    iput-boolean p3, p0, Lcom/intercom/input/gallery/adapter/c;->expanded:Z

    iput-object p4, p0, Lcom/intercom/input/gallery/adapter/c;->bmp:Lcom/intercom/input/gallery/adapter/e;

    iput-object p5, p0, Lcom/intercom/input/gallery/adapter/c;->imageLoader:Lcom/intercom/composer/e;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/adapter/c;->galleryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 3

    check-cast p1, Lcom/intercom/input/gallery/adapter/d;

    iget-object v1, p0, Lcom/intercom/input/gallery/adapter/c;->imageLoader:Lcom/intercom/composer/e;

    iget-object v0, p0, Lcom/intercom/input/gallery/adapter/c;->galleryImages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/b;

    iget-object v2, p1, Lcom/intercom/input/gallery/adapter/d;->blB:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2}, Lcom/intercom/composer/e;->loadImageIntoView(Lcom/intercom/input/gallery/b;Landroid/widget/ImageView;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 3

    iget-boolean v0, p0, Lcom/intercom/input/gallery/adapter/c;->expanded:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/intercom/input/gallery/m$f;->intercom_composer_expanded_image_list_item:I

    :goto_0
    iget-object v1, p0, Lcom/intercom/input/gallery/adapter/c;->blE:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/intercom/input/gallery/adapter/d;

    iget-object v2, p0, Lcom/intercom/input/gallery/adapter/c;->bmp:Lcom/intercom/input/gallery/adapter/e;

    invoke-direct {v1, v0, v2}, Lcom/intercom/input/gallery/adapter/d;-><init>(Landroid/view/View;Lcom/intercom/input/gallery/adapter/e;)V

    return-object v1

    :cond_0
    sget v0, Lcom/intercom/input/gallery/m$f;->intercom_composer_image_list_item:I

    goto :goto_0
.end method

.method public final synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 2

    check-cast p1, Lcom/intercom/input/gallery/adapter/d;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/adapter/c;->imageLoader:Lcom/intercom/composer/e;

    iget-object v1, p1, Lcom/intercom/input/gallery/adapter/d;->blB:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/intercom/composer/e;->clear(Landroid/widget/ImageView;)V

    return-void
.end method
