.class interface abstract Lio/intercom/android/sdk/api/MessengerApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addConversationRatingRemark(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}/remark"
    .end annotation
.end method

.method public abstract deleteDeviceToken(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/PUT;
        value = "device_tokens"
    .end annotation
.end method

.method public abstract getConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Conversation$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}"
    .end annotation
.end method

.method public abstract getConversations(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/ConversationsResponse$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/inbox"
    .end annotation
.end method

.method public abstract getGifs(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/GifResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "gifs"
    .end annotation
.end method

.method public abstract getLink(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "articleId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/LinkResponse$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "articles/{articleId}"
    .end annotation
.end method

.method public abstract getSheet(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Sheet$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "sheets/open"
    .end annotation
.end method

.method public abstract getUnreadConversations(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/UsersResponse$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/unread"
    .end annotation
.end method

.method public abstract logEvent(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/UsersResponse$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "events"
    .end annotation
.end method

.method public abstract markAsDismissed(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/dismiss"
    .end annotation
.end method

.method public abstract markAsRead(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}/read"
    .end annotation
.end method

.method public abstract rateConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}/rate"
    .end annotation
.end method

.method public abstract reactToConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}/react"
    .end annotation
.end method

.method public abstract reactToLink(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "articleId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "articles/{articleId}/react"
    .end annotation
.end method

.method public abstract replyToConversation(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Part$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}/reply"
    .end annotation
.end method

.method public abstract reportError(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "error_reports"
    .end annotation
.end method

.method public abstract satisfyCondition(Ljava/lang/String;Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lio/intercom/retrofit2/http/Path;
            value = "conversationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations/{conversationId}/conditions_satisfied"
    .end annotation
.end method

.method public abstract sendMetrics(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "metrics"
    .end annotation
.end method

.method public abstract setDeviceToken(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "device_tokens"
    .end annotation
.end method

.method public abstract startNewConversation(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Conversation$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "conversations"
    .end annotation
.end method

.method public abstract submitSheet(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "sheets/submit"
    .end annotation
.end method

.method public abstract updateUser(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/UpdateUserResponse$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "users"
    .end annotation
.end method

.method public abstract uploadFile(Ljava/util/Map;)Lio/intercom/retrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lio/intercom/retrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Upload$Builder;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/retrofit2/http/POST;
        value = "uploads"
    .end annotation
.end method
