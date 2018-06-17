.class public final Lc/a/a/b/g;
.super Ljava/lang/Object;


# instance fields
.field public final bKG:B

.field public final c:I

.field public final cVH:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lc/a/a/b/g;-><init>(BBI)V

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lc/a/a/b/g;->cVH:B

    iput-byte p2, p0, Lc/a/a/b/g;->bKG:B

    iput p3, p0, Lc/a/a/b/g;->c:I

    return-void
.end method
