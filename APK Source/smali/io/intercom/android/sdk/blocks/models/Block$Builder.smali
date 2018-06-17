.class public final Lio/intercom/android/sdk/blocks/models/Block$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/models/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field align:Ljava/lang/String;

.field articleId:Ljava/lang/String;

.field attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/BlockAttachment;",
            ">;"
        }
    .end annotation
.end field

.field attribution:Ljava/lang/String;

.field author:Lio/intercom/android/sdk/blocks/models/Author;

.field channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field data:Ljava/util/Map;
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

.field description:Ljava/lang/String;

.field embedUrl:Ljava/lang/String;

.field fallbackUrl:Ljava/lang/String;

.field footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

.field height:Ljava/lang/Integer;

.field id:Ljava/lang/String;

.field image:Lio/intercom/android/sdk/blocks/models/Image;

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field language:Ljava/lang/String;

.field linkType:Ljava/lang/String;

.field linkUrl:Ljava/lang/String;

.field links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;"
        }
    .end annotation
.end field

.field options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;",
            ">;"
        }
    .end annotation
.end field

.field previewUrl:Ljava/lang/String;

.field provider:Ljava/lang/String;

.field ratingIndex:Ljava/lang/Integer;

.field rating_index:Ljava/lang/Integer;

.field remark:Ljava/lang/String;

.field siteName:Ljava/lang/String;

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;

.field trackingUrl:Ljava/lang/String;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field username:Ljava/lang/String;

