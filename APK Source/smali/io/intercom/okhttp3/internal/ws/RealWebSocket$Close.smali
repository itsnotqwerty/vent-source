.class final Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lio/intercom/b/f;


# direct methods
.method constructor <init>(ILio/intercom/b/f;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;->code:I

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;->reason:Lio/intercom/b/f;

    iput-wide p3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method
