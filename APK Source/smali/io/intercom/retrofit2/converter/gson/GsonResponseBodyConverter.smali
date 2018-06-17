.class final Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/Converter",
        "<",
        "Lio/intercom/okhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lio/intercom/a/b/a/e;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/r",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lio/intercom/a/b/a/e;

    iput-object p2, p0, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lio/intercom/a/b/a/r;

    return-void
.end method


# virtual methods
.method public final convert(Lio/intercom/okhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;->gson:Lio/intercom/a/b/a/e;

    invoke-virtual {p1}, Lio/intercom/okhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/e;->a(Ljava/io/Reader;)Lio/intercom/a/b/a/d/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;->adapter:Lio/intercom/a/b/a/r;

    invoke-virtual {v1, v0}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lio/intercom/okhttp3/ResponseBody;->close()V

    throw v0
.end method

.method public final bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;->convert(Lio/intercom/okhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
