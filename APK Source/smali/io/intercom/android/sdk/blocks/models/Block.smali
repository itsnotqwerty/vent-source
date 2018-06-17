.class public Lio/intercom/android/sdk/blocks/models/Block;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/blocks/models/Block$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final align:Lio/intercom/android/sdk/blocks/BlockAlignment;

.field private final articleId:Ljava/lang/String;

.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/BlockAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final attribution:Ljava/lang/String;

.field private final author:Lio/intercom/android/sdk/blocks/models/Author;

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

.field private final embedUrl:Ljava/lang/String;

.field private final fallbackUrl:Ljava/lang/String;

.field private final footerLink:Lio/intercom/android/sdk/blocks/models/Link;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final image:Lio/intercom/android/sdk/blocks/models/Image;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final language:Ljava/lang/String;

.field private final linkType:Ljava/lang/String;

.field private final linkUrl:Ljava/lang/String;

.field private final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Link;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;",
            ">;"
        }
    .end annotation
.end field

.field private final previewUrl:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final ratingIndex:I

.field private final remark:Ljava/lang/String;

.field private final siteName:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final trackingUrl:Ljava/lang/String;

.field private final type:Lio/intercom/android/sdk/blocks/BlockType;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Block$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Block$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/blocks/models/Block;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/models/Block;-><init>(Lio/intercom/android/sdk/blocks/models/Block$Builder;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v6, :cond_2

    :goto_2
    iput-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    const-class v0, Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Author;

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    const-class v0, Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Image;

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    sget-object v0, Lio/intercom/android/sdk/blocks/models/Channel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    const-class v1, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    const-class v1, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    const-class v0, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Link;

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    return-void

    :cond_1
    invoke-static {}, Lio/intercom/android/sdk/blocks/BlockType;->values()[Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v2

    aget-object v0, v2, v0

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lio/intercom/android/sdk/blocks/BlockAlignment;->values()[Lio/intercom/android/sdk/blocks/BlockAlignment;

    move-result-object v1

    aget-object v1, v1, v0

    goto/16 :goto_2
.end method

.method private constructor <init>(Lio/intercom/android/sdk/blocks/models/Block$Builder;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/BlockType;->typeValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_5
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-nez v0, :cond_7

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Author;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Author;-><init>()V

    :goto_6
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-nez v0, :cond_8

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Image;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Image;-><init>()V

    :goto_7
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_9
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_d
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_e
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_f
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :goto_11
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/BlockAlignment;->alignValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockAlignment;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    if-nez v0, :cond_14

    :goto_13
    iput v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, ""

    :goto_14
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_15
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    goto/16 :goto_5

    :cond_7
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    goto/16 :goto_6

    :cond_8
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    goto/16 :goto_7

    :cond_9
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    goto/16 :goto_8

    :cond_a
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    goto/16 :goto_9

    :cond_b
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    goto/16 :goto_a

    :cond_c
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    goto/16 :goto_b

    :cond_d
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    goto/16 :goto_c

    :cond_e
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    goto/16 :goto_d

    :cond_f
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    goto/16 :goto_e

    :cond_10
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    goto/16 :goto_f

    :cond_11
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    goto/16 :goto_10

    :cond_12
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    goto/16 :goto_11

    :cond_13
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_12

    :cond_14
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_13

    :cond_15
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    goto/16 :goto_14

    :cond_16
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    goto/16 :goto_15

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Channel;

    if-eqz v0, :cond_18

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1b
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    :goto_19
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string v0, ""

    :goto_1a
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;->build()Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_1d
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    goto :goto_19

    :cond_1e
    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    goto :goto_19

    :cond_1f
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    goto :goto_1a

    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    if-eqz v0, :cond_21

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->build()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/models/Link;->fromBlock(Lio/intercom/android/sdk/blocks/models/Block;)Lio/intercom/android/sdk/blocks/models/Link;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_22
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    if-nez v0, :cond_23

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Link;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Link;-><init>()V

    :goto_1d
    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    return-void

    :cond_23
    iget-object v0, p1, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->build()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/models/Link;->fromBlock(Lio/intercom/android/sdk/blocks/models/Block;)Lio/intercom/android/sdk/blocks/models/Link;

    move-result-object v0

    goto :goto_1d
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/blocks/models/Block$Builder;Lio/intercom/android/sdk/blocks/models/Block$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/models/Block;-><init>(Lio/intercom/android/sdk/blocks/models/Block$Builder;)V

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
    check-cast p1, Lio/intercom/android/sdk/blocks/models/Block;

    iget v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    iget v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    iget v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    iget v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    if-nez v2, :cond_d

    :cond_f
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/blocks/models/Author;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-nez v2, :cond_12

    :cond_14
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/blocks/models/Image;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-nez v2, :cond_15

    :cond_17
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    if-nez v2, :cond_18

    :cond_1a
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    if-nez v2, :cond_1b

    :cond_1d
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v0, v1

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    if-nez v2, :cond_1e

    :cond_20
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    move v0, v1

    goto/16 :goto_0

    :cond_22
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    if-nez v2, :cond_21

    :cond_23
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_24
    move v0, v1

    goto/16 :goto_0

    :cond_25
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    if-nez v2, :cond_24

    :cond_26
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_27
    move v0, v1

    goto/16 :goto_0

    :cond_28
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    if-nez v2, :cond_27

    :cond_29
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2a
    move v0, v1

    goto/16 :goto_0

    :cond_2b
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    if-nez v2, :cond_2a

    :cond_2c
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    :cond_2d
    move v0, v1

    goto/16 :goto_0

    :cond_2e
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    if-nez v2, :cond_2d

    :cond_2f
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_30
    move v0, v1

    goto/16 :goto_0

    :cond_31
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    if-nez v2, :cond_30

    :cond_32
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_33
    move v0, v1

    goto/16 :goto_0

    :cond_34
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    if-nez v2, :cond_33

    :cond_35
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    :cond_36
    move v0, v1

    goto/16 :goto_0

    :cond_37
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    if-nez v2, :cond_36

    :cond_38
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    :cond_39
    move v0, v1

    goto/16 :goto_0

    :cond_3a
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    if-nez v2, :cond_39

    :cond_3b
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_3c
    move v0, v1

    goto/16 :goto_0

    :cond_3d
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    if-nez v2, :cond_3c

    :cond_3e
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    :cond_3f
    move v0, v1

    goto/16 :goto_0

    :cond_40
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    if-nez v2, :cond_3f

    :cond_41
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_42
    move v0, v1

    goto/16 :goto_0

    :cond_43
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    if-nez v2, :cond_42

    :cond_44
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    :cond_45
    move v0, v1

    goto/16 :goto_0

    :cond_46
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    if-nez v2, :cond_45

    :cond_47
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_48
    move v0, v1

    goto/16 :goto_0

    :cond_49
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    if-nez v2, :cond_48

    :cond_4a
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    :cond_4b
    move v0, v1

    goto/16 :goto_0

    :cond_4c
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    if-nez v2, :cond_4b

    :cond_4d
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    :cond_4e
    move v0, v1

    goto/16 :goto_0

    :cond_4f
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    if-nez v2, :cond_4e

    :cond_50
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    :cond_51
    move v0, v1

    goto/16 :goto_0

    :cond_52
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    if-nez v2, :cond_51

    :cond_53
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    iget-object v3, p1, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    :cond_54
    move v0, v1

    goto/16 :goto_0

    :cond_55
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    if-nez v2, :cond_54

    :cond_56
    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    if-eqz v2, :cond_57

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    iget-object v1, p1, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Link;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_57
    iget-object v2, p1, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getAlign()Lio/intercom/android/sdk/blocks/BlockAlignment;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    return-object v0
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/BlockAttachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getAttribution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Lio/intercom/android/sdk/blocks/models/Author;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    return-object v0
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

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

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

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterLink()Lio/intercom/android/sdk/blocks/models/Link;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lio/intercom/android/sdk/blocks/models/Image;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Link;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingIndex()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/intercom/android/sdk/blocks/BlockType;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockAlignment;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Author;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Image;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_3

    :cond_5
    move v0, v1

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto/16 :goto_5

    :cond_7
    move v0, v1

    goto/16 :goto_6

    :cond_8
    move v0, v1

    goto/16 :goto_7

    :cond_9
    move v0, v1

    goto/16 :goto_8

    :cond_a
    move v0, v1

    goto/16 :goto_9

    :cond_b
    move v0, v1

    goto/16 :goto_a

    :cond_c
    move v0, v1

    goto/16 :goto_b

    :cond_d
    move v0, v1

    goto/16 :goto_c

    :cond_e
    move v0, v1

    goto/16 :goto_d

    :cond_f
    move v0, v1

    goto/16 :goto_e

    :cond_10
    move v0, v1

    goto/16 :goto_f

    :cond_11
    move v0, v1

    goto/16 :goto_10

    :cond_12
    move v0, v1

    goto/16 :goto_11

    :cond_13
    move v0, v1

    goto/16 :goto_12

    :cond_14
    move v0, v1

    goto/16 :goto_13

    :cond_15
    move v0, v1

    goto/16 :goto_14

    :cond_16
    move v0, v1

    goto/16 :goto_15

    :cond_17
    move v0, v1

    goto/16 :goto_16

    :cond_18
    move v0, v1

    goto/16 :goto_17

    :cond_19
    move v0, v1

    goto/16 :goto_18

    :cond_1a
    move v0, v1

    goto :goto_19

    :cond_1b
    move v0, v1

    goto :goto_1a

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method public toBuilder()Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    sget-object v0, Lio/intercom/android/sdk/blocks/models/Block$2;->$SwitchMap$io$intercom$android$blocks$BlockType:[I

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/BlockType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v2

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withText(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/BlockType;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->getSerializedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withAttribution(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withPreviewUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withHeight(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withWidth(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->getSerializedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withAttachments(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Block{attachments="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", siteName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", articleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previewUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attribution=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", embedUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackingUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fallbackUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ratingIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", links="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", footerLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

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
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attachments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->items:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->siteName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->articleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->embedUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->trackingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->previewUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->attribution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->channels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->ratingIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->options:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->links:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->footerLink:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->type:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockType;->ordinal()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block;->align:Lio/intercom/android/sdk/blocks/BlockAlignment;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/BlockAlignment;->ordinal()I

    move-result v2

    goto/16 :goto_2
.end method
