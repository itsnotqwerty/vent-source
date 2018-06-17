.class public final Lokhttp3/internal/a/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic cZW:Lokhttp3/internal/a/d;

.field public final daa:[Ld/s;

.field public final key:Ljava/lang/String;

.field private final lengths:[J

.field public final sequenceNumber:J


# direct methods
.method constructor <init>(Lokhttp3/internal/a/d;Ljava/lang/String;J[Ld/s;[J)V
    .locals 1

    iput-object p1, p0, Lokhttp3/internal/a/d$c;->cZW:Lokhttp3/internal/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/a/d$c;->key:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/internal/a/d$c;->sequenceNumber:J

    iput-object p5, p0, Lokhttp3/internal/a/d$c;->daa:[Ld/s;

    iput-object p6, p0, Lokhttp3/internal/a/d$c;->lengths:[J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v1, p0, Lokhttp3/internal/a/d$c;->daa:[Ld/s;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
