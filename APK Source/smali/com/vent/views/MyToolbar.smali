.class public final Lcom/vent/views/MyToolbar;
.super Landroid/support/v7/widget/Toolbar;


# instance fields
.field private coF:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getTitleMarginBottom()I
    .locals 2

    iget-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/views/MyToolbar;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getTitleMarginTop()I
    .locals 2

    iget-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vent/views/MyToolbar;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final offsetTopAndBottom(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/views/MyToolbar;->coF:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
