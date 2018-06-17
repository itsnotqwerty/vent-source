.class public interface abstract Lio/intercom/okhttp3/Call;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lio/intercom/okhttp3/Call;
.end method

.method public abstract enqueue(Lio/intercom/okhttp3/Callback;)V
.end method

.method public abstract execute()Lio/intercom/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lio/intercom/okhttp3/Request;
.end method
