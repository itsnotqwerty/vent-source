.class public final Lcom/google/android/gms/internal/rc;
.super Lcom/google/android/gms/internal/rk;


# instance fields
.field private final DD:Landroid/net/Uri;

.field private final bcr:Landroid/graphics/drawable/Drawable;

.field private final bcs:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/rk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rc;->bcr:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/rc;->DD:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/rc;->bcs:D

    return-void
.end method


# virtual methods
.method public final getUri()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->DD:Landroid/net/Uri;

    return-object v0
.end method

.method public final lB()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/rc;->bcs:D

    return-wide v0
.end method

.method public final tG()Lcom/google/android/gms/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->bcr:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method
