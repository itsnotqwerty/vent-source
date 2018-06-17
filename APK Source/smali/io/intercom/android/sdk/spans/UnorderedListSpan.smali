.class public Lio/intercom/android/sdk/spans/UnorderedListSpan;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field private static final BULLET_RADIUS_IN_DP:I = 0x2

.field private static final INDENT_IN_DP:I = 0x5


# instance fields
.field private final bulletRadius:I

.field private final gapWidth:I

.field private final indent:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->gapWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->bulletRadius:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0, p2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->indent:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 4

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p9, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->bulletRadius:I

    mul-int/2addr v1, p4

    add-int/2addr v1, p3

    iget v2, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->indent:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-int v2, p5, p7

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->bulletRadius:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2

    iget v0, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->bulletRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lio/intercom/android/sdk/spans/UnorderedListSpan;->gapWidth:I

    add-int/2addr v0, v1

    return v0
.end method
