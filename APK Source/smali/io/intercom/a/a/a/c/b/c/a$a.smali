.class final Lio/intercom/a/a/a/c/b/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final cMk:Lio/intercom/a/a/a/c/b/c/a$b;

.field final cMl:Z

.field private cMm:I

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/intercom/a/a/a/c/b/c/a$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/c/a$a;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/c/a$a;->cMk:Lio/intercom/a/a/a/c/b/c/a$b;

    iput-boolean p3, p0, Lio/intercom/a/a/a/c/b/c/a$a;->cMl:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/intercom/a/a/a/c/b/c/a$a$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glide-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/c/a$a;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/c/a$a;->cMm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/intercom/a/a/a/c/b/c/a$a$1;-><init>(Lio/intercom/a/a/a/c/b/c/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget v1, p0, Lio/intercom/a/a/a/c/b/c/a$a;->cMm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/a/a/c/b/c/a$a;->cMm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
