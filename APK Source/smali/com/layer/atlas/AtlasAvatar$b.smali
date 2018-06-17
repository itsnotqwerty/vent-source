.class final Lcom/layer/atlas/AtlasAvatar$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/a/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/AtlasAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final bmQ:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final CM:J

.field private final bmR:Lcom/layer/atlas/AtlasAvatar;

.field bmS:Ljava/lang/String;

.field bmT:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/layer/atlas/AtlasAvatar$b;->bmQ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/layer/atlas/AtlasAvatar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/layer/atlas/AtlasAvatar$b;->bmQ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/atlas/AtlasAvatar$b;->CM:J

    iput-object p1, p0, Lcom/layer/atlas/AtlasAvatar$b;->bmR:Lcom/layer/atlas/AtlasAvatar;

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar$b;->bmR:Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasAvatar;->invalidate()V

    iput-object p1, p0, Lcom/layer/atlas/AtlasAvatar$b;->bmT:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/atlas/AtlasAvatar$b;

    iget-wide v2, p0, Lcom/layer/atlas/AtlasAvatar$b;->CM:J

    iget-wide v4, p1, Lcom/layer/atlas/AtlasAvatar$b;->CM:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/layer/atlas/AtlasAvatar$b;->CM:J

    iget-wide v2, p0, Lcom/layer/atlas/AtlasAvatar$b;->CM:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final wc()V
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/AtlasAvatar$b;->bmR:Lcom/layer/atlas/AtlasAvatar;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasAvatar;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar$b;->bmT:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final wd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/atlas/AtlasAvatar$b;->bmT:Landroid/graphics/Bitmap;

    return-void
.end method
