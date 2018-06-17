.class final Lcom/vent/MyApplication$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/MyApplication;->b(Landroid/support/v7/app/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic cgO:[Lcom/google/android/gms/common/api/f;


# direct methods
.method constructor <init>([Lcom/google/android/gms/common/api/f;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/MyApplication$4;->cgO:[Lcom/google/android/gms/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cG(I)V
    .locals 0

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/location/d;->bdA:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/vent/MyApplication$4;->cgO:[Lcom/google/android/gms/common/api/f;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/vent/bb;->ciy:Landroid/location/Location;

    iget-object v0, p0, Lcom/vent/MyApplication$4;->cgO:[Lcom/google/android/gms/common/api/f;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/MyApplication$4;->cgO:[Lcom/google/android/gms/common/api/f;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->disconnect()V

    iget-object v0, p0, Lcom/vent/MyApplication$4;->cgO:[Lcom/google/android/gms/common/api/f;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_0
    return-void
.end method
