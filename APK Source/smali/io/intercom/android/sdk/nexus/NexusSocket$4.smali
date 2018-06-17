.class final Lio/intercom/android/sdk/nexus/NexusSocket$4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/WebSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/nexus/NexusSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final close(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final queueSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final request()Lio/intercom/okhttp3/Request;
    .locals 2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ClosedSocket has no request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final send(Lio/intercom/b/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final send(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
