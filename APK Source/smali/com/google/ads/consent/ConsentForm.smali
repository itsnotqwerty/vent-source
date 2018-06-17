.class public Lcom/google/ads/consent/ConsentForm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/consent/ConsentForm$Builder;,
        Lcom/google/ads/consent/ConsentForm$LoadState;
    }
.end annotation


# instance fields
.field private final adFreeOption:Z

.field private final appPrivacyPolicyURL:Ljava/net/URL;

.field public final context:Landroid/content/Context;

.field public final dialog:Landroid/app/Dialog;

.field public final listener:Lcom/google/ads/consent/ConsentFormListener;

.field public loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

.field private final nonPersonalizedAdsOption:Z

.field private final personalizedAdsOption:Z

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/google/ads/consent/ConsentForm$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->a(Lcom/google/ads/consent/ConsentForm$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->b(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/consent/ConsentForm$1;

    invoke-direct {v0}, Lcom/google/ads/consent/ConsentForm$1;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    :goto_0
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->c(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm;->personalizedAdsOption:Z

    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->d(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm;->nonPersonalizedAdsOption:Z

    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->e(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm;->adFreeOption:Z

    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->f(Lcom/google/ads/consent/ConsentForm$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->appPrivacyPolicyURL:Ljava/net/URL;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/ads/consent/ConsentForm$2;

    invoke-direct {v1, p0}, Lcom/google/ads/consent/ConsentForm$2;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->b(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/google/ads/consent/ConsentForm$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;-><init>(Lcom/google/ads/consent/ConsentForm$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/consent/ConsentForm;Lcom/google/ads/consent/ConsentForm$LoadState;)Lcom/google/ads/consent/ConsentForm$LoadState;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/consent/ConsentForm;Landroid/webkit/WebView;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_name"

    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_icon"

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "data:image/png;base64,"

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "offer_personalized"

    iget-boolean v2, p0, Lcom/google/ads/consent/ConsentForm;->personalizedAdsOption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "offer_non_personalized"

    iget-boolean v2, p0, Lcom/google/ads/consent/ConsentForm;->nonPersonalizedAdsOption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "offer_ad_free"

    iget-boolean v2, p0, Lcom/google/ads/consent/ConsentForm;->adFreeOption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_request_in_eea_or_unknown"

    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentInformation;->lh()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_privacy_url"

    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->appPrivacyPolicyURL:Ljava/net/URL;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->lg()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    const-string v2, "plat"

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "consent_info"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/a/f;

    invoke-direct {v0}, Lcom/google/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/f;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUpConsentDialog"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "info"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "args"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "javascript:%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    const/4 v1, 0x1

    new-instance v4, Lcom/google/a/f;

    invoke-direct {v4}, Lcom/google/a/f;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/a/f;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->kX()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v2, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    sget-object v2, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    const-string v3, "form"

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/consent/ConsentInformation;->a(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->kY()V

    :cond_1
    return-void

    :sswitch_0
    const-string v3, "personalized"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "non_personalized"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "ad_free"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    move-object v2, v0

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    move-object v2, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x44b41ef8 -> :sswitch_2
        -0xf616830 -> :sswitch_0
        0x635b0c02 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
