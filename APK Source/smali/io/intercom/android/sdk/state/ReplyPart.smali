.class public Lio/intercom/android/sdk/state/ReplyPart;
.super Ljava/lang/Object;


# instance fields
.field private final conversationId:Ljava/lang/String;

.field private final part:Lio/intercom/android/sdk/models/Part;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/models/Part;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/state/ReplyPart;->part:Lio/intercom/android/sdk/models/Part;

    iput-object p2, p0, Lio/intercom/android/sdk/state/ReplyPart;->conversationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/ReplyPart;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Lio/intercom/android/sdk/models/Part;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/state/ReplyPart;->part:Lio/intercom/android/sdk/models/Part;

    return-object v0
.end method
