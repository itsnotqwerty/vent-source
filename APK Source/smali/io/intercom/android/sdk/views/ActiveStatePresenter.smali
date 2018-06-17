.class public Lio/intercom/android/sdk/views/ActiveStatePresenter;
.super Ljava/lang/Object;


# static fields
.field private static final ENGLISH_LOCALE:Ljava/lang/String; = "en"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public presentStateDot(ZLandroid/view/View;Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 4

    const-string v0, "en"

    invoke-virtual {p3}, Lio/intercom/android/sdk/identity/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_active_state:I

    :goto_1
    invoke-static {v1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    new-instance v3, Lio/intercom/android/sdk/views/ActiveStateDrawable;

    invoke-direct {v3, v0, v1, v2}, Lio/intercom/android/sdk/views/ActiveStateDrawable;-><init>(IIF)V

    invoke-static {p2, v3}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_away_state:I

    goto :goto_1
.end method
