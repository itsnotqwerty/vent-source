.class final Lcom/vent/d/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/view/Menu;Lcom/vent/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic cmQ:Landroid/support/v7/widget/Toolbar;

.field final synthetic cmR:Landroid/view/Menu;

.field final synthetic cmS:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/view/Menu;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d/c$5;->cmQ:Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lcom/vent/d/c$5;->cmR:Landroid/view/Menu;

    iput p3, p0, Lcom/vent/d/c$5;->cmS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/vent/d/c$5;->cmQ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/d/c$5;->cmR:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/vent/d/c$5;->cmR:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vent/d/c$5;->cmQ:Landroid/support/v7/widget/Toolbar;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/vent/d/c$5;->cmS:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
