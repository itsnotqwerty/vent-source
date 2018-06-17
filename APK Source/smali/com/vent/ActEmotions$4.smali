.class final Lcom/vent/ActEmotions$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEmotions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVw:Lcom/vent/ActEmotions;


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v0, v0, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v1, v1, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v2, v2, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v3, v3, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v3, v3, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v3, v3, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v4, v4, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v4, v4, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    mul-int/2addr v2, v4

    iget-object v4, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v4, v4, Lcom/vent/ActEmotions;->bVf:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int v0, v2, v0

    add-int/2addr v0, v1

    div-int/lit8 v1, v3, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget v1, v1, Lcom/vent/ActEmotions;->bVm:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget v0, v0, Lcom/vent/ActEmotions;->bVm:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget-object v1, v1, Lcom/vent/ActEmotions;->bVl:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    :cond_1
    return-void

    :cond_2
    add-int v1, v0, v3

    iget-object v2, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget v2, v2, Lcom/vent/ActEmotions;->bVn:I

    if-le v1, v2, :cond_0

    iget-object v0, p0, Lcom/vent/ActEmotions$4;->bVw:Lcom/vent/ActEmotions;

    iget v0, v0, Lcom/vent/ActEmotions;->bVn:I

    sub-int/2addr v0, v3

    goto :goto_0
.end method
