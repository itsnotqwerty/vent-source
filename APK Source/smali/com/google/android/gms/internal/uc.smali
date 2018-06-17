.class public final Lcom/google/android/gms/internal/uc;
.super Lcom/google/android/gms/internal/tn;


# instance fields
.field private final bcU:Lcom/google/android/gms/ads/mediation/b;

.field private bcV:Lcom/google/android/gms/internal/ud;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/tn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "Server parameters: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not get Server Parameters Bundle."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v1, v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v1, :cond_3

    const-string v1, "adJson"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string v1, "tagForChildDirectedTreatment"

    iget v2, p2, Lcom/google/android/gms/internal/nr;->baF:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object v0
.end method

.method private static c(Lcom/google/android/gms/internal/nr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nr;->baE:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static {}, Lcom/google/android/gms/internal/w;->oR()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Lcom/google/android/gms/internal/q;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v2, :cond_1

    const-string v3, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Initialize rewarded video adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v10, v0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v0, p2, v3}, Lcom/google/android/gms/internal/uc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ub;

    iget-wide v6, p2, Lcom/google/android/gms/internal/nr;->baB:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p2, Lcom/google/android/gms/internal/nr;->baC:I

    iget-object v6, p2, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {p2}, Lcom/google/android/gms/internal/uc;->c(Lcom/google/android/gms/internal/nr;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/nr;->baF:I

    iget-boolean v9, p2, Lcom/google/android/gms/internal/nr;->baQ:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ub;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p2, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v4, v2

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/t;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/internal/q;)V

    move-object v2, v10

    move-object/from16 v5, p3

    move-object v7, v12

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Could not initialize rewarded video adapter."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    move-object v8, v11

    move-object v4, v2

    goto :goto_3

    :cond_5
    move-object v8, v11

    move-object v4, v2

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Lcom/google/android/gms/internal/tp;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/tp;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/tp;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v2, :cond_1

    const-string v3, "MediationAdapter is not a MediationInterstitialAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Requesting interstitial ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    move-object v10, v0

    iget-object v2, p2, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ub;

    iget-wide v6, p2, Lcom/google/android/gms/internal/nr;->baB:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    move-object v3, v11

    :goto_2
    iget v4, p2, Lcom/google/android/gms/internal/nr;->baC:I

    iget-object v6, p2, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {p2}, Lcom/google/android/gms/internal/uc;->c(Lcom/google/android/gms/internal/nr;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/nr;->baF:I

    iget-boolean v9, p2, Lcom/google/android/gms/internal/nr;->baQ:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ub;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p2, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ud;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/tp;)V

    move-object/from16 v0, p4

    invoke-direct {p0, p3, p2, v0}, Lcom/google/android/gms/internal/uc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v10

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v5, v11

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Could not request interstitial ad from adapter."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    move-object v8, v11

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/rd;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/a;",
            "Lcom/google/android/gms/internal/nr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/tp;",
            "Lcom/google/android/gms/internal/rd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v2, :cond_1

    const-string v3, "MediationAdapter is not a MediationNativeAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    move-object v12, v0

    iget-object v2, p2, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ug;

    iget-wide v6, p2, Lcom/google/android/gms/internal/nr;->baB:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p2, Lcom/google/android/gms/internal/nr;->baC:I

    iget-object v6, p2, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {p2}, Lcom/google/android/gms/internal/uc;->c(Lcom/google/android/gms/internal/nr;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/nr;->baF:I

    iget-boolean v11, p2, Lcom/google/android/gms/internal/nr;->baQ:Z

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ug;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/rd;Ljava/util/List;Z)V

    iget-object v3, p2, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ud;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/tp;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/uc;->bcV:Lcom/google/android/gms/internal/ud;

    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/uc;->bcV:Lcom/google/android/gms/internal/ud;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/uc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v12

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/i;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Could not request native ad from adapter."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Lcom/google/android/gms/internal/tp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/tp;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/tp;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v2, :cond_1

    const-string v3, "MediationAdapter is not a MediationBannerAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Requesting banner ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-object v10, v0

    iget-object v2, p3, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p3, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ub;

    iget-wide v6, p3, Lcom/google/android/gms/internal/nr;->baB:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p3, Lcom/google/android/gms/internal/nr;->baC:I

    iget-object v6, p3, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {p3}, Lcom/google/android/gms/internal/uc;->c(Lcom/google/android/gms/internal/nr;)Z

    move-result v7

    iget v8, p3, Lcom/google/android/gms/internal/nr;->baF:I

    iget-boolean v9, p3, Lcom/google/android/gms/internal/nr;->baQ:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ub;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p3, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ud;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ud;-><init>(Lcom/google/android/gms/internal/tp;)V

    move-object/from16 v0, p5

    invoke-direct {p0, p4, p3, v0}, Lcom/google/android/gms/internal/uc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget v3, p2, Lcom/google/android/gms/internal/nu;->width:I

    iget v7, p2, Lcom/google/android/gms/internal/nu;->height:I

    iget-object v8, p2, Lcom/google/android/gms/internal/nu;->baS:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/google/android/gms/ads/k;->c(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v7

    move-object v3, v10

    move-object v8, v2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/c;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p3, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Could not request banner ad from adapter."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/q;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/a;",
            "Lcom/google/android/gms/internal/q;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Initialize rewarded video adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gms/internal/uc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not initialize rewarded video adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/t;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/internal/q;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/a;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nr;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v2, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v2, :cond_1

    const-string v3, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Requesting rewarded video ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v10, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ub;

    iget-wide v6, p1, Lcom/google/android/gms/internal/nr;->baB:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    move-object v3, v11

    :goto_2
    iget v4, p1, Lcom/google/android/gms/internal/nr;->baC:I

    iget-object v6, p1, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/uc;->c(Lcom/google/android/gms/internal/nr;)Z

    move-result v7

    iget v8, p1, Lcom/google/android/gms/internal/nr;->baF:I

    iget-boolean v9, p1, Lcom/google/android/gms/internal/nr;->baQ:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ub;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p1, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_3
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/uc;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v10, v2, v4, v3}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v5, v11

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p1, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Could not load rewarded video ad from adapter."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    move-object v3, v11

    goto :goto_3
