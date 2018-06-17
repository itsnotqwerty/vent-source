.class public abstract enum Lio/intercom/android/sdk/blocks/BlockType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/blocks/BlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum ATTACHMENTLIST:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum BUTTON:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum CODE:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum CONVERSATIONRATING:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum FACEBOOKLIKEBUTTON:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum HEADING:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum IMAGE:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum LINK:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum LINKLIST:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum LOCALIMAGE:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum LOCAL_ATTACHMENT:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum LWR:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum MESSENGERCARD:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum NOTIFICATIONCHANNELSCARD:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum ORDEREDLIST:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum PARAGRAPH:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum SUBHEADING:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum TWITTERFOLLOWBUTTON:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum UNKNOWN:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum UNORDEREDLIST:Lio/intercom/android/sdk/blocks/BlockType;

.field public static final enum VIDEO:Lio/intercom/android/sdk/blocks/BlockType;


# instance fields
.field private final serializedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$1;

    const-string v1, "PARAGRAPH"

    const-string v2, "paragraph"

    invoke-direct {v0, v1, v4, v2}, Lio/intercom/android/sdk/blocks/BlockType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->PARAGRAPH:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$2;

    const-string v1, "HEADING"

    const-string v2, "heading"

    invoke-direct {v0, v1, v5, v2}, Lio/intercom/android/sdk/blocks/BlockType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->HEADING:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$3;

    const-string v1, "SUBHEADING"

    const-string v2, "subheading"

    invoke-direct {v0, v1, v6, v2}, Lio/intercom/android/sdk/blocks/BlockType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->SUBHEADING:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$4;

    const-string v1, "CODE"

    const-string v2, "code"

    invoke-direct {v0, v1, v7, v2}, Lio/intercom/android/sdk/blocks/BlockType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->CODE:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$5;

    const-string v1, "LINK"

    const-string v2, "link"

    invoke-direct {v0, v1, v8, v2}, Lio/intercom/android/sdk/blocks/BlockType$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LINK:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$6;

    const-string v1, "CONVERSATIONRATING"

    const/4 v2, 0x5

    const-string v3, "conversationRating"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->CONVERSATIONRATING:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$7;

    const-string v1, "NOTIFICATIONCHANNELSCARD"

    const/4 v2, 0x6

    const-string v3, "notificationChannelCard"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->NOTIFICATIONCHANNELSCARD:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$8;

    const-string v1, "LINKLIST"

    const/4 v2, 0x7

    const-string v3, "linkList"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LINKLIST:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$9;

    const-string v1, "UNORDEREDLIST"

    const/16 v2, 0x8

    const-string v3, "unorderedList"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->UNORDEREDLIST:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$10;

    const-string v1, "ORDEREDLIST"

    const/16 v2, 0x9

    const-string v3, "orderedList"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->ORDEREDLIST:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$11;

    const-string v1, "ATTACHMENTLIST"

    const/16 v2, 0xa

    const-string v3, "attachmentList"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->ATTACHMENTLIST:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$12;

    const-string v1, "IMAGE"

    const/16 v2, 0xb

    const-string v3, "image"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$12;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->IMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$13;

    const-string v1, "LWR"

    const/16 v2, 0xc

    const-string v3, "lwr"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$13;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LWR:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$14;

    const-string v1, "BUTTON"

    const/16 v2, 0xd

    const-string v3, "button"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$14;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->BUTTON:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$15;

    const-string v1, "FACEBOOKLIKEBUTTON"

    const/16 v2, 0xe

    const-string v3, "facebookLikeButton"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$15;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->FACEBOOKLIKEBUTTON:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$16;

    const-string v1, "TWITTERFOLLOWBUTTON"

    const/16 v2, 0xf

    const-string v3, "twitterFollowButton"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$16;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->TWITTERFOLLOWBUTTON:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$17;

    const-string v1, "VIDEO"

    const/16 v2, 0x10

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$17;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->VIDEO:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$18;

    const-string v1, "MESSENGERCARD"

    const/16 v2, 0x11

    const-string v3, "messengerCard"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$18;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->MESSENGERCARD:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$19;

    const-string v1, "LOCALIMAGE"

    const/16 v2, 0x12

    const-string v3, "localImage"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$19;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LOCALIMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$20;

    const-string v1, "LOCAL_ATTACHMENT"

    const/16 v2, 0x13

    const-string v3, "local_attachment"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$20;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LOCAL_ATTACHMENT:Lio/intercom/android/sdk/blocks/BlockType;

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockType$21;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x14

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/BlockType$21;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->UNKNOWN:Lio/intercom/android/sdk/blocks/BlockType;

    const/16 v0, 0x15

    new-array v0, v0, [Lio/intercom/android/sdk/blocks/BlockType;

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->PARAGRAPH:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->HEADING:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->SUBHEADING:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->CODE:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v1, v0, v7

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->LINK:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->CONVERSATIONRATING:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->NOTIFICATIONCHANNELSCARD:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LINKLIST:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->UNORDEREDLIST:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->ORDEREDLIST:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->ATTACHMENTLIST:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->IMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LWR:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->BUTTON:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->FACEBOOKLIKEBUTTON:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->TWITTERFOLLOWBUTTON:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->VIDEO:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->MESSENGERCARD:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LOCALIMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LOCAL_ATTACHMENT:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->UNKNOWN:Lio/intercom/android/sdk/blocks/BlockType;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/blocks/BlockType;->$VALUES:[Lio/intercom/android/sdk/blocks/BlockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/BlockType;->serializedName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/intercom/android/sdk/blocks/BlockType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/android/sdk/blocks/BlockType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected static getUrl(Lio/intercom/android/sdk/blocks/models/Block;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/models/Block;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static typeValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->UNKNOWN:Lio/intercom/android/sdk/blocks/BlockType;

    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/blocks/BlockType;->valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/BlockType;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/blocks/BlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/BlockType;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/blocks/BlockType;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->$VALUES:[Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/blocks/BlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/blocks/BlockType;

    return-object v0
.end method


# virtual methods
.method abstract generateViewFromBlockAndLayout(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/blocks/models/Block;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
.end method

.method public getSerializedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/BlockType;->serializedName:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/blocks/models/Block;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/android/sdk/blocks/BlockTypeNotImplementedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lio/intercom/android/sdk/blocks/BlockType;->generateViewFromBlockAndLayout(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/blocks/models/Block;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->UNKNOWN:Lio/intercom/android/sdk/blocks/BlockType;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/BlockType;->generateViewFromBlockAndLayout(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/blocks/models/Block;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/intercom/android/sdk/blocks/BlockTypeNotImplementedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    new-instance v0, Lio/intercom/android/sdk/blocks/BlockTypeNotImplementedException;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/BlockTypeNotImplementedException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method
