.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/analytics/FirebaseAnalytics$c;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$b;,
        Lcom/google/firebase/analytics/FirebaseAnalytics$a;
    }
.end annotation


# instance fields
.field private final zzjev:Lcom/google/android/gms/internal/hz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUU:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method


# virtual methods
.method public final getAppInstanceId()Lcom/google/android/gms/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ja;->getAppInstanceId()Lcom/google/android/gms/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final resetAnalyticsData()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/jn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/jn;-><init>(Lcom/google/android/gms/internal/ja;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setAnalyticsCollectionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->setMeasurementEnabled(Z)V

    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    invoke-static {}, Lcom/google/android/gms/internal/hu;->oM()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "setCurrentScreen must be called from the main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/jq;->aWq:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/jq;->aWo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jq;->cv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    iget-object v0, v0, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, v1, Lcom/google/android/gms/internal/jq;->aWl:Lcom/google/android/gms/internal/jp;

    iget-object v2, v2, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTf:Lcom/google/android/gms/internal/hd;

    const-string v1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_9

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "Setting current screen to name, class"

    if-nez p2, :cond_a

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v3, v0, p3}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/le;->sq()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/google/android/gms/internal/jt;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/jq;->aWo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/jq;->a(Landroid/app/Activity;Lcom/google/android/gms/internal/jt;Z)V

    goto/16 :goto_0

    :cond_a
    move-object v0, p2

    goto :goto_1
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setMinimumSessionDuration(J)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setSessionTimeoutDuration(J)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    const-string v1, "app"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUT:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
