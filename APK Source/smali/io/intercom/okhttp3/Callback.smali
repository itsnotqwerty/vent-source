.class public interface abstract Lio/intercom/okhttp3/Callback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
