.class public abstract Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lio/intercom/b/d;

.field public final source:Lio/intercom/b/e;


# direct methods
.method public constructor <init>(ZLio/intercom/b/e;Lio/intercom/b/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->source:Lio/intercom/b/e;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lio/intercom/b/d;

    return-void
.end method
