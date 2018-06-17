.class final Lcom/vent/ActChat$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/messaging/Identity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field avatar:Ljava/lang/String;

.field final bUo:Lcom/layer/sdk/messaging/Identity;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layer/sdk/messaging/Identity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    return-void
.end method


# virtual methods
.method public final follow()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->follow()V

    return-void
.end method

.method public final getAvatarImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getId()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastSeenAt()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getLastSeenAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lcom/layer/sdk/messaging/Metadata;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPresenceStatus()Lcom/layer/sdk/messaging/Presence$PresenceStatus;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getPresenceStatus()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isFollowed()Z
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->isFollowed()Z

    move-result v0

    return v0
.end method

.method public final unFollow()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActChat$a;->bUo:Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->unFollow()V

    return-void
.end method
