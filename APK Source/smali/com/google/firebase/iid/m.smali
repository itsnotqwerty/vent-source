.class public Lcom/google/firebase/iid/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/m$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/iid/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bfp:Landroid/os/Messenger;

.field private bfq:Lcom/google/android/gms/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/n;

    invoke-direct {v0}, Lcom/google/firebase/iid/n;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/b/b;->l(Landroid/os/IBinder;)Lcom/google/android/gms/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/m;->bfq:Lcom/google/android/gms/b/a;

    goto :goto_0
.end method

.method private final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfq:Lcom/google/android/gms/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/iid/m;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/firebase/iid/m;

    invoke-direct {p1}, Lcom/google/firebase/iid/m;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/iid/m;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final send(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfq:Lcom/google/android/gms/b/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/b/a;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfp:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/m;->bfq:Lcom/google/android/gms/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0
.end method
