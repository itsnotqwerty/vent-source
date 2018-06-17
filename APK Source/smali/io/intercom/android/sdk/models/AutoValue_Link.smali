.class final Lio/intercom/android/sdk/models/AutoValue_Link;
.super Lio/intercom/android/sdk/models/Link;


# instance fields
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

.field private final card:Lio/intercom/android/sdk/models/Card;

.field private final createdAt:J

.field private final id:Ljava/lang/String;

.field private final reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

.field private final updatedAt:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/intercom/android/sdk/models/Card;Ljava/util/List;Lio/intercom/android/sdk/models/ReactionReply;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/models/Card;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;",
            "Lio/intercom/android/sdk/models/ReactionReply;",
            "JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/models/Link;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->id:Ljava/lang/String;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null card"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->card:Lio/intercom/android/sdk/models/Card;

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null blocks"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->blocks:Ljava/util/List;

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null reactionReply"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p4, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    iput-wide p5, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->createdAt:J

    iput-wide p7, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->updatedAt:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lio/intercom/android/sdk/models/Link;

    if-eqz v2, :cond_3

    check-cast p1, Lio/intercom/android/sdk/models/Link;

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->card:Lio/intercom/android/sdk/models/Card;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getCard()Lio/intercom/android/sdk/models/Card;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->blocks:Ljava/util/List;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/intercom/android/sdk/models/ReactionReply;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->createdAt:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getCreatedAt()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->updatedAt:J

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Link;->getUpdatedAt()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getBlocks()Ljava/util/List;
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

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public final getCard()Lio/intercom/android/sdk/models/Card;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->card:Lio/intercom/android/sdk/models/Card;

    return-object v0
.end method

.method public final getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->createdAt:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    return-object v0
.end method

.method public final getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->updatedAt:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v7, 0x20

    const v6, 0xf4243

    iget-object v0, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v6

    mul-int/2addr v0, v6

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->card:Lio/intercom/android/sdk/models/Card;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v6

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v6

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/ReactionReply;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->createdAt:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->createdAt:J

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    mul-int/2addr v0, v6

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->updatedAt:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->updatedAt:J

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Link{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->card:Lio/intercom/android/sdk/models/Card;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blocks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->blocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reactionReply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->reactionReply:Lio/intercom/android/sdk/models/ReactionReply;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/models/AutoValue_Link;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
