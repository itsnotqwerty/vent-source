.class final Lcom/layer/sdk/internal/lsdkk/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/i$a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final bqq:Ljava/util/Date;

.field private final bsN:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/i$a;->bsN:Ljava/lang/Comparable;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i$a;->bqq:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Comparable;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkk/i$a;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkk/i$a;Ljava/util/Date;J)Z
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/i$a;->bqq:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/i$a;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i$a;->bsN:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkk/i$a;->bsN:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i$a;->bsN:Ljava/lang/Comparable;

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/i$a;

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkk/i$a;->bsN:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/i$a;->bsN:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
