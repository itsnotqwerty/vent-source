.class public final Lokhttp3/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field immutable:Z

.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field public noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lokhttp3/d$a;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/d$a;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/d$a;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public final LZ()Lokhttp3/d;
    .locals 1

    new-instance v0, Lokhttp3/d;

    invoke-direct {v0, p0}, Lokhttp3/d;-><init>(Lokhttp3/d$a;)V

    return-object v0
.end method
