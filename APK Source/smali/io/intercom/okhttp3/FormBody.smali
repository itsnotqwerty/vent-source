.class public final Lio/intercom/okhttp3/FormBody;
.super Lio/intercom/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/FormBody$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Lio/intercom/okhttp3/MediaType;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/FormBody;->CONTENT_TYPE:Lio/intercom/okhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/okhttp3/RequestBody;-><init>()V

    invoke-static {p1}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-static {p2}, Lio/intercom/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    return-void
.end method

.method private writeOrCountBytes(Lio/intercom/b/d;Z)J
    .locals 6
    .param p1    # Lio/intercom/b/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_2

    if-lez v4, :cond_0

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/intercom/b/c;->ff(Ljava/lang/String;)Lio/intercom/b/c;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Lio/intercom/b/c;->fv(I)Lio/intercom/b/c;

    iget-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/intercom/b/c;->ff(Ljava/lang/String;)Lio/intercom/b/c;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lio/intercom/b/d;->Kp()Lio/intercom/b/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-wide v2, v1, Lio/intercom/b/c;->size:J

    invoke-virtual {v1}, Lio/intercom/b/c;->clear()V

    :cond_3
    move-wide v0, v2

    return-wide v0
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/intercom/okhttp3/FormBody;->writeOrCountBytes(Lio/intercom/b/d;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1

    sget-object v0, Lio/intercom/okhttp3/FormBody;->CONTENT_TYPE:Lio/intercom/okhttp3/MediaType;

    return-object v0
.end method

.method public final encodedName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final encodedValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final name(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lio/intercom/okhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final value(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lio/intercom/okhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/intercom/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

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

    invoke-direct {p0, p1, v0}, Lio/intercom/okhttp3/FormBody;->writeOrCountBytes(Lio/intercom/b/d;Z)J

    return-void
.end method
