.class public final Lio/intercom/okhttp3/MultipartBody;
.super Lio/intercom/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/MultipartBody$Builder;,
        Lio/intercom/okhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lio/intercom/okhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lio/intercom/okhttp3/MediaType;

.field public static final FORM:Lio/intercom/okhttp3/MediaType;

.field public static final MIXED:Lio/intercom/okhttp3/MediaType;

.field public static final PARALLEL:Lio/intercom/okhttp3/MediaType;


# instance fields
.field private final boundary:Lio/intercom/b/f;

.field private contentLength:J

.field private final contentType:Lio/intercom/okhttp3/MediaType;

.field private final originalType:Lio/intercom/okhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->MIXED:Lio/intercom/okhttp3/MediaType;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->ALTERNATIVE:Lio/intercom/okhttp3/MediaType;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->DIGEST:Lio/intercom/okhttp3/MediaType;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->PARALLEL:Lio/intercom/okhttp3/MediaType;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->FORM:Lio/intercom/okhttp3/MediaType;

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->COLONSPACE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lio/intercom/okhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lio/intercom/b/f;Lio/intercom/okhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/b/f;",
            "Lio/intercom/okhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/okhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/intercom/okhttp3/MultipartBody;->contentLength:J

    iput-object p1, p0, Lio/intercom/okhttp3/MultipartBody;->boundary:Lio/intercom/b/f;

    iput-object p2, p0, Lio/intercom/okhttp3/MultipartBody;->originalType:Lio/intercom/okhttp3/MediaType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->contentType:Lio/intercom/okhttp3/MediaType;

    invoke-static {p3}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "%0A"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v2, "%0D"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lio/intercom/b/d;Z)J
    .locals 12
    .param p1    # Lio/intercom/b/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    move-object v1, v0

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/MultipartBody$Part;

    iget-object v6, v0, Lio/intercom/okhttp3/MultipartBody$Part;->headers:Lio/intercom/okhttp3/Headers;

    iget-object v7, v0, Lio/intercom/okhttp3/MultipartBody$Part;->body:Lio/intercom/okhttp3/RequestBody;

    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->boundary:Lio/intercom/b/f;

    invoke-interface {p1, v0}, Lio/intercom/b/d;->c(Lio/intercom/b/f;)Lio/intercom/b/d;

    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6}, Lio/intercom/okhttp3/Headers;->size()I

    move-result v8

    :goto_2
    if-ge v0, v8, :cond_0

    invoke-virtual {v6, v0}, Lio/intercom/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v9

    sget-object v10, Lio/intercom/okhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v9, v10}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    move-result-object v9

    invoke-virtual {v6, v0}, Lio/intercom/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v9

    sget-object v10, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v9, v10}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Lio/intercom/okhttp3/RequestBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v6, "Content-Type: "

    invoke-interface {p1, v6}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v6

    invoke-virtual {v0}, Lio/intercom/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    sget-object v6, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v6}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    :cond_1
    invoke-virtual {v7}, Lio/intercom/okhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    const-string v0, "Content-Length: "

    invoke-interface {p1, v0}, Lio/intercom/b/d;->fg(Ljava/lang/String;)Lio/intercom/b/d;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lio/intercom/b/d;->am(J)Lio/intercom/b/d;

    move-result-object v0

    sget-object v6, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v6}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    :cond_2
    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    if-eqz p2, :cond_5

    add-long/2addr v2, v8

    :goto_3
    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lio/intercom/b/c;->clear()V

    const-wide/16 v2, -0x1

    :cond_4
    :goto_4
    return-wide v2

    :cond_5
    invoke-virtual {v7, p1}, Lio/intercom/okhttp3/RequestBody;->writeTo(Lio/intercom/b/d;)V

    goto :goto_3

    :cond_6
    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->boundary:Lio/intercom/b/f;

    invoke-interface {p1, v0}, Lio/intercom/b/d;->c(Lio/intercom/b/f;)Lio/intercom/b/d;

    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lio/intercom/b/d;->G([B)Lio/intercom/b/d;

    if-eqz p2, :cond_4

    iget-wide v4, v1, Lio/intercom/b/c;->size:J

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lio/intercom/b/c;->clear()V

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->boundary:Lio/intercom/b/f;

    invoke-virtual {v0}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lio/intercom/okhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/intercom/okhttp3/MultipartBody;->writeOrCountBytes(Lio/intercom/b/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/okhttp3/MultipartBody;->contentLength:J

    goto :goto_0
.end method

.method public final contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->contentType:Lio/intercom/okhttp3/MediaType;

    return-object v0
.end method

.method public final part(I)Lio/intercom/okhttp3/MultipartBody$Part;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public final parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final type()Lio/intercom/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody;->originalType:Lio/intercom/okhttp3/MediaType;

    return-object v0
.end method

.method public final writeTo(Lio/intercom/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/okhttp3/MultipartBody;->writeOrCountBytes(Lio/intercom/b/d;Z)J

    return-void
.end method
