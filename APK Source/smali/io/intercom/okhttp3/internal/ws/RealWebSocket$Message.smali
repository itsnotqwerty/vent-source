.class final Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lio/intercom/b/f;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILio/intercom/b/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Message;->data:Lio/intercom/b/f;

    return-void
.end method
