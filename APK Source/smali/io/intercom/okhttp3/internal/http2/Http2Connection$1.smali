.class Lio/intercom/okhttp3/internal/http2/Http2Connection$1;
.super Lio/intercom/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iput-object p5, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lio/intercom/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;->val$streamId:I

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;->val$errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
