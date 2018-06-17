.class public Lio/intercom/android/sdk/views/IntercomLinkView;
.super Landroid/support/v7/widget/AppCompatTextView;


# static fields
.field private static final INTERCOM_LINK_ANIMATION_TIME_MS:I = 0x64


# instance fields
.field private final conversationBottomPaddingPx:I

.field private final intercomLinkPosition:[I

.field private lastBottomPosition:I

.field private final lastChildPosition:[I

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastChildPosition:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->intercomLinkPosition:[I

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastBottomPosition:I

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->twig:Lio/intercom/android/sdk/twig/Twig;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomLinkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->conversationBottomPaddingPx:I

    return-void
.end method

.method private getCompanyForUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Could not url encode the app name"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private static getProductForUrl(Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->isUser()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "resolve"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->isLinkCard()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "educate.article"

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->getLinkBlock()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Block;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "educate"

    goto :goto_0

    :cond_2
    const-string v0, "engage"

    goto :goto_0
.end method


# virtual methods
.method createIntercomLinkUrl(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/models/Part;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "https://www.intercom.io/intercom-link?company="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/IntercomLinkView;->getCompanyForUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lio/intercom/android/sdk/views/IntercomLinkView;->getProductForUrl(Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&utm_source=android-sdk&utm_campaign=intercom-link&utm_content=we-run-on-intercom&utm_medium=messenger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public followIntercomLink(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/api/Api;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/models/Part;",
            "Lio/intercom/android/sdk/api/Api;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/views/IntercomLinkView;->createIntercomLinkUrl(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/models/Part;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomLinkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lio/intercom/android/sdk/utilities/LinkOpener;->handleUrl(Ljava/lang/String;Landroid/content/Context;Lio/intercom/android/sdk/api/Api;)V

    return-void
.end method

.method public hide()V
    .locals 4

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomLinkView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public hideIfIntersectedOrShow(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastChildPosition:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastChildPosition:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->conversationBottomPaddingPx:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->intercomLinkPosition:[I

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/views/IntercomLinkView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->intercomLinkPosition:[I

    aget v1, v1, v3

    if-lt v0, v1, :cond_1

    iget v1, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastBottomPosition:I

    iget-object v2, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->intercomLinkPosition:[I

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomLinkView;->hide()V

    :cond_0
    :goto_0
    iput v0, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastBottomPosition:I

    return-void

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->intercomLinkPosition:[I

    aget v1, v1, v3

    if-ge v0, v1, :cond_0

    iget v1, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->lastBottomPosition:I

    iget-object v2, p0, Lio/intercom/android/sdk/views/IntercomLinkView;->intercomLinkPosition:[I

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomLinkView;->show()V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/IntercomLinkView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
