.class public Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Lio/intercom/android/sdk/blocks/BlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;-><init>(Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    sget-object v0, Lio/intercom/android/sdk/blocks/models/Channel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {}, Lio/intercom/android/sdk/blocks/BlockType;->values()[Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->NOTIFICATIONCHANNELSCARD:Lio/intercom/android/sdk/blocks/BlockType;

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->channels:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->type:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/BlockType;->typeValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->text:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->title:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->channels:Ljava/util/List;

    goto :goto_3
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;-><init>(Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;)V

    return-void
.end method

.method public static fromBlock(Lio/intercom/android/sdk/blocks/models/Block;)Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;-><init>()V

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;->channels:Ljava/util/List;

    new-instance v0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;-><init>(Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard$Builder;)V

    goto :goto_0
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
    check-cast p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_7
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_a
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Channel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/intercom/android/sdk/blocks/BlockType;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

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

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationChannelsCard{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->channels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/NotificationChannelsCard;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
