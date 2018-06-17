.class public Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/MessengerCardBlock;


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

.field private final bus:Lio/intercom/a/c/a/b;

.field private final conversationId:Ljava/lang/String;

.field private final gson:Lio/intercom/a/b/a/e;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->gson:Lio/intercom/a/b/a/e;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->bus:Lio/intercom/a/c/a/b;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p5, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->conversationId:Ljava/lang/String;

    return-void
.end method

.method private textFallback(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    new-instance v1, Lio/intercom/android/sdk/blocks/views/ParagraphView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v4, Lio/intercom/android/sdk/blocks/BlockAlignment;->LEFT:Lio/intercom/android/sdk/blocks/BlockAlignment;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/blocks/BlockAlignment;I)V

    invoke-static {p1}, Lio/intercom/android/sdk/commons/utilities/HtmlCompat;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public addCard(Ljava/lang/String;Ljava/lang/String;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p5}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->textFallback(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_messenger_card_block:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/FrameLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->loading_view:I

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lio/intercom/android/sdk/R$id;->messenger_card_web_view:I

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    new-instance v0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->bus:Lio/intercom/a/c/a/b;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v3}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v3}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v5

    iget-object v6, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->gson:Lio/intercom/a/b/a/e;

    iget-object v7, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v8, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;->conversationId:Ljava/lang/String;

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;-><init>(Lio/intercom/android/sdk/blocks/messengercard/CardWebView;Landroid/view/View;Ljava/lang/String;Lio/intercom/a/c/a/b;ILio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->setUpWebView()V

    invoke-virtual {v1, p2}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