.end method

.method public final aq(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/j;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not an OnImmersiveModeUpdatedListener: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bs(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/mediation/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/j;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not set immersive mode."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/b;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaqk;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not a v2 MediationInterstitialAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/internal/zzaqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaqk;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/pp;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/l;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/mediation/l;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/l;->getVideoController()Lcom/google/android/gms/internal/pp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Could not get video controller."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Check if adapter is initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Could not check if adapter is initialized."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/b;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/b;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final s(Lcom/google/android/gms/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not inform adapter of changed context"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final showInterstitial()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Show rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not show rewarded video ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final tS()Lcom/google/android/gms/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not get banner view from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final tT()Lcom/google/android/gms/internal/tr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcV:Lcom/google/android/gms/internal/ud;

    iget-object v0, v0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/g;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ue;

    check-cast v0, Lcom/google/android/gms/ads/mediation/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ue;-><init>(Lcom/google/android/gms/ads/mediation/g;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tU()Lcom/google/android/gms/internal/tu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcV:Lcom/google/android/gms/internal/ud;

    iget-object v0, v0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/h;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/uf;

    check-cast v0, Lcom/google/android/gms/ads/mediation/h;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/uf;-><init>(Lcom/google/android/gms/ads/mediation/h;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tV()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final tW()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final tX()Lcom/google/android/gms/internal/sd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcV:Lcom/google/android/gms/internal/ud;

    iget-object v0, v0, Lcom/google/android/gms/internal/ud;->bcZ:Lcom/google/android/gms/ads/b/i;

    instance-of v1, v0, Lcom/google/android/gms/internal/sg;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/sg;

    iget-object v0, v0, Lcom/google/android/gms/internal/sg;->bcJ:Lcom/google/android/gms/internal/sd;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tY()Lcom/google/android/gms/internal/tx;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcV:Lcom/google/android/gms/internal/ud;

    iget-object v1, v0, Lcom/google/android/gms/internal/ud;->bcY:Lcom/google/android/gms/ads/mediation/k;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/un;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/un;-><init>(Lcom/google/android/gms/ads/mediation/k;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzmr()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzaqj;

    if-nez v0, :cond_1

    const-string v1, "MediationAdapter is not a v2 MediationBannerAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/uc;->bcU:Lcom/google/android/gms/ads/mediation/b;

    check-cast v0, Lcom/google/android/gms/internal/zzaqj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaqj;->zzmr()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method
