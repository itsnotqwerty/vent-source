.class public final Lio/intercom/okhttp3/internal/http2/Header;
.super Ljava/lang/Object;


# static fields
.field public static final PSEUDO_PREFIX:Lio/intercom/b/f;

.field public static final RESPONSE_STATUS:Lio/intercom/b/f;

.field public static final TARGET_AUTHORITY:Lio/intercom/b/f;

.field public static final TARGET_METHOD:Lio/intercom/b/f;

.field public static final TARGET_PATH:Lio/intercom/b/f;

.field public static final TARGET_SCHEME:Lio/intercom/b/f;


# instance fields
.field final hpackSize:I

.field public final name:Lio/intercom/b/f;

.field public final value:Lio/intercom/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lio/intercom/b/f;

    const-string v0, ":status"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lio/intercom/b/f;

    const-string v0, ":method"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_METHOD:Lio/intercom/b/f;

    const-string v0, ":path"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_PATH:Lio/intercom/b/f;

    const-string v0, ":scheme"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lio/intercom/b/f;

    const-string v0, ":authority"

    invoke-static {v0}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lio/intercom/b/f;

    return-void
.end method

.method public constructor <init>(Lio/intercom/b/f;Lio/intercom/b/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Header;->name:Lio/intercom/b/f;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/http2/Header;->value:Lio/intercom/b/f;

    invoke-virtual {p1}, Lio/intercom/b/f;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lio/intercom/b/f;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/okhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Lio/intercom/b/f;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Lio/intercom/b/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    invoke-static {p2}, Lio/intercom/b/f;->fh(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/intercom/okhttp3/internal/http2/Header;-><init>(Lio/intercom/b/f;Lio/intercom/b/f;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/okhttp3/internal/http2/Header;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/okhttp3/internal/http2/Header;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Header;->name:Lio/intercom/b/f;

    iget-object v2, p1, Lio/intercom/okhttp3/internal/http2/Header;->name:Lio/intercom/b/f;

    invoke-virtual {v1, v2}, Lio/intercom/b/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Header;->value:Lio/intercom/b/f;

    iget-object v2, p1, Lio/intercom/okhttp3/internal/http2/Header;->value:Lio/intercom/b/f;

    invoke-virtual {v1, v2}, Lio/intercom/b/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Header;->name:Lio/intercom/b/f;

    invoke-virtual {v0}, Lio/intercom/b/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Header;->value:Lio/intercom/b/f;

    invoke-virtual {v1}, Lio/intercom/b/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http2/Header;->name:Lio/intercom/b/f;

    invoke-virtual {v3}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http2/Header;->value:Lio/intercom/b/f;

    invoke-virtual {v3}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/intercom/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
