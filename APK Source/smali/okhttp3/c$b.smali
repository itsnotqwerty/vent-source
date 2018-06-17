.class final Lokhttp3/c$b;
.super Lokhttp3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final cWl:Lokhttp3/internal/a/d$c;

.field private final cWm:Ld/e;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokhttp3/internal/a/d$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lokhttp3/z;-><init>()V

    iput-object p1, p0, Lokhttp3/c$b;->cWl:Lokhttp3/internal/a/d$c;

    iput-object p2, p0, Lokhttp3/c$b;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/c$b;->contentLength:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/internal/a/d$c;->daa:[Ld/s;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lokhttp3/c$b$1;

    invoke-direct {v1, p0, v0, p1}, Lokhttp3/c$b$1;-><init>(Lokhttp3/c$b;Ld/s;Lokhttp3/internal/a/d$c;)V

    invoke-static {v1}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$b;->cWm:Ld/e;

    return-void
.end method


# virtual methods
.method public final LX()Lokhttp3/s;
    .locals 1

    iget-object v0, p0, Lokhttp3/c$b;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$b;->contentType:Ljava/lang/String;

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

    iget-object v0, p0, Lokhttp3/c$b;->cWm:Ld/e;

    return-object v0
.end method

.method public final contentLength()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lokhttp3/c$b;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/c$b;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
