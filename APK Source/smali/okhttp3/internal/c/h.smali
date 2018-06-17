.class public final Lokhttp3/internal/c/h;
.super Lokhttp3/z;


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final dad:Ld/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLd/e;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lokhttp3/z;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/c/h;->contentTypeString:Ljava/lang/String;

    iput-wide p2, p0, Lokhttp3/internal/c/h;->contentLength:J

    iput-object p4, p0, Lokhttp3/internal/c/h;->dad:Ld/e;

    return-void
.end method


# virtual methods
.method public final LX()Lokhttp3/s;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/c/h;->contentTypeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/c/h;->contentTypeString:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/s;->fw(Ljava/lang/String;)Lokhttp3/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final LY()Ld/e;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/c/h;->dad:Ld/e;

    return-object v0
.end method

.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/c/h;->contentLength:J

    return-wide v0
.end method
