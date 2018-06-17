.class Lio/intercom/android/sdk/conversation/SoundPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/SoundPlayer;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;Landroid/media/SoundPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/SoundPlayer;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2

    const/4 v1, 0x1

    if-nez p3, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iget v0, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->messageReceivedId:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iput-boolean v1, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->messageReceivedLoaded:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iget v0, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyFailedId:I

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iput-boolean v1, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyFailedLoaded:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iget v0, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replySentId:I

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iput-boolean v1, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replySentLoaded:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iget v0, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyDeliveredId:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/SoundPlayer$1;->this$0:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iput-boolean v1, v0, Lio/intercom/android/sdk/conversation/SoundPlayer;->replyDeliveredLoaded:Z

    goto :goto_0
.end method
