.class final Lio/intercom/okhttp3/RequestBody$1;
.super Lio/intercom/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/RequestBody;->create(Lio/intercom/okhttp3/MediaType;Lio/intercom/b/f;)Lio/intercom/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lio/intercom/b/f;

.field final synthetic val$contentType:Lio/intercom/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/MediaType;Lio/intercom/b/f;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/RequestBody$1;->val$contentType:Lio/intercom/okhttp3/MediaType;

    iput-object p2, p0, Lio/intercom/okhttp3/RequestBody$1;->val$content:Lio/intercom/b/f;

    invoke-direct {p0}, Lio/intercom/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/RequestBody$1;->val$content:Lio/intercom/b/f;

    invoke-virtual {v0}, Lio/intercom/b/f;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/RequestBody$1;->val$contentType:Lio/intercom/okhttp3/MediaType;

    return-object v0
.end method

.method public final writeTo(Lio/intercom/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/RequestBody$1;->val$content:Lio/intercom/b/f;

    invoke-interface {p1, v0}, Lio/intercom/b/d;->c(Lio/intercom/b/f;)Lio/intercom/b/d;

    return-void
.end method
