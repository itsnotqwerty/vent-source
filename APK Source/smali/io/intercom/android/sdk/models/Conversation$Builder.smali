.class public final Lio/intercom/android/sdk/models/Conversation$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field conversation_parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part$Builder;",
            ">;"
        }
    .end annotation
.end field

.field group_conversation_participant_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field last_participating_admin:Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;

.field operator_client_conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;",
            ">;"
        }
    .end annotation
.end field

.field participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant$Builder;",
            ">;"
        }
    .end annotation
.end field

.field read:Z

.field user_participated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/Conversation;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/models/Conversation;-><init>(Lio/intercom/android/sdk/models/Conversation$Builder;)V

    return-object v0
.end method

.method public final withId(Ljava/lang/String;)Lio/intercom/android/sdk/models/Conversation$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/models/Conversation$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final withParticipants(Ljava/util/List;)Lio/intercom/android/sdk/models/Conversation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant$Builder;",
            ">;)",
            "Lio/intercom/android/sdk/models/Conversation$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/models/Conversation$Builder;->participants:Ljava/util/List;

    return-object p0
.end method

.method public final withParts(Ljava/util/List;)Lio/intercom/android/sdk/models/Conversation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part$Builder;",
            ">;)",
            "Lio/intercom/android/sdk/models/Conversation$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/models/Conversation$Builder;->conversation_parts:Ljava/util/List;

    return-object p0
.end method
