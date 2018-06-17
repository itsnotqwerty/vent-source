.class public final Lc/a/a/b/i;
.super Lc/a/a/g;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/b/i;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/b/i;->a:I

    iput p1, p0, Lc/a/a/b/i;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/a/a/g;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/b/i;->a:I

    return-void
.end method
