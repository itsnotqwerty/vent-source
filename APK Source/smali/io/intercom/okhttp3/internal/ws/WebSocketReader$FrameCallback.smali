.class public interface abstract Lio/intercom/okhttp3/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onReadClose(ILjava/lang/String;)V
.end method

.method public abstract onReadMessage(Lio/intercom/b/f;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onReadMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onReadPing(Lio/intercom/b/f;)V
.end method

.method public abstract onReadPong(Lio/intercom/b/f;)V
.end method
