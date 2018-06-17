.class public final Lokhttp3/internal/b/b;
.super Ljava/lang/Object;


# instance fields
.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation
.end field

.field isFallback:Z

.field isFallbackPossible:Z

.field nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/b/b;->nextModeIndex:I

    iput-object p1, p0, Lokhttp3/internal/b/b;->connectionSpecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/b/b;->nextModeIndex:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/b/b;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/b/b;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/i;

    invoke-virtual {v0, p1}, Lokhttp3/i;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
