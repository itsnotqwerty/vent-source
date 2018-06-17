.class public Lio/intercom/android/sdk/models/Part;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/Part$Builder;,
        Lio/intercom/android/sdk/models/Part$DeliveryOption;,
        Lio/intercom/android/sdk/models/Part$MessageState;
    }
.end annotation


# static fields
.field public static final ADMIN_IS_TYPING_STYLE:Ljava/lang/String; = "admin_is_typing_style"

.field public static final CHAT_MESSAGE_STYLE:Ljava/lang/String; = "chat"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_DIVIDER_STYLE:Ljava/lang/String; = "day_divider_style"

.field public static final LEGACY_ANNOUNCEMENT_STYLE:Ljava/lang/String; = "announcement"

.field public static final LEGACY_SMALL_ANNOUNCEMENT_STYLE:Ljava/lang/String; = "small-announcement"

.field public static final LOADING_LAYOUT:Ljava/lang/String; = "loading_layout_style"

.field public static final NOTE_MESSAGE_STYLE:Ljava/lang/String; = "note"

.field public static final NULL:Lio/intercom/android/sdk/models/Part;

.field public static final POST_MESSAGE_STYLE:Ljava/lang/String; = "post"


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Attachments;",
            ">;"
        }
    .end annotation
.end field

.field private final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAt:J

.field private final deliveryOption:Lio/intercom/android/sdk/models/Part$DeliveryOption;

.field private displayDelivered:Z

.field private entranceAnimation:Z

.field private final eventData:Lio/intercom/android/sdk/models/EventData;

.field private final id:Ljava/lang/String;

.field private final isInitialMessage:Z

.field private messageState:Lio/intercom/android/sdk/models/Part$MessageState;

.field private final messageStyle:Ljava/lang/String;

.field private participant:Lio/intercom/android/sdk/models/Participant;

.field private participantId:Ljava/lang/String;

.field private final participantIsAdmin:Z

.field private final reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

.field private seenByAdmin:Ljava/lang/String;

.field private final summary:Ljava/lang/String;

