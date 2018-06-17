.class final Lokhttp3/z$1;
.super Lokhttp3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cZs:Lokhttp3/s;

.field final synthetic cZy:Ld/e;

.field final synthetic val$contentLength:J


# direct methods
.method constructor <init>(JLd/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/z$1;->cZs:Lokhttp3/s;

    iput-wide p1, p0, Lokhttp3/z$1;->val$contentLength:J

    iput-object p3, p0, Lokhttp3/z$1;->cZy:Ld/e;

    invoke-direct {p0}, Lokhttp3/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final LX()Lokhttp3/s;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/z$1;->cZs:Lokhttp3/s;

    return-object v0
.end method

.method public final LY()Ld/e;
    .locals 1

    iget-object v0, p0, Lokhttp3/z$1;->cZy:Ld/e;

    return-object v0
.end method

.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/z$1;->val$contentLength:J

    return-wide v0
.end method
