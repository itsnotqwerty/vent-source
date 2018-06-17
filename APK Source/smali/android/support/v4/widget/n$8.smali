.class final Landroid/support/v4/widget/n$8;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KA:Landroid/support/v4/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n$8;->KA:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n$8;->KA:Landroid/support/v4/widget/n;

    iget v0, v0, Landroid/support/v4/widget/n;->Kk:F

    iget-object v1, p0, Landroid/support/v4/widget/n$8;->KA:Landroid/support/v4/widget/n;

    iget v1, v1, Landroid/support/v4/widget/n;->Kk:F

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/widget/n$8;->KA:Landroid/support/v4/widget/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    iget-object v0, p0, Landroid/support/v4/widget/n$8;->KA:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/n;->r(F)V

    return-void
.end method
