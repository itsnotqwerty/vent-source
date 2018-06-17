.class public abstract Lcom/google/android/gms/internal/r;
.super Lcom/google/android/gms/internal/ms;

# interfaces
.implements Lcom/google/android/gms/internal/q;


# direct methods
.method public static n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/q;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/q;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/q;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/s;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/s;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ms;->a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->e(Lcom/google/android/gms/a/a;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/a/a;I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->f(Lcom/google/android/gms/a/a;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->g(Lcom/google/android/gms/a/a;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->h(Lcom/google/android/gms/a/a;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->i(Lcom/google/android/gms/a/a;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/u;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/u;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/u;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->j(Lcom/google/android/gms/a/a;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/r;->b(Lcom/google/android/gms/a/a;I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->k(Lcom/google/android/gms/a/a;)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/a$a;->j(Landroid/os/IBinder;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/r;->l(Lcom/google/android/gms/a/a;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
