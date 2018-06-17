.class final Lio/intercom/a/a/a/c/d/a/j$e;
.super Lio/intercom/a/a/a/c/d/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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

    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
