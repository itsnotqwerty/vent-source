.class public final Lio/intercom/okhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lio/intercom/b/f;

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

.field private type:Lio/intercom/okhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/intercom/okhttp3/MultipartBody;->MIXED:Lio/intercom/okhttp3/MediaType;

    iput-object v0, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->type:Lio/intercom/okhttp3/MediaType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-static {p1}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->boundary:Lio/intercom/b/f;

    return-void
.end method


# virtual methods
.method public final addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/MultipartBody$Builder;
    .locals 1

    invoke-static {p1, p2}, Lio/intercom/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/MultipartBody$Builder;->addPart(Lio/intercom/okhttp3/MultipartBody$Part;)Lio/intercom/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Builder;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lio/intercom/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/MultipartBody$Builder;->addPart(Lio/intercom/okhttp3/MultipartBody$Part;)Lio/intercom/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final addPart(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Builder;
    .locals 1
    .param p1    # Lio/intercom/okhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/intercom/okhttp3/MultipartBody$Part;->create(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/MultipartBody$Builder;->addPart(Lio/intercom/okhttp3/MultipartBody$Part;)Lio/intercom/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final addPart(Lio/intercom/okhttp3/MultipartBody$Part;)Lio/intercom/okhttp3/MultipartBody$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "part == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addPart(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Builder;
    .locals 1

    invoke-static {p1}, Lio/intercom/okhttp3/MultipartBody$Part;->create(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/MultipartBody$Builder;->addPart(Lio/intercom/okhttp3/MultipartBody$Part;)Lio/intercom/okhttp3/MultipartBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/intercom/okhttp3/MultipartBody;
    .locals 4

    iget-object v0, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/MultipartBody;

    iget-object v1, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->boundary:Lio/intercom/b/f;

    iget-object v2, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->type:Lio/intercom/okhttp3/MediaType;

    iget-object v3, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/okhttp3/MultipartBody;-><init>(Lio/intercom/b/f;Lio/intercom/okhttp3/MediaType;Ljava/util/List;)V

    return-object v0
.end method

.method public final setType(Lio/intercom/okhttp3/MediaType;)Lio/intercom/okhttp3/MultipartBody$Builder;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lio/intercom/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multipart != "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/intercom/okhttp3/MultipartBody$Builder;->type:Lio/intercom/okhttp3/MediaType;

    return-object p0
.end method
