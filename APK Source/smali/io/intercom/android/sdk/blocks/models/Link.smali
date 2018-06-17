.class public Lio/intercom/android/sdk/blocks/models/Link;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/blocks/models/Link$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Link;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final articleId:Ljava/lang/String;

.field private final author:Lio/intercom/android/sdk/blocks/models/Author;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final image:Lio/intercom/android/sdk/blocks/models/Image;

.field private final linkType:Ljava/lang/String;

.field private final siteName:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:Lio/intercom/android/sdk/blocks/BlockType;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Link$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Link$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/blocks/models/Link;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Link$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Link$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/models/Link;-><init>(Lio/intercom/android/sdk/blocks/models/Link$Builder;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/BlockType;->typeValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    const-class v0, Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Author;

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    const-class v0, Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Image;

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lio/intercom/android/sdk/blocks/models/Link$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->type:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/BlockType;->typeValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->description:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->linkType:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->siteName:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->articleId:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-nez v0, :cond_6

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Author;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Author;-><init>()V

    :goto_6
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-nez v0, :cond_7

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Image;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Image;-><init>()V

    :goto_7
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->data:Ljava/util/Map;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_8
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->url:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->text:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->title:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->description:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->linkType:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->siteName:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->articleId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    goto :goto_6

    :cond_7
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    goto :goto_7

    :cond_8
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->data:Ljava/util/Map;

    goto :goto_8

    :cond_9
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->url:Ljava/lang/String;

    goto :goto_9
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/blocks/models/Link$Builder;Lio/intercom/android/sdk/blocks/models/Link$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/models/Link;-><init>(Lio/intercom/android/sdk/blocks/models/Link$Builder;)V

    return-void
.end method

.method public static fromBlock(Lio/intercom/android/sdk/blocks/models/Block;)Lio/intercom/android/sdk/blocks/models/Link;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Link;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/models/Link$Builder;-><init>()V

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->description:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getLinkType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->linkType:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getAuthor()Lio/intercom/android/sdk/blocks/models/Author;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getImage()Lio/intercom/android/sdk/blocks/models/Image;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getData()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->data:Ljava/util/Map;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getSiteName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->siteName:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getArticleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->articleId:Ljava/lang/String;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/android/sdk/blocks/models/Link$Builder;->url:Ljava/lang/String;

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/blocks/models/Link;-><init>(Lio/intercom/android/sdk/blocks/models/Link$Builder;)V

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
    check-cast p1, Lio/intercom/android/sdk/blocks/models/Link;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_7
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_a
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    if-nez v2, :cond_b

    :cond_d
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    if-nez v2, :cond_e

    :cond_10
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/blocks/models/Author;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-nez v2, :cond_11

    :cond_13
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/blocks/models/Image;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-nez v2, :cond_14

    :cond_16
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    if-nez v2, :cond_17

    :cond_19
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    if-nez v2, :cond_1a

    :cond_1c
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    if-nez v2, :cond_1d

    :cond_1f
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    iget-object v1, p1, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_20
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Lio/intercom/android/sdk/blocks/models/Author;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lio/intercom/android/sdk/blocks/models/Image;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/intercom/android/sdk/blocks/BlockType;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Author;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Image;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkCard{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", siteName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", articleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->linkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->siteName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->articleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Link;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
