.class public abstract Lcom/layer/sdk/messaging/MessagePart;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/messaging/LayerObject;
.implements Lcom/layer/sdk/query/Queryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/messaging/MessagePart$Property;,
        Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteLocalContent()V
.end method

.method public abstract download(Lcom/layer/sdk/listeners/LayerProgressListener;)V
.end method

.method public abstract getData()[B
.end method

.method public abstract getDataStream()Ljava/io/InputStream;
.end method

.method public abstract getId()Landroid/net/Uri;
.end method

.method public abstract getMessage()Lcom/layer/sdk/messaging/Message;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
.end method

.method public abstract isContentReady()Z
.end method
