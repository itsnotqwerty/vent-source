.class public Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Middleware;
.implements Lio/intercom/android/sdk/views/ClientConditionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Middleware",
        "<",
        "Lio/intercom/android/sdk/state/State;",
        ">;",
        "Lio/intercom/android/sdk/views/ClientConditionListener;"
    }
.end annotation


# static fields
.field private static final USER_INTERACTION_CONDITION:Ljava/lang/String; = "user_interaction_condition"


# instance fields
.field private final apiProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;"
        }
    .end annotation
.end field

.field final conversationConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/Provider;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->conversationConditions:Ljava/util/Map;

    iput-object p1, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->apiProvider:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->handler:Landroid/os/Handler;

    return-void
.end method

.method private addClientConditionsForConversation(Ljava/lang/String;Ljava/util/List;Lio/intercom/android/sdk/state/ActiveConversationState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/OperatorClientCondition;",
            ">;",
            "Lio/intercom/android/sdk/state/ActiveConversationState;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->conversationConditions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->conversationConditions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/OperatorClientCondition;

    const-string v3, "user_interaction_condition"

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/OperatorClientCondition;->conditionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p3, v1, v0}, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->createOperatorClientConditionTimer(Ljava/lang/String;Lio/intercom/android/sdk/state/ActiveConversationState;Ljava/util/List;Lio/intercom/android/sdk/models/OperatorClientCondition;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private createOperatorClientConditionTimer(Ljava/lang/String;Lio/intercom/android/sdk/state/ActiveConversationState;Ljava/util/List;Lio/intercom/android/sdk/models/OperatorClientCondition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/state/ActiveConversationState;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;",
            ">;",
            "Lio/intercom/android/sdk/models/OperatorClientCondition;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;

    invoke-virtual {p4}, Lio/intercom/android/sdk/models/OperatorClientCondition;->id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2, p0}, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lio/intercom/android/sdk/views/ClientConditionListener;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;->beginCountdown()V

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->userHasInteractedWithConversation(Ljava/lang/String;Lio/intercom/android/sdk/state/ActiveConversationState;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;->interrupt()V

    :cond_0
    return-void
.end method

.method private interruptCondition(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->conversationConditions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;->interrupt()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private userHasInteractedWithConversation(Ljava/lang/String;Lio/intercom/android/sdk/state/ActiveConversationState;)Z
    .locals 1

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/ActiveConversationState;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/ActiveConversationState;->hasSwitchedInputType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lio/intercom/android/sdk/state/ActiveConversationState;->hasTextInComposer()Z

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


# virtual methods
.method public conditionSatisfied(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->conversationConditions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/Api;

    invoke-virtual {v0, p1, p2}, Lio/intercom/android/sdk/api/Api;->satisfyOperatorCondition(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/store/Store$NextDispatcher;",
            ")V"
        }
    .end annotation

    invoke-interface {p3, p2}, Lio/intercom/android/sdk/store/Store$NextDispatcher;->dispatch(Lio/intercom/android/sdk/actions/Action;)V

    sget-object v0, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware$1;->$SwitchMap$io$intercom$android$sdk$actions$Action$Type:[I

    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->type()Lio/intercom/android/sdk/actions/Action$Type;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/actions/Action$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->activeConversationState()Lio/intercom/android/sdk/state/ActiveConversationState;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/ActiveConversationState;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->interruptCondition(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lio/intercom/android/sdk/actions/Action;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getOperatorClientConditions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->activeConversationState()Lio/intercom/android/sdk/state/ActiveConversationState;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;->addClientConditionsForConversation(Ljava/lang/String;Ljava/util/List;Lio/intercom/android/sdk/state/ActiveConversationState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
