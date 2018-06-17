.class final Lio/intercom/b/t$1;
.super Lio/intercom/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final deadlineNanoTime(J)Lio/intercom/b/t;
    .locals 0

    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;
    .locals 0

    return-object p0
.end method
