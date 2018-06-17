.class public interface abstract Lcom/layer/sdk/messaging/Identity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/messaging/LayerObject;
.implements Lcom/layer/sdk/query/Queryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/messaging/Identity$Property;
    }
.end annotation


# virtual methods
.method public abstract follow()V
.end method

.method public abstract getAvatarImageUrl()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEmailAddress()Ljava/lang/String;
.end method

.method public abstract getFirstName()Ljava/lang/String;
.end method

.method public abstract getId()Landroid/net/Uri;
.end method

.method public abstract getLastName()Ljava/lang/String;
.end method

.method public abstract getLastSeenAt()Ljava/util/Date;
.end method

.method public abstract getMetadata()Lcom/layer/sdk/messaging/Metadata;
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPresenceStatus()Lcom/layer/sdk/messaging/Presence$PresenceStatus;
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract isFollowed()Z
.end method

.method public abstract unFollow()V
.end method
