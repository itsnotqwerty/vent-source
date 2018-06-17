.class public final Lcom/google/android/gms/internal/nv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/nu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    const/4 v11, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ds;->a(Landroid/os/Parcel;)I

    move-result v12

    move v10, v0

    move v9, v0

    move v8, v0

    move-object v7, v11

    move v6, v0

    move v5, v0

    move v4, v0

    move v3, v0

    move v2, v0

    move-object v1, v11

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v12, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v11, 0xffff

    and-int/2addr v11, v0

    packed-switch v11, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->g(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->d(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->d(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->c(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->d(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->d(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    :pswitch_6
    sget-object v7, Lcom/google/android/gms/internal/nu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v7}, Lcom/google/android/gms/internal/ds;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/nu;

    move-object v7, v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->c(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->c(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ds;->c(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    :cond_0
    invoke-static {p1, v12}, Lcom/google/android/gms/internal/ds;->k(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/nu;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/nu;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/nu;ZZZ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/nu;

    return-object v0
.end method
