.class Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteLockPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->this$0:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method obtain()Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLock;
    .locals 2

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLock;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLock;

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->this$0:Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLock;-><init>(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method offer(Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLock;)V
    .locals 3

    iget-object v1, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/imageloader/LongTermImageDiskCache$DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
