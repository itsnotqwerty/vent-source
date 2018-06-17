.class public Lio/intercom/android/sdk/models/Conversation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/Conversation$Builder;
    }
.end annotation


# instance fields
.field private final conversationParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field private final groupConversationParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

.field private final operatorClientConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/OperatorClientCondition;",
            ">;"
        }
    .end annotation
.end field

.field private final participants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final read:Z

.field private final userParticipated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/Conversation$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Conversation$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/models/Conversation;-><init>(Lio/intercom/android/sdk/models/Conversation$Builder;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/models/Conversation$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->id:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/NullSafety;->valueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    iget-boolean v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->read:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/Conversation;->read:Z

    iget-boolean v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->user_participated:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->participants:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant$Builder;->build()Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->conversation_parts:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->conversation_parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part$Builder;->build()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/intercom/android/sdk/models/Conversation;->getParticipant(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Part;->setParticipant(Lio/intercom/android/sdk/models/Participant;)V

    iget-object v2, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->group_conversation_participant_ids:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->group_conversation_participant_ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/models/Conversation;->getParticipant(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->operator_client_conditions:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->operator_client_conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/OperatorClientCondition$Builder;->build()Lio/intercom/android/sdk/models/OperatorClientCondition;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->last_participating_admin:Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lio/intercom/android/sdk/models/Conversation$Builder;->last_participating_admin:Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin$Builder;->build()Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    return-void

    :cond_6
    sget-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    goto :goto_4
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/intercom/android/sdk/models/LastParticipatingAdmin;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/OperatorClientCondition;",
            ">;",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    iput-object p2, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    iput-object p3, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    iput-object p4, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    iput-object p5, p0, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iput-object p6, p0, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    iput-boolean p7, p0, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    iput-boolean p8, p0, Lio/intercom/android/sdk/models/Conversation;->read:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lio/intercom/android/sdk/models/Conversation;

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    iget-boolean v2, p1, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/android/sdk/models/Conversation;->read:Z

    iget-boolean v2, p1, Lio/intercom/android/sdk/models/Conversation;->read:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    iget-object v2, p1, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    iget-object v2, p1, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    iget-object v2, p1, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    iget-object v2, p1, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v2, p1, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    iget-object v1, p1, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroupConversationParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAdmin()Lio/intercom/android/sdk/models/Participant;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    goto :goto_0
.end method

.method public getLastAdminPart()Lio/intercom/android/sdk/models/Part;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    goto :goto_1
.end method

.method public getLastPart()Lio/intercom/android/sdk/models/Part;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    goto :goto_0
.end method

.method public getLastParticipatingAdmin()Lio/intercom/android/sdk/models/LastParticipatingAdmin;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    return-object v0
.end method

.method public getLastUserVisiblePart()Lio/intercom/android/sdk/models/Part;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isEvent()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lio/intercom/android/sdk/models/Part;->NULL:Lio/intercom/android/sdk/models/Part;

    goto :goto_1
.end method

.method public getOperatorClientConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/OperatorClientCondition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    return-object v0
.end method

.method public getParticipant(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    :cond_0
    return-object v0
.end method

.method public getParticipants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lio/intercom/android/sdk/models/Conversation;->read:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isAdminReply()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRead()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Conversation;->read:Z

    return v0
.end method

.method public isUserParticipated()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    return v0
.end method

.method public withRead(Z)Lio/intercom/android/sdk/models/Conversation;
    .locals 9

    new-instance v0, Lio/intercom/android/sdk/models/Conversation;

    iget-object v1, p0, Lio/intercom/android/sdk/models/Conversation;->participants:Ljava/util/Map;

    iget-object v2, p0, Lio/intercom/android/sdk/models/Conversation;->conversationParts:Ljava/util/List;

    iget-object v3, p0, Lio/intercom/android/sdk/models/Conversation;->groupConversationParticipants:Ljava/util/List;

    iget-object v4, p0, Lio/intercom/android/sdk/models/Conversation;->operatorClientConditions:Ljava/util/List;

    iget-object v5, p0, Lio/intercom/android/sdk/models/Conversation;->lastParticipatingAdmin:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v6, p0, Lio/intercom/android/sdk/models/Conversation;->id:Ljava/lang/String;

    iget-boolean v7, p0, Lio/intercom/android/sdk/models/Conversation;->userParticipated:Z

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/models/Conversation;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/intercom/android/sdk/models/LastParticipatingAdmin;Ljava/lang/String;ZZ)V

    return-object v0
.end method
