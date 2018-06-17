.class final Lio/intercom/retrofit2/RequestBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private final baseUrl:Lio/intercom/okhttp3/HttpUrl;

.field private body:Lio/intercom/okhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contentType:Lio/intercom/okhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private formBuilder:Lio/intercom/okhttp3/FormBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final requestBuilder:Lio/intercom/okhttp3/Request$Builder;

.field private urlBuilder:Lio/intercom/okhttp3/HttpUrl$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/intercom/retrofit2/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lio/intercom/okhttp3/HttpUrl;Ljava/lang/String;Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/MediaType;ZZZ)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/intercom/okhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/retrofit2/RequestBuilder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iput-object p3, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v0, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->requestBuilder:Lio/intercom/okhttp3/Request$Builder;

    iput-object p5, p0, Lio/intercom/retrofit2/RequestBuilder;->contentType:Lio/intercom/okhttp3/MediaType;

    iput-boolean p6, p0, Lio/intercom/retrofit2/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_0

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->requestBuilder:Lio/intercom/okhttp3/Request$Builder;

    invoke-virtual {v0, p4}, Lio/intercom/okhttp3/Request$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Request$Builder;

    :cond_0
    if-eqz p7, :cond_2

    new-instance v0, Lio/intercom/okhttp3/FormBody$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/FormBody$Builder;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->formBuilder:Lio/intercom/okhttp3/FormBody$Builder;

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p8, :cond_1

    new-instance v0, Lio/intercom/okhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/MultipartBody$Builder;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;

    sget-object v1, Lio/intercom/okhttp3/MultipartBody;->FORM:Lio/intercom/okhttp3/MediaType;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/MultipartBody$Builder;->setType(Lio/intercom/okhttp3/MediaType;)Lio/intercom/okhttp3/MultipartBody$Builder;

    goto :goto_0
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const-string v4, " \"<>^`{}|\\?#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    if-nez p1, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    :cond_0
    new-instance v3, Lio/intercom/b/c;

    invoke-direct {v3}, Lio/intercom/b/c;-><init>()V

    invoke-virtual {v3, p0, v1, v0}, Lio/intercom/b/c;->l(Ljava/lang/String;II)Lio/intercom/b/c;

    invoke-static {v3, p0, v0, v2, p1}, Lio/intercom/retrofit2/RequestBuilder;->canonicalizeForPath(Lio/intercom/b/c;Ljava/lang/String;IIZ)V

    invoke-virtual {v3}, Lio/intercom/b/c;->Ky()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private static canonicalizeForPath(Lio/intercom/b/c;Ljava/lang/String;IIZ)V
    .locals 6

    const/16 v5, 0x25

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    :cond_0
    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    const-string v2, " \"<>^`{}|\\?#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_3

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    if-ne v1, v5, :cond_3

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    :cond_2
    invoke-virtual {v0, v1}, Lio/intercom/b/c;->fu(I)Lio/intercom/b/c;

    :goto_1
    invoke-virtual {v0}, Lio/intercom/b/c;->Kr()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lio/intercom/b/c;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v5}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    sget-object v3, Lio/intercom/retrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    sget-object v3, Lio/intercom/retrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lio/intercom/b/c;->fu(I)Lio/intercom/b/c;

    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method final addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->formBuilder:Lio/intercom/okhttp3/FormBody$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/FormBody$Builder;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->formBuilder:Lio/intercom/okhttp3/FormBody$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/FormBody$Builder;

    goto :goto_0
.end method

.method final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->contentType:Lio/intercom/okhttp3/MediaType;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->requestBuilder:Lio/intercom/okhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    goto :goto_0
.end method

.method final addPart(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/RequestBody;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/MultipartBody$Builder;->addPart(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Builder;

    return-void
.end method

.method final addPart(Lio/intercom/okhttp3/MultipartBody$Part;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/MultipartBody$Builder;->addPart(Lio/intercom/okhttp3/MultipartBody$Part;)Lio/intercom/okhttp3/MultipartBody$Builder;

    return-void
.end method

.method final addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lio/intercom/retrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method

.method final addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iget-object v1, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->urlBuilder:Lio/intercom/okhttp3/HttpUrl$Builder;

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->urlBuilder:Lio/intercom/okhttp3/HttpUrl$Builder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->urlBuilder:Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->urlBuilder:Lio/intercom/okhttp3/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl$Builder;

    goto :goto_0
.end method

.method final build()Lio/intercom/okhttp3/Request;
    .locals 5

    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->urlBuilder:Lio/intercom/okhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl$Builder;->build()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lio/intercom/retrofit2/RequestBuilder;->body:Lio/intercom/okhttp3/RequestBody;

    if-nez v1, :cond_1

    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->formBuilder:Lio/intercom/okhttp3/FormBody$Builder;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lio/intercom/retrofit2/RequestBuilder;->formBuilder:Lio/intercom/okhttp3/FormBody$Builder;

    invoke-virtual {v1}, Lio/intercom/okhttp3/FormBody$Builder;->build()Lio/intercom/okhttp3/FormBody;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v3, p0, Lio/intercom/retrofit2/RequestBuilder;->contentType:Lio/intercom/okhttp3/MediaType;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_6

    new-instance v2, Lio/intercom/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v2, v1, v3}, Lio/intercom/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lio/intercom/okhttp3/RequestBody;Lio/intercom/okhttp3/MediaType;)V

    move-object v1, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->requestBuilder:Lio/intercom/okhttp3/Request$Builder;

    invoke-virtual {v2, v0}, Lio/intercom/okhttp3/Request$Builder;->url(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iget-object v1, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lio/intercom/retrofit2/RequestBuilder;->multipartBuilder:Lio/intercom/okhttp3/MultipartBody$Builder;

    invoke-virtual {v1}, Lio/intercom/okhttp3/MultipartBody$Builder;->build()Lio/intercom/okhttp3/MultipartBody;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lio/intercom/retrofit2/RequestBuilder;->hasBody:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lio/intercom/okhttp3/RequestBody;->create(Lio/intercom/okhttp3/MediaType;[B)Lio/intercom/okhttp3/RequestBody;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lio/intercom/retrofit2/RequestBuilder;->requestBuilder:Lio/intercom/okhttp3/Request$Builder;

    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lio/intercom/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lio/intercom/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    goto :goto_1
.end method

.method final setBody(Lio/intercom/okhttp3/RequestBody;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/retrofit2/RequestBuilder;->body:Lio/intercom/okhttp3/RequestBody;

    return-void
.end method

.method final setRelativeUrl(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
