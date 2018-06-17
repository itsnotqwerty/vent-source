.class public Lio/intercom/android/sdk/blocks/models/Author;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/blocks/models/Author$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Author;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final avatar:Ljava/lang/String;

.field private final firstName:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Author$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Author$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/blocks/models/Author;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Author$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Author$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/models/Author;-><init>(Lio/intercom/android/sdk/blocks/models/Author$Builder;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/intercom/android/sdk/blocks/models/Author$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->avatar:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->firstName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->lastName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->avatar:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->firstName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Author$Builder;->lastName:Ljava/lang/String;

    goto :goto_3
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/blocks/models/Author$Builder;Lio/intercom/android/sdk/blocks/models/Author$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/models/Author;-><init>(Lio/intercom/android/sdk/blocks/models/Author$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lio/intercom/android/sdk/blocks/models/Author;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    if-nez v2, :cond_d

    goto :goto_0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Author;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
