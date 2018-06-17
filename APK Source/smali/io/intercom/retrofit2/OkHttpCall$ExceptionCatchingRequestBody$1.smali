.class Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;
.super Lio/intercom/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->source()Lio/intercom/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lio/intercom/b/s;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->this$0:Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {p0, p2}, Lio/intercom/b/h;-><init>(Lio/intercom/b/s;)V

    return-void
.end method


# virtual methods
.method public read(Lio/intercom/b/c;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/intercom/b/h;->read(Lio/intercom/b/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->this$0:Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    iput-object v0, v1, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    throw v0
.end method
