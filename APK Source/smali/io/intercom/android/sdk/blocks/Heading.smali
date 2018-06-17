.class Lio/intercom/android/sdk/blocks/Heading;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/HeadingBlock;
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/SubheadingBlock;


# static fields
.field private static final LARGE_MARGIN_BOTTOM_DP:I = 0x20

.field private static final LARGE_TEXT_SP:I = 0x18

.field private static final MARGIN_BOTTOM_DP:I = 0x10

.field private static final MEDIUM_TEXT_SP:I = 0x14

.field private static final SMALL_TEXT_SP:I = 0xf


# instance fields
.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final style:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Heading;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Heading;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method private styleAnnouncementHeading(Landroid/widget/TextView;III)V
    .locals 1

    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLargeLineSpacing(Landroid/widget/TextView;)V

    invoke-static {p1, p4}, Lio/intercom/android/sdk/utilities/BlockUtils;->setMarginBottom(Landroid/view/View;I)V

    return-void
.end method

.method private styleChatHeading(Landroid/widget/TextView;I)V
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setSmallLineSpacing(Landroid/widget/TextView;)V

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addHeading(Landroid/text/Spanned;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v0, -0x2

    const/16 v5, 0x20

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v0, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Heading;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    sget-object v3, Lio/intercom/android/sdk/blocks/Heading$1;->$SwitchMap$io$intercom$android$sdk$blocks$StyleType:[I

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/Heading;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v4}, Lio/intercom/android/sdk/blocks/StyleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {v1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lio/intercom/android/sdk/blocks/Heading;->styleChatHeading(Landroid/widget/TextView;I)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-static {v2, v0, p4}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v2

    :pswitch_0
    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ColorUtils;->lightenColor(I)I

    move-result v0

    invoke-direct {p0, v2, v0, v7, v5}, Lio/intercom/android/sdk/blocks/Heading;->styleAnnouncementHeading(Landroid/widget/TextView;III)V

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoLightTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v0, v7, v5}, Lio/intercom/android/sdk/blocks/Heading;->styleAnnouncementHeading(Landroid/widget/TextView;III)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x14

    invoke-direct {p0, v2, v0, v1, v5}, Lio/intercom/android/sdk/blocks/Heading;->styleAnnouncementHeading(Landroid/widget/TextView;III)V

    goto :goto_0

    :pswitch_3
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {v1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lio/intercom/android/sdk/blocks/Heading;->styleChatHeading(Landroid/widget/TextView;I)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addSubheading(Landroid/text/Spanned;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x10

    const/16 v5, 0xf

    const/4 v0, -0x2

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v0, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Heading;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    sget-object v3, Lio/intercom/android/sdk/blocks/Heading$1;->$SwitchMap$io$intercom$android$sdk$blocks$StyleType:[I

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/Heading;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v4}, Lio/intercom/android/sdk/blocks/StyleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, v2, v0}, Lio/intercom/android/sdk/blocks/Heading;->styleChatHeading(Landroid/widget/TextView;I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-static {v2, v0, p4}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v2

    :pswitch_0
    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ColorUtils;->lightenColor(I)I

    move-result v0

    invoke-direct {p0, v2, v0, v5, v6}, Lio/intercom/android/sdk/blocks/Heading;->styleAnnouncementHeading(Landroid/widget/TextView;III)V

    invoke-static {v2}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoLightTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v0, v5, v6}, Lio/intercom/android/sdk/blocks/Heading;->styleAnnouncementHeading(Landroid/widget/TextView;III)V

    goto :goto_0

    :pswitch_2
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {v1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lio/intercom/android/sdk/blocks/Heading;->styleChatHeading(Landroid/widget/TextView;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
