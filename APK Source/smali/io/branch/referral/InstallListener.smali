.class public Lio/branch/referral/InstallListener;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/InstallListener$a;
    }
.end annotation


# static fields
.field private static cAM:Ljava/lang/String;

.field private static cAN:Lio/branch/referral/InstallListener$a;

.field private static cAO:Z

.field private static cAP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bnc_no_value"

    sput-object v0, Lio/branch/referral/InstallListener;->cAM:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lio/branch/referral/InstallListener;->cAN:Lio/branch/referral/InstallListener$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static GP()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/branch/referral/InstallListener;->cAM:Ljava/lang/String;

    return-object v0
.end method

.method private static GQ()V
    .locals 1

    sget-object v0, Lio/branch/referral/InstallListener;->cAN:Lio/branch/referral/InstallListener$a;

    if-eqz v0, :cond_0

    sget-object v0, Lio/branch/referral/InstallListener;->cAN:Lio/branch/referral/InstallListener$a;

    invoke-interface {v0}, Lio/branch/referral/InstallListener$a;->Gw()V

    const/4 v0, 0x0

    sput-object v0, Lio/branch/referral/InstallListener;->cAN:Lio/branch/referral/InstallListener$a;

    const/4 v0, 0x0

    sput-boolean v0, Lio/branch/referral/InstallListener;->cAP:Z

    :cond_0
    return-void
.end method

.method static synthetic GR()V
    .locals 0

    invoke-static {}, Lio/branch/referral/InstallListener;->GQ()V

    return-void
.end method

.method public static T(J)V
    .locals 2

    sget-boolean v0, Lio/branch/referral/InstallListener;->cAP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/InstallListener;->GQ()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lio/branch/referral/InstallListener;->cAO:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/branch/referral/InstallListener$1;

    invoke-direct {v1}, Lio/branch/referral/InstallListener$1;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Lio/branch/referral/InstallListener$a;)V
    .locals 0

    sput-object p0, Lio/branch/referral/InstallListener;->cAN:Lio/branch/referral/InstallListener$a;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    const-string v1, "referrer"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v8, :cond_0

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    sget-object v0, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/branch/referral/n$a;->cxV:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lio/branch/referral/InstallListener;->cAM:Ljava/lang/String;

    const-string v3, "bnc_link_click_identifier"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lio/branch/referral/n$a;->cyy:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lio/branch/referral/n$a;->cyx:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lio/branch/referral/n$a;->cyy:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lio/branch/referral/q;->br(Z)V

    sget-object v0, Lio/branch/referral/n$a;->cyx:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "bnc_app_link"

    invoke-static {v3, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lio/branch/referral/n$a;->cxW:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lio/branch/referral/n$a;->cxW:Lio/branch/referral/n$a;

    iget-object v0, v0, Lio/branch/referral/n$a;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "bnc_google_search_install_identifier"

    invoke-static {v2, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_google_play_install_referrer_extras"

    invoke-static {v0, v1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lio/branch/referral/InstallListener;->cAP:Z

    sget-boolean v0, Lio/branch/referral/InstallListener;->cAO:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lio/branch/referral/InstallListener;->GQ()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, "BranchSDK"

    const-string v1, "Illegal characters in url encoded string"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
