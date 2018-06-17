.class public Lio/intercom/android/sdk/models/LastParticipatingAdmin;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINKED_IN:Ljava/lang/String; = "linkedin"

.field public static final NONE:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

.field public static final NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

.field private static final TWITTER:Ljava/lang/String; = "twitter"


# instance fields
.field private final avatar:Lio/intercom/android/sdk/models/Avatar;

.field private final firstName:Ljava/lang/String;

.field private final intro:Ljava/lang/String;

.field private final isActive:Z

.field private final jobTitle:Ljava/lang/String;

.field private final lastActiveAt:J

.field private final linkedIn:Lio/intercom/android/sdk/models/SocialAccount;

.field private final location:Lio/intercom/android/sdk/models/Location;

.field private final twitter:Lio/intercom/android/sdk/models/SocialAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    new-instance v1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;-><init>()V

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;-><init>(Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;)V

    sput-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    new-instance v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    new-instance v1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;-><init>()V

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;-><init>(Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;)V

    sput-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NONE:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->lastActiveAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive:Z

    const-class v0, Lio/intercom/android/sdk/models/Avatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Avatar;

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->avatar:Lio/intercom/android/sdk/models/Avatar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->firstName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->intro:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->jobTitle:Ljava/lang/String;

    const-class v0, Lio/intercom/android/sdk/models/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Location;

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->location:Lio/intercom/android/sdk/models/Location;

    const-class v0, Lio/intercom/android/sdk/models/SocialAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/SocialAccount;

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->twitter:Lio/intercom/android/sdk/models/SocialAccount;

    const-class v0, Lio/intercom/android/sdk/models/SocialAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/SocialAccount;

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->linkedIn:Lio/intercom/android/sdk/models/SocialAccount;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/models/Avatar$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Avatar$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Avatar$Builder;->build()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->avatar:Lio/intercom/android/sdk/models/Avatar;

    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->first_name:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->firstName:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->intro:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->intro:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->job_title:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->jobTitle:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->location:Lio/intercom/android/sdk/models/Location$Builder;

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/android/sdk/models/Location$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Location$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Location$Builder;->build()Lio/intercom/android/sdk/models/Location;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->location:Lio/intercom/android/sdk/models/Location;

    iget-wide v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->last_active_at:J

    iput-wide v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->lastActiveAt:J

    iget-boolean v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->is_active:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive:Z

    sget-object v2, Lio/intercom/android/sdk/models/SocialAccount;->NULL:Lio/intercom/android/sdk/models/SocialAccount;

    sget-object v0, Lio/intercom/android/sdk/models/SocialAccount;->NULL:Lio/intercom/android/sdk/models/SocialAccount;

    iget-object v1, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->social_accounts:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->social_accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/SocialAccount$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/SocialAccount$Builder;->build()Lio/intercom/android/sdk/models/SocialAccount;

    move-result-object v0

    const-string v4, "twitter"

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/SocialAccount;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->avatar:Lio/intercom/android/sdk/models/Avatar$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Avatar$Builder;->build()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->location:Lio/intercom/android/sdk/models/Location$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Location$Builder;->build()Lio/intercom/android/sdk/models/Location;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v4, "linkedin"

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/SocialAccount;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    :cond_4
    iput-object v2, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->twitter:Lio/intercom/android/sdk/models/SocialAccount;

    iput-object v1, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->linkedIn:Lio/intercom/android/sdk/models/SocialAccount;

    return-void

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public static isNull(Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Z
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NONE:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Lio/intercom/android/sdk/models/Avatar;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->avatar:Lio/intercom/android/sdk/models/Avatar;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->jobTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActiveAt()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->lastActiveAt:J

    return-wide v0
.end method

.method public getLinkedIn()Lio/intercom/android/sdk/models/SocialAccount;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->linkedIn:Lio/intercom/android/sdk/models/SocialAccount;

    return-object v0
.end method

.method public getLocation()Lio/intercom/android/sdk/models/Location;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->location:Lio/intercom/android/sdk/models/Location;

    return-object v0
.end method

.method public getTwitter()Lio/intercom/android/sdk/models/SocialAccount;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->twitter:Lio/intercom/android/sdk/models/SocialAccount;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->lastActiveAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->avatar:Lio/intercom/android/sdk/models/Avatar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->intro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->jobTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->location:Lio/intercom/android/sdk/models/Location;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->twitter:Lio/intercom/android/sdk/models/SocialAccount;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->linkedIn:Lio/intercom/android/sdk/models/SocialAccount;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
