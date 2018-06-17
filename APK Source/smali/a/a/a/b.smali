.class public abstract La/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/d;)La/a/a/d;
    .locals 1

    invoke-virtual {p1}, La/a/a/d;->FN()La/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/b;->b(La/a/a/d;)La/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(La/a/a/d;La/a/a/d;)V
.end method

.method public abstract b(La/a/a/d;)La/a/a/d;
.end method
