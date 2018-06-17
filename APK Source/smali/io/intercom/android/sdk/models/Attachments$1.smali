.class final Lio/intercom/android/sdk/models/Attachments$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Attachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lio/intercom/android/sdk/models/Attachments;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lio/intercom/android/sdk/models/Attachments;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/models/Attachments;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Attachments;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/models/Attachments$1;->createFromParcel(Landroid/os/Parcel;)Lio/intercom/android/sdk/models/Attachments;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lio/intercom/android/sdk/models/Attachments;
    .locals 1

    new-array v0, p1, [Lio/intercom/android/sdk/models/Attachments;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/models/Attachments$1;->newArray(I)[Lio/intercom/android/sdk/models/Attachments;

    move-result-object v0

    return-object v0
.end method
