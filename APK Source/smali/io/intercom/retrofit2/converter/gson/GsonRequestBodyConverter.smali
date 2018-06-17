.class final Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;
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
        "<TT;",
        "Lio/intercom/okhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lio/intercom/okhttp3/MediaType;

.field private static final UTF_8:Ljava/nio/charset/Charset;


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
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lio/intercom/okhttp3/MediaType;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

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

    iput-object p1, p0, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lio/intercom/a/b/a/e;

    iput-object p2, p0, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lio/intercom/a/b/a/r;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Lio/intercom/okhttp3/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/intercom/okhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Lio/intercom/b/c$1;

    invoke-direct {v2, v0}, Lio/intercom/b/c$1;-><init>(Lio/intercom/b/c;)V

    sget-object v3, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v2, p0, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lio/intercom/a/b/a/e;

    invoke-virtual {v2, v1}, Lio/intercom/a/b/a/e;->b(Ljava/io/Writer;)Lio/intercom/a/b/a/d/c;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lio/intercom/a/b/a/r;

    invoke-virtual {v2, v1, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lio/intercom/a/b/a/d/c;->close()V

    sget-object v1, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lio/intercom/okhttp3/MediaType;

    invoke-virtual {v0}, Lio/intercom/b/c;->readByteString()Lio/intercom/b/f;

    move-result-object v0

    invoke-static {v1, v0}, Lio/intercom/okhttp3/RequestBody;->create(Lio/intercom/okhttp3/MediaType;Lio/intercom/b/f;)Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
