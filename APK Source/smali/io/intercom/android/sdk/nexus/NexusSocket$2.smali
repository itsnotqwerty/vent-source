.class Lio/intercom/android/sdk/nexus/NexusSocket$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/nexus/NexusSocket;->scheduleReconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/nexus/NexusSocket;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/nexus/NexusSocket;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusSocket$2;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$2;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusSocket;->connect()V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusSocket$2;->this$0:Lio/intercom/android/sdk/nexus/NexusSocket;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/intercom/android/sdk/nexus/NexusSocket;->access$102(Lio/intercom/android/sdk/nexus/NexusSocket;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
