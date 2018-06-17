.class public final Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field emoji:Ljava/lang/String;

.field index:Ljava/lang/Integer;

.field unicode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;-><init>(Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$1;)V

    return-object v0
.end method

.method public final withEmoji(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;->emoji:Ljava/lang/String;

    return-object p0
.end method

.method public final withIndex(Ljava/lang/Integer;)Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;->index:Ljava/lang/Integer;

    return-object p0
.end method

.method public final withUnicode(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption$Builder;->unicode:Ljava/lang/String;

    return-object p0
.end method
