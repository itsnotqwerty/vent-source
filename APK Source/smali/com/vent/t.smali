.class public final Lcom/vent/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/t$a;
    }
.end annotation


# static fields
.field static ccD:Z

.field static ccE:Z

.field static ccF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/t;->ccF:Z

    return-void
.end method

.method static aE(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/vent/t;->ccD:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/vent/t;->ccD:Z

    sput-boolean v1, Lcom/vent/t;->ccF:Z

    invoke-static {p0}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0f01a5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    new-instance v2, Lcom/vent/t$1;

    invoke-direct {v2, p0}, Lcom/vent/t$1;-><init>(Landroid/content/Context;)V

    const-string v3, "https://adservice.google.com/getconfig/pubvendors"

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->ld()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ConsentInformation"

    const-string v5, "This request is sent from a test device."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v4, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;-><init>(Ljava/lang/String;Lcom/google/ads/consent/ConsentInformation;Ljava/util/List;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    new-array v0, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v0}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    const-string v4, "ConsentInformation"

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->lb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x5d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Use ConsentInformation.getInstance(context).addTestDevice(\""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\") to get test ads on this device."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static aF(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->lh()Z

    move-result v0

    sput-boolean v0, Lcom/vent/t;->ccE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/vent/t;->d(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/t;->ccF:Z

    goto :goto_0
.end method

.method static d(Landroid/content/Context;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->li()Lcom/google/ads/consent/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v0, v1, :cond_1

    sput-boolean v5, Lcom/vent/t;->ccF:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v0, v1, :cond_2

    sput-boolean v4, Lcom/vent/t;->ccF:Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/ads/consent/ConsentInformation;->o(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const v3, 0x7f0f026c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentInformation;->le()V

    new-instance v1, Lcom/vent/t$a;

    invoke-direct {v1}, Lcom/vent/t$a;-><init>()V

    new-instance v2, Lcom/google/ads/consent/ConsentForm$Builder;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/consent/ConsentForm$Builder;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    iput-object v1, v2, Lcom/google/ads/consent/ConsentForm$Builder;->listener:Lcom/google/ads/consent/ConsentFormListener;

    iput-boolean v4, v2, Lcom/google/ads/consent/ConsentForm$Builder;->personalizedAdsOption:Z

    iput-boolean v4, v2, Lcom/google/ads/consent/ConsentForm$Builder;->nonPersonalizedAdsOption:Z

    new-instance v0, Lcom/google/ads/consent/ConsentForm;

    invoke-direct {v0, v2, v5}, Lcom/google/ads/consent/ConsentForm;-><init>(Lcom/google/ads/consent/ConsentForm$Builder;B)V

    iput-object v0, v1, Lcom/vent/t$a;->ccG:Lcom/google/ads/consent/ConsentForm;

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v2, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v2, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->kX()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v1, v0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    iget-object v0, v0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/consentform.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
