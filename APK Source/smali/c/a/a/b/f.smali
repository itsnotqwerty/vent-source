.class public final Lc/a/a/b/f;
.super Ljava/lang/Object;


# instance fields
.field public final b:I

.field public final cVH:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lc/a/a/b/f;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lc/a/a/b/f;->cVH:B

    iput p2, p0, Lc/a/a/b/f;->b:I

    return-void
.end method
