.class final Landroid/support/v4/widget/n$2;
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

    iput-object p1, p0, Landroid/support/v4/widget/n$2;->KA:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/n$2;->KA:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/n;->setAnimationProgress(F)V

    return-void
.end method
