.class final Lcom/vent/ActVent$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActVent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZn:Lcom/vent/ActVent;


# direct methods
.method constructor <init>(Lcom/vent/ActVent;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVent$6;->bZn:Lcom/vent/ActVent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActVent$6;->bZn:Lcom/vent/ActVent;

    iget-object v0, v0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent$6;->bZn:Lcom/vent/ActVent;

    invoke-virtual {v0}, Lcom/vent/ActVent;->Cv()V

    iget-object v0, p0, Lcom/vent/ActVent$6;->bZn:Lcom/vent/ActVent;

    iput-object p1, v0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    iget-object v0, p0, Lcom/vent/ActVent$6;->bZn:Lcom/vent/ActVent;

    invoke-virtual {v0}, Lcom/vent/ActVent;->Cs()V

    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
