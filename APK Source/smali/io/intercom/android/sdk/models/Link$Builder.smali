.class public final Lio/intercom/android/sdk/models/Link$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;"
        }
    .end annotation
.end field

.field card:Lio/intercom/android/sdk/models/Card$Builder;

.field created_at:J

.field id:Ljava/lang/String;

.field reactions_reply:Lio/intercom/android/sdk/models/ReactionReply$Builder;

.field updated_at:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/Link;
    .locals 10

    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->id:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->blocks:Ljava/util/List;

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/CollectionUtils;->capacityFor(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->blocks:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->build()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/intercom/android/sdk/models/Link$Builder;->id:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->reactions_reply:Lio/intercom/android/sdk/models/ReactionReply$Builder;

    if-nez v0, :cond_3

    sget-object v5, Lio/intercom/android/sdk/models/ReactionReply;->NULL:Lio/intercom/android/sdk/models/ReactionReply;

    :goto_2
    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->card:Lio/intercom/android/sdk/models/Card$Builder;

    if-nez v0, :cond_4

    new-instance v0, Lio/intercom/android/sdk/models/Card$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Card$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card$Builder;->build()Lio/intercom/android/sdk/models/Card;

    move-result-object v3

    :goto_3
    new-instance v1, Lio/intercom/android/sdk/models/AutoValue_Link;

    iget-wide v6, p0, Lio/intercom/android/sdk/models/Link$Builder;->created_at:J

    iget-wide v8, p0, Lio/intercom/android/sdk/models/Link$Builder;->updated_at:J

    invoke-direct/range {v1 .. v9}, Lio/intercom/android/sdk/models/AutoValue_Link;-><init>(Ljava/lang/String;Lio/intercom/android/sdk/models/Card;Ljava/util/List;Lio/intercom/android/sdk/models/ReactionReply;JJ)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->reactions_reply:Lio/intercom/android/sdk/models/ReactionReply$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/ReactionReply$Builder;->build()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/models/Link$Builder;->card:Lio/intercom/android/sdk/models/Card$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Card$Builder;->build()Lio/intercom/android/sdk/models/Card;

    move-result-object v3

    goto :goto_3
.end method
