.class public abstract Lio/intercom/android/sdk/models/Link;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/Link$Builder;
    }
.end annotation


# static fields
.field public static final ARTICLE_TYPE:Ljava/lang/String; = "educate.article"

.field public static final HELP_CENTER_TYPE:Ljava/lang/String; = "educate.help_center"

.field public static final SUGGESTION_TYPE:Ljava/lang/String; = "educate.suggestion"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lio/intercom/android/sdk/blocks/models/Author;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Link;->getCard()Lio/intercom/android/sdk/models/Card;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card;->getAuthor()Lio/intercom/android/sdk/blocks/models/Author;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBlocks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCard()Lio/intercom/android/sdk/models/Card;
.end method

.method public abstract getCreatedAt()J
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Link;->getCard()Lio/intercom/android/sdk/models/Card;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Link;->getCard()Lio/intercom/android/sdk/models/Card;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Link;->getCard()Lio/intercom/android/sdk/models/Card;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Link;->getCard()Lio/intercom/android/sdk/models/Card;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUpdatedAt()J
.end method
