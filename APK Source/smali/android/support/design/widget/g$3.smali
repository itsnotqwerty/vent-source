.class final Landroid/support/design/widget/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mT:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/g$3;->mT:Landroid/support/design/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/design/widget/g$3;->mT:Landroid/support/design/widget/g;

    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getRotation()F

    move-result v1

    iget v2, v0, Landroid/support/design/widget/g;->ke:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    iput v1, v0, Landroid/support/design/widget/g;->ke:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/support/design/widget/g;->ke:F

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getLayerType()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1, v4, v3}, Landroid/support/design/widget/u;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iget v2, v0, Landroid/support/design/widget/g;->ke:F

    neg-float v2, v2

    iget v3, v1, Landroid/support/design/widget/k;->ke:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    iput v2, v1, Landroid/support/design/widget/k;->ke:F

    invoke-virtual {v1}, Landroid/support/design/widget/k;->invalidateSelf()V

    :cond_1
    iget-object v1, v0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    iget v0, v0, Landroid/support/design/widget/g;->ke:F

    neg-float v0, v0

    iget v2, v1, Landroid/support/design/widget/c;->ke:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    iput v0, v1, Landroid/support/design/widget/c;->ke:F

    invoke-virtual {v1}, Landroid/support/design/widget/c;->invalidateSelf()V

    :cond_2
    return v4

    :cond_3
    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/u;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
