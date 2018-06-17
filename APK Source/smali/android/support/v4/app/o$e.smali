.class final Landroid/support/v4/app/o$e;
.super Landroid/view/animation/AnimationSet;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private uF:Z

.field private final vR:Landroid/view/ViewGroup;

.field private final yl:Landroid/view/View;

.field private ym:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object p2, p0, Landroid/support/v4/app/o$e;->vR:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/o$e;->yl:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/o$e;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/app/o$e;->uF:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/o$e;->ym:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/o$e;->uF:Z

    iget-object v1, p0, Landroid/support/v4/app/o$e;->vR:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    goto :goto_0
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/app/o$e;->uF:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/o$e;->ym:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/o$e;->uF:Z

    iget-object v1, p0, Landroid/support/v4/app/o$e;->vR:Landroid/view/ViewGroup;

    invoke-static {v1, p0}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    goto :goto_0
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/o$e;->vR:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/o$e;->yl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/o$e;->ym:Z

    return-void
.end method
