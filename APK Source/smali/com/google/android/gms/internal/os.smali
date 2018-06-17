.class public abstract Lcom/google/android/gms/internal/os;
.super Lcom/google/android/gms/internal/ms;

# interfaces
.implements Lcom/google/android/gms/internal/or;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ms;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/os;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ms;->a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/os;->tm()Lcom/google/android/gms/internal/oo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/mt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1
    move v0, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/ol;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_1
    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ol;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/ol;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/on;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/on;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/sh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_3
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/sh;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/sh;

    move-object v1, v0

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/sj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sj;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/sk;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_5
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/sk;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/sk;

    move-object v1, v0

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/sm;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sm;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v2, v1

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_9

    :goto_6
    invoke-virtual {p0, v4, v2, v1}, Lcom/google/android/gms/internal/os;->a(Ljava/lang/String;Lcom/google/android/gms/internal/sq;Lcom/google/android/gms/internal/sn;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_7
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/sq;

    if-eqz v5, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/sq;

    move-object v2, v0

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ss;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ss;-><init>(Landroid/os/IBinder;)V

    move-object v2, v0

    goto :goto_5

    :cond_9
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    invoke-interface {v5, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/sn;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/android/gms/internal/sn;

    move-object v1, v0

    goto :goto_6

    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/sp;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/sp;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/rd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/rd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/ph;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :cond_b
    const-string v0, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ph;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/google/android/gms/internal/ph;

    move-object v1, v0

    goto :goto_7

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/pj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/pj;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_d

    :goto_8
    sget-object v0, Lcom/google/android/gms/internal/nu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nu;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/st;Lcom/google/android/gms/internal/nu;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :cond_d
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/st;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/android/gms/internal/st;

    move-object v1, v0

    goto :goto_8

    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/su;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/su;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/ads/b/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/j;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/ads/b/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_f

    :goto_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/os;->a(Lcom/google/android/gms/internal/sv;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :cond_f
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/sv;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/google/android/gms/internal/sv;

    move-object v1, v0

    goto :goto_9

    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/sx;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/sx;-><init>(Landroid/os/IBinder;)V

    goto :goto_9

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
    .end packed-switch
.end method
