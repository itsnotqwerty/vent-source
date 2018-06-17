.class public final Lcom/google/android/gms/internal/ai;
.super Lcom/google/android/gms/analytics/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/l",
        "<",
        "Lcom/google/android/gms/internal/ai;",
        ">;"
    }
.end annotation


# instance fields
.field public aBR:Ljava/lang/String;

.field public aLq:Ljava/lang/String;

.field public aLr:Ljava/lang/String;

.field public aLs:Ljava/lang/String;

.field public aLt:Ljava/lang/String;

.field public aLu:Ljava/lang/String;

.field public aLv:Ljava/lang/String;

.field public aLw:Ljava/lang/String;

.field public aLx:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/google/android/gms/analytics/l;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ai;

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->mName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->mName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLq:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLq:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLr:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLr:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLs:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLs:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLt:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLt:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aBR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aBR:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aBR:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLu:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLu:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLu:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLv:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLv:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLw:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLw:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->aLx:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ai;->aLx:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLq:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "medium"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aBR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adNetworkId"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLu:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLw:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->aLx:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ai;->L(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
