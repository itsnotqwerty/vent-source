.class final Landroid/support/v4/widget/n$4;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/n;->s(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KA:Landroid/support/v4/widget/n;

.field final synthetic KB:I

.field final synthetic KC:I


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n$4;->KA:Landroid/support/v4/widget/n;

    iput p2, p0, Landroid/support/v4/widget/n$4;->KB:I

    iput p3, p0, Landroid/support/v4/widget/n$4;->KC:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/n$4;->KA:Landroid/support/v4/widget/n;

    iget-object v0, v0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    iget v1, p0, Landroid/support/v4/widget/n$4;->KB:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/n$4;->KC:I

    iget v3, p0, Landroid/support/v4/widget/n$4;->KB:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    return-void
.end method
