.class Lio/intercom/okhttp3/internal/cache/DiskLruCache$2;
.super Lio/intercom/okhttp3/internal/cache/FaultHidingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lio/intercom/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache;Lio/intercom/b/r;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;-><init>(Lio/intercom/b/r;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2

    sget-boolean v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/DiskLruCache$2;->this$0:Lio/intercom/okhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method
