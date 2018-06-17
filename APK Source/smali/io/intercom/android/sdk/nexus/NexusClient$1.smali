.class Lio/intercom/android/sdk/nexus/NexusClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/nexus/NexusClient;->schedulePresence()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/nexus/NexusClient;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/nexus/NexusClient;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusClient$1;->this$0:Lio/intercom/android/sdk/nexus/NexusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient$1;->this$0:Lio/intercom/android/sdk/nexus/NexusClient;

    invoke-static {}, Lio/intercom/android/sdk/nexus/NexusEvent;->getUserPresenceEvent()Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/nexus/NexusClient;->fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient$1;->this$0:Lio/intercom/android/sdk/nexus/NexusClient;

    invoke-static {v0}, Lio/intercom/android/sdk/nexus/NexusClient;->access$100(Lio/intercom/android/sdk/nexus/NexusClient;)V

    return-void
.end method
