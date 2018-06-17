.class abstract Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$b;


# instance fields
.field final toolbarHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_toolbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;->toolbarHeight:F

    return-void
.end method


# virtual methods
.method protected getScrollPercentage(Landroid/view/View;)F
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;->toolbarHeight:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;->toolbarHeight:F

    sub-float/2addr v1, v2

    div-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method protected setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0, p2}, Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;->getScrollPercentage(Landroid/view/View;)F

    move-result v0

    if-eqz p4, :cond_0

    sub-float v0, v1, v0

    :cond_0
    div-float v1, p3, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
