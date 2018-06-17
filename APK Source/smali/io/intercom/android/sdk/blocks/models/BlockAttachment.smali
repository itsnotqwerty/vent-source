.class public Lio/intercom/android/sdk/blocks/models/BlockAttachment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/blocks/models/BlockAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final size:J

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment;-><init>(Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    return-void
.end method

.method public constructor <init>(Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->contentType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    iget v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->id:I

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    iget-wide v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->size:J

    iput-wide v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->url:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->contentType:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    iget-wide v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    iget-wide v4, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    iget v3, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_8
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_b
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    iget-object v1, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    iget-wide v4, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toBuilder()Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    .locals 4

    new-instance v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;-><init>()V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withName(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withContentType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withId(I)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withSize(J)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
