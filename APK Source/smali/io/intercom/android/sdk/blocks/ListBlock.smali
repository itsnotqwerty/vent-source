.class Lio/intercom/android/sdk/blocks/ListBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/OrderedListBlock;
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/UnorderedListBlock;


# static fields
.field private static final LARGE_TEXT_SIZE_SP:I = 0x10

.field private static final SMALL_TEXT_SIZE_SP:I = 0xe


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

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ListBlock;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/ListBlock;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method private getListStyledTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ListBlock;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-static {v1, v2, v2}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setMarginLeft(Landroid/view/View;I)V

    sget-object v0, Lio/intercom/android/sdk/blocks/ListBlock$1;->$SwitchMap$io$intercom$android$sdk$blocks$StyleType:[I

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ListBlock;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/StyleType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/blocks/ListBlock;->styleAsChatList(Landroid/widget/TextView;I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    return-object v1

    :pswitch_0
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/blocks/ListBlock;->styleAsChatList(Landroid/widget/TextView;I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :pswitch_1
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_700:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/blocks/ListBlock;->styleAsAnnouncementList(Landroid/widget/TextView;I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :pswitch_2
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/blocks/ListBlock;->styleAsAnnouncementList(Landroid/widget/TextView;I)V

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :pswitch_3
    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/blocks/ListBlock;->styleAsChatList(Landroid/widget/TextView;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private styleAsAnnouncementList(Landroid/widget/TextView;I)V
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setMarginBottom(Landroid/view/View;I)V

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLargeLineSpacing(Landroid/widget/TextView;)V

    return-void
.end method

.method private styleAsChatList(Landroid/widget/TextView;I)V
    .locals 1

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    invoke-static {p1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setSmallLineSpacing(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public addOrderedList(Ljava/util/List;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/ListBlock;->getListStyledTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_list_indentation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    const-string v1, ""

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v3, v4

    :goto_0
    if-ge v3, v7, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v7, -0x1

    if-ge v3, v2, :cond_0

    const-string v2, "<br />"

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/HtmlCompat;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Lio/intercom/android/sdk/spans/OrderedListSpan;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lio/intercom/android/sdk/spans/OrderedListSpan;-><init>(ILjava/lang/String;)V

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-virtual {v2, v8, v4, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-static {v5, v0, p3}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v5

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public addUnorderedList(Ljava/util/List;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/intercom/android/sdk/blocks/ListBlock;->getListStyledTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_list_indentation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    const-string v1, ""

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v3, v4

    :goto_0
    if-ge v3, v8, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v8, -0x1

    if-ge v3, v2, :cond_0

    const-string v2, "<br />"

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/HtmlCompat;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lio/intercom/android/sdk/spans/UnorderedListSpan;

    invoke-direct {v9, v7, v5}, Lio/intercom/android/sdk/spans/UnorderedListSpan;-><init>(ILandroid/content/Context;)V

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-virtual {v2, v9, v4, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-static {v6, v0, p3}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v6

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
