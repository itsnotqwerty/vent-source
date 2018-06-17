.class public abstract Lio/intercom/android/sdk/models/SocialAccount;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/SocialAccount$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/models/SocialAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL:Lio/intercom/android/sdk/models/SocialAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Lio/intercom/android/sdk/models/SocialAccount;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/SocialAccount;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/models/SocialAccount;->NULL:Lio/intercom/android/sdk/models/SocialAccount;

    new-instance v0, Lio/intercom/android/sdk/models/SocialAccount$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/SocialAccount$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/models/SocialAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/SocialAccount;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/AutoValue_SocialAccount;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/models/AutoValue_SocialAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getProfileUrl()Ljava/lang/String;
.end method

.method public abstract getProvider()Ljava/lang/String;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/SocialAccount;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/SocialAccount;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