.field width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/blocks/models/Block;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/blocks/models/Block;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/blocks/models/Block;-><init>(Lio/intercom/android/sdk/blocks/models/Block$Builder;Lio/intercom/android/sdk/blocks/models/Block$1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    :goto_0
    if-ne p0, v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_5
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_8
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    if-nez v3, :cond_9

    :cond_b
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v0, v2

    goto :goto_1

    :cond_d
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    if-nez v3, :cond_c

    :cond_e
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v0, v2

    goto :goto_1

    :cond_10
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    if-nez v3, :cond_f

    :cond_11
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v0, v2

    goto/16 :goto_1

    :cond_13
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    if-nez v3, :cond_12

    :cond_14
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :cond_16
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    if-nez v3, :cond_15

    :cond_17
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/blocks/models/Author;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    move v0, v2

    goto/16 :goto_1

    :cond_19
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-nez v3, :cond_18

    :cond_1a
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/blocks/models/Image;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    move v0, v2

    goto/16 :goto_1

    :cond_1c
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-nez v3, :cond_1b

    :cond_1d
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1e
    move v0, v2

    goto/16 :goto_1

    :cond_1f
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    if-nez v3, :cond_1e

    :cond_20
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_21
    move v0, v2

    goto/16 :goto_1

    :cond_22
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    if-nez v3, :cond_21

    :cond_23
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    move v0, v2

    goto/16 :goto_1

    :cond_25
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    if-nez v3, :cond_24

    :cond_26
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v0, v2

    goto/16 :goto_1

    :cond_28
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    if-nez v3, :cond_27

    :cond_29
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    move v0, v2

    goto/16 :goto_1

    :cond_2b
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    if-nez v3, :cond_2a

    :cond_2c
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_2d
    move v0, v2

    goto/16 :goto_1

    :cond_2e
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    if-nez v3, :cond_2d

    :cond_2f
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_30
    move v0, v2

    goto/16 :goto_1

    :cond_31
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    if-nez v3, :cond_30

    :cond_32
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    :cond_33
    move v0, v2

    goto/16 :goto_1

    :cond_34
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    if-nez v3, :cond_33

    :cond_35
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_36
    move v0, v2

    goto/16 :goto_1

    :cond_37
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    if-nez v3, :cond_36

    :cond_38
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_39
    move v0, v2

    goto/16 :goto_1

    :cond_3a
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    if-nez v3, :cond_39

    :cond_3b
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_3c
    move v0, v2

    goto/16 :goto_1

    :cond_3d
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    if-nez v3, :cond_3c

    :cond_3e
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    :cond_3f
    move v0, v2

    goto/16 :goto_1

    :cond_40
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    if-nez v3, :cond_3f

    :cond_41
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    :cond_42
    move v0, v2

    goto/16 :goto_1

    :cond_43
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    if-nez v3, :cond_42

    :cond_44
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    :cond_45
    move v0, v2

    goto/16 :goto_1

    :cond_46
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    if-nez v3, :cond_45

    :cond_47
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    :cond_48
    move v0, v2

    goto/16 :goto_1

    :cond_49
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    if-nez v3, :cond_48

    :cond_4a
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    :cond_4b
    move v0, v2

    goto/16 :goto_1

    :cond_4c
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    if-nez v3, :cond_4b

    :cond_4d
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    :cond_4e
    move v0, v2

    goto/16 :goto_1

    :cond_4f
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    if-nez v3, :cond_4e

    :cond_50
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    :cond_51
    move v0, v2

    goto/16 :goto_1

    :cond_52
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    if-nez v3, :cond_51

    :cond_53
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    :cond_54
    move v0, v2

    goto/16 :goto_1

    :cond_55
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    if-nez v3, :cond_54

    :cond_56
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    :cond_57
    move v0, v2

    goto/16 :goto_1

    :cond_58
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    if-nez v3, :cond_57

    :cond_59
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    :cond_5a
    move v0, v2

    goto/16 :goto_1

    :cond_5b
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    if-nez v3, :cond_5a

    :cond_5c
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    :cond_5d
    move v0, v2

    goto/16 :goto_1

    :cond_5e
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    if-nez v3, :cond_5d

    :cond_5f
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    if-eqz v3, :cond_61

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    iget-object v4, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_60
    move v0, v2

    goto/16 :goto_1

    :cond_61
    iget-object v3, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    if-nez v3, :cond_60

    :cond_62
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    if-eqz v3, :cond_63

    iget-object p0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    iget-object v0, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    goto/16 :goto_0

    :cond_63
    iget-object v0, v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    if-nez v0, :cond_64

    move v0, v1

    goto/16 :goto_1

    :cond_64
    move v0, v2

    goto/16 :goto_1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Author;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Image;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->embedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->trackingUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->fallbackUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->rating_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->footerLink:Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->hashCode()I

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

    goto/16 :goto_19

    :cond_1b
    move v0, v1

    goto/16 :goto_1a

    :cond_1c
    move v0, v1

    goto/16 :goto_1b

    :cond_1d
    move v0, v1

    goto/16 :goto_1c

    :cond_1e
    move v0, v1

    goto/16 :goto_1d

    :cond_1f
    move v0, v1

    goto :goto_1e

    :cond_20
    move v0, v1

    goto :goto_1f
.end method

.method public final withAlign(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->align:Ljava/lang/String;

    return-object p0
.end method

.method public final withArticleId(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->articleId:Ljava/lang/String;

    return-object p0
.end method

.method public final withAttachments(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/BlockAttachment;",
            ">;)",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attachments:Ljava/util/List;

    return-object p0
.end method

.method public final withAttribution(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->attribution:Ljava/lang/String;

    return-object p0
.end method

.method public final withAuthor(Lio/intercom/android/sdk/blocks/models/Author;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->author:Lio/intercom/android/sdk/blocks/models/Author;

    return-object p0
.end method

.method public final withChannels(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Channel;",
            ">;)",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->channels:Ljava/util/List;

    return-object p0
.end method

.method public final withData(Ljava/util/Map;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->data:Ljava/util/Map;

    return-object p0
.end method

.method public final withDescription(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final withHeight(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public final withImage(Lio/intercom/android/sdk/blocks/models/Image;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->image:Lio/intercom/android/sdk/blocks/models/Image;

    return-object p0
.end method

.method public final withItems(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->items:Ljava/util/List;

    return-object p0
.end method

.method public final withLinkType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->linkType:Ljava/lang/String;

    return-object p0
.end method

.method public final withOptions(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;",
            ">;)",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->options:Ljava/util/List;

    return-object p0
.end method

.method public final withPreviewUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->previewUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final withRatingIndex(Ljava/lang/Integer;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->ratingIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public final withRemark(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->remark:Ljava/lang/String;

    return-object p0
.end method

.method public final withSiteName(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->siteName:Ljava/lang/String;

    return-object p0
.end method

.method public final withText(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final withTitle(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final withWidth(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/models/Block$Builder;->width:Ljava/lang/Integer;

    return-object p0
.end method
