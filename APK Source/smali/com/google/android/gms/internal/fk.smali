.class final Lcom/google/android/gms/internal/fk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/bf",
        "<",
        "Lcom/google/android/gms/location/c;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic aQg:Landroid/location/Location;


# direct methods
.method constructor <init>(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fk;->aQg:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic M(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->aQg:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/c;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
