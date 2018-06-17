.class final Lio/intercom/a/a/a/c/d/a/j$c;
.super Lio/intercom/a/a/a/c/d/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lio/intercom/a/a/a/c/d/a/j$c;->cNF:Lio/intercom/a/a/a/c/d/a/j;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/intercom/a/a/a/c/d/a/j;->l(IIII)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
