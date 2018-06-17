.class public final Lcom/intercom/composer/b/b/e;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field public final blD:Lcom/intercom/composer/b/b/f;

.field private final blE:Landroid/view/LayoutInflater;

.field public blF:Lcom/intercom/composer/b/b;

.field private final blG:Lcom/intercom/composer/b/b/b;

.field public final blH:Landroid/support/v4/app/n;

.field private final blI:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;Lcom/intercom/composer/b/b/f;Lcom/intercom/composer/b/b/b;Landroid/support/v4/app/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;",
            "Lcom/intercom/composer/b/b/f;",
            "Lcom/intercom/composer/b/b/b;",
            "Landroid/support/v4/app/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/intercom/composer/b/b/e;->blI:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    iput-object p3, p0, Lcom/intercom/composer/b/b/e;->blD:Lcom/intercom/composer/b/b/f;

    iput-object p1, p0, Lcom/intercom/composer/b/b/e;->blE:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/intercom/composer/b/b/e;->blG:Lcom/intercom/composer/b/b/b;

    iput-object p5, p0, Lcom/intercom/composer/b/b/e;->blH:Landroid/support/v4/app/n;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    instance-of v1, v0, Lcom/intercom/composer/b/a/b;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/intercom/composer/b/b/e;->blI:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/intercom/composer/b/b;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 4

    iget-object v0, p0, Lcom/intercom/composer/b/b/e;->inputs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    instance-of v1, p1, Lcom/intercom/composer/b/b/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/intercom/composer/b/b/d;

    iget-object v1, p0, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/intercom/composer/b/b;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/composer/b/b/e;->blF:Lcom/intercom/composer/b/b;

    invoke-virtual {v2}, Lcom/intercom/composer/b/b;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p1, Lcom/intercom/composer/b/b/d;->blB:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/intercom/composer/b/b/d;->blB:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/intercom/composer/b/b;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/intercom/composer/b/b/d;->blB:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/intercom/composer/b/b/a;

    iget-object v1, p0, Lcom/intercom/composer/b/b/e;->blE:Landroid/view/LayoutInflater;

    sget v2, Lcom/intercom/composer/g$f;->intercom_composer_empty_view_layout:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intercom/composer/b/b/a;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/intercom/composer/b/b/d;

    iget-object v1, p0, Lcom/intercom/composer/b/b/e;->blE:Landroid/view/LayoutInflater;

    sget v2, Lcom/intercom/composer/g$f;->intercom_composer_input_icon_view_layout:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/intercom/composer/b/b/e;->blG:Lcom/intercom/composer/b/b/b;

    invoke-direct {v0, v1, v2}, Lcom/intercom/composer/b/b/d;-><init>(Landroid/view/View;Lcom/intercom/composer/b/b/b;)V

    goto :goto_0
.end method
