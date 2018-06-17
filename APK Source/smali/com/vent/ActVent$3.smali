.class final Lcom/vent/ActVent$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/c;


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

    iput-object p1, p0, Lcom/vent/ActVent$3;->bZn:Lcom/vent/ActVent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActVent$3;->bZn:Lcom/vent/ActVent;

    invoke-virtual {v0}, Lcom/vent/ActVent;->Cr()V

    iget-object v0, p0, Lcom/vent/ActVent$3;->bZn:Lcom/vent/ActVent;

    iput-object p1, v0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    iget-object v0, p0, Lcom/vent/ActVent$3;->bZn:Lcom/vent/ActVent;

    invoke-virtual {v0}, Lcom/vent/ActVent;->Cs()V

    return-void
.end method
