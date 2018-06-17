.class final Lio/intercom/android/sdk/blocks/models/LinkList$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/models/LinkList;
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
        "Lio/intercom/android/sdk/blocks/models/LinkList;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lio/intercom/android/sdk/blocks/models/LinkList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Link;

    new-instance v2, Lio/intercom/android/sdk/blocks/models/LinkList;

    invoke-direct {v2, v1, v0}, Lio/intercom/android/sdk/blocks/models/LinkList;-><init>(Ljava/util/List;Lio/intercom/android/sdk/blocks/models/Link;)V

    return-object v2
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/blocks/models/LinkList$1;->createFromParcel(Landroid/os/Parcel;)Lio/intercom/android/sdk/blocks/models/LinkList;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lio/intercom/android/sdk/blocks/models/LinkList;
    .locals 1

    new-array v0, p1, [Lio/intercom/android/sdk/blocks/models/LinkList;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/blocks/models/LinkList$1;->newArray(I)[Lio/intercom/android/sdk/blocks/models/LinkList;

    move-result-object v0

    return-object v0
.end method
