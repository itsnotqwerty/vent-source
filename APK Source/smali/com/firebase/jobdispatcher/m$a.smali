.class public abstract Lcom/firebase/jobdispatcher/m$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/firebase/jobdispatcher/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/m$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.firebase.jobdispatcher.IRemoteJobService"

    invoke-virtual {p0, p0, v0}, Lcom/firebase/jobdispatcher/m$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/os/IBinder;)Lcom/firebase/jobdispatcher/m;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.firebase.jobdispatcher.IRemoteJobService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/firebase/jobdispatcher/m;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/firebase/jobdispatcher/m;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/firebase/jobdispatcher/m$a$a;

    invoke-direct {v0, p0}, Lcom/firebase/jobdispatcher/m$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v0, "com.firebase.jobdispatcher.IRemoteJobService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.firebase.jobdispatcher.IRemoteJobService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/firebase/jobdispatcher/m$a;->a(Landroid/os/Bundle;Lcom/firebase/jobdispatcher/l;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    const-string v0, "com.firebase.jobdispatcher.IJobCallback"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/firebase/jobdispatcher/l;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/firebase/jobdispatcher/l;

    move-object v2, v0

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/firebase/jobdispatcher/l$a$a;

    invoke-direct {v2, v4}, Lcom/firebase/jobdispatcher/l$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :sswitch_2
    const-string v0, "com.firebase.jobdispatcher.IRemoteJobService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/firebase/jobdispatcher/m$a;->a(Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
