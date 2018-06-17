.class public Lio/intercom/android/sdk/profile/TeammateProfileBackgroundImageView;
.super Landroid/support/v7/widget/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lio/intercom/android/sdk/profile/TeammateProfileBackgroundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lio/intercom/android/sdk/profile/TeammateProfileBackgroundImageView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/r;->onMeasure(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/r;->onMeasure(II)V

    goto :goto_0
.end method
