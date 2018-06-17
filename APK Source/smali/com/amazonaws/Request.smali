.class public interface abstract Lcom/amazonaws/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract L(Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/amazonaws/http/HttpMethodName;)V
.end method

.method public abstract a(Lcom/amazonaws/util/AWSRequestMetrics;)V
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/net/URI;)V
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cl(I)V
.end method

.method public abstract d(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract jq()Lcom/amazonaws/AmazonWebServiceRequest;
.end method

.method public abstract jr()Ljava/lang/String;
.end method

.method public abstract js()Lcom/amazonaws/http/HttpMethodName;
.end method

.method public abstract jt()Ljava/net/URI;
.end method

.method public abstract ju()I
.end method

.method public abstract setContent(Ljava/io/InputStream;)V
.end method