.field private uploadImage:Lcom/intercom/input/gallery/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/models/Part;

    new-instance v1, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/Part$Builder;-><init>()V

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/models/Part;-><init>(Lio/intercom/android/sdk/models/Part$Builder;)V

    sput-object v0, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    new-instance v0, Lio/intercom/android/sdk/models/Part$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Part$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/models/Part;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Part$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/models/Part;-><init>(Lio/intercom/android/sdk/models/Part$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->participantIsAdmin:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    const-class v3, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    const-class v3, Lio/intercom/android/sdk/models/Attachments;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lio/intercom/android/sdk/models/Part;->createdAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->summary:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lio/intercom/android/sdk/models/ReactionReply;->NULL:Lio/intercom/android/sdk/models/ReactionReply;

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->seenByAdmin:Ljava/lang/String;

    const-class v0, Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->participant:Lio/intercom/android/sdk/models/Participant;

    const-class v0, Lio/intercom/android/sdk/models/EventData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/EventData;

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->eventData:Lio/intercom/android/sdk/models/EventData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lio/intercom/android/sdk/models/Part;->isInitialMessage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/Part;->convertDeliveryOption(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$DeliveryOption;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->deliveryOption:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-class v0, Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/ReactionReply;

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lio/intercom/android/sdk/models/Part$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/models/Part;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/android/sdk/models/Part$Builder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->participant_id:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->participantId:Ljava/lang/String;

    iget-boolean v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->participant_is_admin:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->participantIsAdmin:Z

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->summary:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->summary:Ljava/lang/String;

    iget-wide v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->created_at:J

    iput-wide v0, p0, Lio/intercom/android/sdk/models/Part;->createdAt:J

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->message_style:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/models/Part;->convertLegacyMessageStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->delivery_option:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/models/Part;->convertDeliveryOption(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$DeliveryOption;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->deliveryOption:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->body:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    iget-object v2, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->build()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->reactions_reply:Lio/intercom/android/sdk/models/ReactionReply$Builder;

    if-nez v0, :cond_2

    sget-object v0, Lio/intercom/android/sdk/models/ReactionReply;->NULL:Lio/intercom/android/sdk/models/ReactionReply;

    :goto_2
    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->seen_by_admin:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "hide"

    :goto_3
    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->seenByAdmin:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->attachments:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Attachments$Builder;

    iget-object v2, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Attachments$Builder;->build()Lio/intercom/android/sdk/models/Attachments;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->reactions_reply:Lio/intercom/android/sdk/models/ReactionReply$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply$Builder;->build()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->seen_by_admin:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->event_data:Lio/intercom/android/sdk/models/EventData$Builder;

    if-nez v0, :cond_5

    sget-object v0, Lio/intercom/android/sdk/models/EventData;->NULL:Lio/intercom/android/sdk/models/EventData;

    :goto_5
    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->eventData:Lio/intercom/android/sdk/models/EventData;

    sget-object v0, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->participant:Lio/intercom/android/sdk/models/Participant;

    iput-boolean v3, p0, Lio/intercom/android/sdk/models/Part;->displayDelivered:Z

    iput-boolean v3, p0, Lio/intercom/android/sdk/models/Part;->entranceAnimation:Z

    iget-boolean v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->is_initial_message:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->isInitialMessage:Z

    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->NORMAL:Lio/intercom/android/sdk/models/Part$MessageState;

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->messageState:Lio/intercom/android/sdk/models/Part$MessageState;

    return-void

    :cond_5
    iget-object v0, p1, Lio/intercom/android/sdk/models/Part$Builder;->event_data:Lio/intercom/android/sdk/models/EventData$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/EventData$Builder;->build()Lio/intercom/android/sdk/models/EventData;

    move-result-object v0

    goto :goto_5
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/models/Part$Builder;Lio/intercom/android/sdk/models/Part$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/models/Part;-><init>(Lio/intercom/android/sdk/models/Part$Builder;)V

    return-void
.end method

.method private static convertDeliveryOption(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$DeliveryOption;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/models/Part$DeliveryOption;->SUMMARY:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/Part$DeliveryOption;->valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$DeliveryOption;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lio/intercom/android/sdk/models/Part$DeliveryOption;->SUMMARY:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    goto :goto_0
.end method

.method static convertLegacyMessageStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "announcement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "post"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "small-announcement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "note"

    goto :goto_0

    :cond_1
    const-string v0, "admin_is_typing_style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "admin_is_typing_style"

    goto :goto_0

    :cond_2
    const-string v0, "day_divider_style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "day_divider_style"

    goto :goto_0

    :cond_3
    const-string v0, "loading_layout_style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "loading_layout_style"

    goto :goto_0

    :cond_4
    const-string v0, "chat"

    goto :goto_0
.end method

.method private static nextPartFromSameParticipant(Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/models/Part;)Z
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldConcatenate(Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/models/Part;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "day_divider_style"

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->isLinkCard()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->isEvent()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isEvent()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {p0, p1}, Lio/intercom/android/sdk/models/Part;->nextPartFromSameParticipant(Lio/intercom/android/sdk/models/Part;Lio/intercom/android/sdk/models/Part;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getCreatedAt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/intercom/android/sdk/models/Part;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/android/sdk/models/Part;

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    iget-object v1, p1, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Attachments;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/Part;->createdAt:J

    return-wide v0
.end method

.method public getDeliveryOption()Lio/intercom/android/sdk/models/Part$DeliveryOption;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->deliveryOption:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    return-object v0
.end method

.method public getEventData()Lio/intercom/android/sdk/models/EventData;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->eventData:Lio/intercom/android/sdk/models/EventData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkBlock()Lio/intercom/android/sdk/blocks/models/Block;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    return-object v0
.end method

.method public getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->messageState:Lio/intercom/android/sdk/models/Part$MessageState;

    return-object v0
.end method

.method public getMessageStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Lio/intercom/android/sdk/models/Participant;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->participant:Lio/intercom/android/sdk/models/Participant;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->participantId:Ljava/lang/String;

    return-object v0
.end method

.method public getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    return-object v0
.end method

.method public getSeenByAdmin()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->participantIsAdmin:Z

    if-eqz v0, :cond_0

    const-string v0, "hide"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->seenByAdmin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getUpload()Lcom/intercom/input/gallery/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->uploadImage:Lcom/intercom/input/gallery/b;

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEntranceAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->entranceAnimation:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->participantIsAdmin:Z

    return v0
.end method

.method public isDisplayDelivered()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->displayDelivered:Z

    return v0
.end method

.method public isEvent()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->eventData:Lio/intercom/android/sdk/models/EventData;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/EventData;->getEventAsPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGifOnlyPart()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getAttribution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isInitialMessage()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->isInitialMessage:Z

    return v0
.end method

.method public isLinkCard()Z
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LINK:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/models/Part;->isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chat"

    iget-object v1, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLinkList()Z
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LINKLIST:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/models/Part;->isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chat"

    iget-object v1, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessagePart()Z
    .locals 2

    const-string v0, "post"

    iget-object v1, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "note"

    iget-object v1, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chat"

    iget-object v1, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReply()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->isInitialMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->getType()Lio/intercom/android/sdk/blocks/BlockType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isUser()Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayDelivered(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/intercom/android/sdk/models/Part;->displayDelivered:Z

    return-void
.end method

.method public setEntranceAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/intercom/android/sdk/models/Part;->entranceAnimation:Z

    return-void
.end method

.method public setMessageState(Lio/intercom/android/sdk/models/Part$MessageState;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Part;->messageState:Lio/intercom/android/sdk/models/Part$MessageState;

    return-void
.end method

.method public setParticipant(Lio/intercom/android/sdk/models/Participant;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/android/sdk/models/Part;->participant:Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Participant;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Part;->participantId:Ljava/lang/String;

    return-void
.end method

.method public setSeenByAdmin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Part;->seenByAdmin:Ljava/lang/String;

    return-void
.end method

.method public setUpload(Lcom/intercom/input/gallery/b;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Part;->uploadImage:Lcom/intercom/input/gallery/b;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->participantId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->participantIsAdmin:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->blocks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->attachments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->messageStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lio/intercom/android/sdk/models/Part;->createdAt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-static {v0}, Lio/intercom/android/sdk/models/ReactionReply;->isNull(Lio/intercom/android/sdk/models/ReactionReply;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->seenByAdmin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->participant:Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->eventData:Lio/intercom/android/sdk/models/EventData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Part;->isInitialMessage:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->deliveryOption:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part$DeliveryOption;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Part;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
