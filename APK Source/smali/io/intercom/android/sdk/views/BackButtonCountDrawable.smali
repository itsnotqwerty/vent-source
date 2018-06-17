.class Lio/intercom/android/sdk/views/BackButtonCountDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final COUNT_BACKGROUND_COLOR:Ljava/lang/String; = "#FE536C"

.field private static final COUNT_BACKGROUND_RADIUS_DP:I = 0x8

.field private static final COUNT_TEXT_PADDING_TOP:I = 0x4

.field private static final COUNT_TEXT_SIZE_DP:I = 0xb

.field private static final ICON_PADDING_DP:I = 0x10

.field private static final ICON_SIZE_DP:I = 0x18


# instance fields
.field private final backIcon:Landroid/graphics/drawable/Drawable;

.field private final countBackgroundPaint:Landroid/graphics/Paint;

.field private final countBackgroundRadius:I

.field private final iconPadding:I

.field private final iconSize:I

.field private text:Ljava/lang/String;

.field private final textPaint:Landroid/graphics/Paint;

.field private final textTopPadding:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p2, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->text:Ljava/lang/String;

    sget v0, Lio/intercom/android/sdk/R$drawable;->intercom_back:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->backIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->iconPadding:I

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->iconSize:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundPaint:Landroid/graphics/Paint;

    const-string v1, "#FE536C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundRadius:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {v1, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textTopPadding:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->iconPadding:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->iconPadding:I

    add-int/2addr v0, v2

    iget v2, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->iconSize:I

    add-int/2addr v2, v1

    iget v3, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->iconSize:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->backIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->backIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-float v1, v2

    int-to-float v3, v0

    iget v4, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->text:Ljava/lang/String;

    int-to-float v2, v2

    iget v3, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textTopPadding:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->countBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->backIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->backIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/BackButtonCountDrawable;->invalidateSelf()V

    return-void
.end method
