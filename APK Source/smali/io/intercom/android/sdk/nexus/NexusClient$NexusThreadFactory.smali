.class Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/nexus/NexusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NexusThreadFactory"
.end annotation


# instance fields
.field private final defaultFactory:Ljava/util/concurrent/ThreadFactory;

.field private threadCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;->threadCount:I

    return-void
.end method

.method synthetic constructor <init>(Lio/intercom/android/sdk/nexus/NexusClient$1;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;->defaultFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;->threadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;->threadCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntercomNexus-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/android/sdk/nexus/NexusClient$NexusThreadFactory;->threadCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
