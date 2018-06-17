.class public final Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lio/intercom/b/s;

.field final synthetic this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lio/intercom/b/s;[J)V
    .locals 1

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iput-wide p3, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    iput-object p5, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lio/intercom/b/s;

    iput-object p6, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method

.method static synthetic access$000(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lio/intercom/b/s;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final edit()Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lio/intercom/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final getLength(I)J
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getSource(I)Lio/intercom/b/s;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Lio/intercom/b/s;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method
