.class public final Lcom/google/android/gms/internal/ah;
.super Lcom/google/android/gms/analytics/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/l",
        "<",
        "Lcom/google/android/gms/internal/ah;",
        ">;"
    }
.end annotation


# instance fields
.field public aLn:Ljava/lang/String;

.field public aLo:Ljava/lang/String;

.field public aLp:Ljava/lang/String;

.field public mAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/analytics/l;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ah;->a(Lcom/google/android/gms/internal/ah;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->aLn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->aLo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->mAppId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appInstallerId"

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->aLp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ah;->L(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
