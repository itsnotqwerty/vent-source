.class public Lio/intercom/android/sdk/models/events/ConversationEvent;
.super Ljava/lang/Object;


# instance fields
.field private final response:Lio/intercom/android/sdk/models/Conversation;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/models/Conversation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/models/events/ConversationEvent;->response:Lio/intercom/android/sdk/models/Conversation;

    return-void
.end method


# virtual methods
.method public getResponse()Lio/intercom/android/sdk/models/Conversation;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/events/ConversationEvent;->response:Lio/intercom/android/sdk/models/Conversation;

    return-object v0
.end method
