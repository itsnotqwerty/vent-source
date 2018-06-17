.class final Lio/intercom/a/a/a/c/d/a/j$a;
.super Lio/intercom/a/a/a/c/d/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final IY()I
    .locals 1

    sget v0, Lio/intercom/a/a/a/c/d/a/j$g;->cNN:I

    return v0
.end method

.method public final l(IIII)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    div-int v1, p2, p4

    div-int v2, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
