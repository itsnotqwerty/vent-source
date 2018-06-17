.class public final Lcom/google/android/gms/internal/al;
.super Lcom/google/android/gms/analytics/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/l",
        "<",
        "Lcom/google/android/gms/internal/al;",
        ">;"
    }
.end annotation


# instance fields
.field public final aAV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/l;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/al;->aAV:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/google/android/gms/analytics/l;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/al;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/al;->aAV:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/al;->aAV:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/al;->aAV:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/l;->a(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
