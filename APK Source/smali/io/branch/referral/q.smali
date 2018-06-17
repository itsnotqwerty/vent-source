.class public final Lio/branch/referral/q;
.super Ljava/lang/Object;


# static fields
.field private static cAQ:Z

.field private static cAR:Z

.field private static cAS:Ljava/lang/String;

.field public static cAW:Lorg/json/JSONObject;

.field private static cvV:Lio/branch/referral/q;


# instance fields
.field private cAT:Landroid/content/SharedPreferences;

.field private cAU:Landroid/content/SharedPreferences$Editor;

.field cAV:Lorg/json/JSONObject;

.field private cvX:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lio/branch/referral/q;->cAQ:Z

    sput-boolean v0, Lio/branch/referral/q;->cAR:Z

    const/4 v0, 0x0

    sput-object v0, Lio/branch/referral/q;->cAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "branch_referral_shared_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/q;->cAT:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lio/branch/referral/q;->cAT:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    iput-object p1, p0, Lio/branch/referral/q;->cvX:Landroid/content/Context;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/q;->cAV:Lorg/json/JSONObject;

    return-void
.end method

.method public static GS()Ljava/lang/String;
    .locals 1

    const-string v0, "https://api.branch.io/"

    return-object v0
.end method

.method public static GT()I
    .locals 2

    const-string v0, "bnc_retry_interval"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static GU()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cAS:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "bnc_branch_key"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/branch/referral/q;->cAS:Ljava/lang/String;

    :cond_0
    sget-object v0, Lio/branch/referral/q;->cAS:Ljava/lang/String;

    return-object v0
.end method

.method public static GV()I
    .locals 2

    const-string v0, "bnc_is_referrable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static GW()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bnc_buckets"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lio/branch/referral/q;->eM(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method static GX()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bnc_actions"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lio/branch/referral/q;->eM(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static GY()Lorg/json/JSONObject;
    .locals 3

    sget-object v0, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    sget-object v0, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "bnc_branch_analytical_data"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bnc_no_value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static GZ()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lio/branch/referral/q;->cAQ:Z

    return-void
.end method

.method public static Ha()Z
    .locals 1

    sget-boolean v0, Lio/branch/referral/q;->cAQ:Z

    return v0
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    if-eqz v0, :cond_2

    sget-boolean v0, Lio/branch/referral/q;->cAQ:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lio/branch/referral/q;->cAR:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lio/branch/referral/q;->cAQ:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lio/branch/referral/q;->cAR:Z

    if-eqz v0, :cond_1

    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bT(Landroid/content/Context;)Lio/branch/referral/q;
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/referral/q;

    invoke-direct {v0, p0}, Lio/branch/referral/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    :cond_0
    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    return-object v0
.end method

.method public static br(Z)V
    .locals 2

    const-string v0, "bnc_is_full_app_conversion"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bs(Z)V
    .locals 0

    sput-boolean p0, Lio/branch/referral/q;->cAR:Z

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static c(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bnc_buckets"

    const-string v1, "bnc_no_value"

    invoke-static {v0, v1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "bnc_buckets"

    invoke-static {p0}, Lio/branch/referral/q;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static d(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bnc_actions"

    const-string v1, "bnc_no_value"

    invoke-static {v0, v1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "bnc_actions"

    invoke-static {p0}, Lio/branch/referral/q;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static eL(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bnc_credit_base_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static eM(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static eN(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAT:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static eO(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bnc_branch_view_use_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAT:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAT:Landroid/content/SharedPreferences;

    const-string v1, "bnc_no_value"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeout()I
    .locals 2

    const-string v0, "bnc_timeout"

    const/16 v1, 0x157c

    invoke-static {v0, v1}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lio/branch/referral/q;->GW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lio/branch/referral/q;->c(Ljava/util/ArrayList;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bnc_credit_base_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/branch/referral/q;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public static l(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAT:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setInteger(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final bq(Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "io.branch.sdk.BranchKey"

    :goto_0
    if-nez p1, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lio/branch/referral/q;->cAQ:Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/branch/referral/q;->cvX:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/q;->cvX:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "io.branch.sdk.BranchKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lio/branch/referral/q;->cvX:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    iget-object v4, p0, Lio/branch/referral/q;->cvX:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    const-string v0, "bnc_no_value"

    :cond_3
    return-object v0

    :cond_4
    const-string v1, "io.branch.sdk.BranchKey.test"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public final eK(Ljava/lang/String;)Z
    .locals 5

    sput-object p1, Lio/branch/referral/q;->cAS:Ljava/lang/String;

    const-string v0, "bnc_branch_key"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "bnc_link_click_id"

    invoke-static {v0}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_link_click_identifier"

    invoke-static {v1}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_app_link"

    invoke-static {v2}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bnc_push_identifier"

    invoke-static {v3}, Lio/branch/referral/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v4, "bnc_link_click_id"

    invoke-static {v4, v0}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_link_click_identifier"

    invoke-static {v0, v1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_app_link"

    invoke-static {v0, v2}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bnc_push_identifier"

    invoke-static {v0, v3}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lio/branch/referral/q;->cvV:Lio/branch/referral/q;

    iget-object v0, v0, Lio/branch/referral/q;->cAU:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "bnc_branch_key"

    invoke-static {v0, p1}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
