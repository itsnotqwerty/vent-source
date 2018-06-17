.class final Lokhttp3/internal/e/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final dbI:[Lokhttp3/internal/e/k$a;

.field final symbol:I

.field final terminalBits:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lokhttp3/internal/e/k$a;

    iput-object v0, p0, Lokhttp3/internal/e/k$a;->dbI:[Lokhttp3/internal/e/k$a;

    iput v1, p0, Lokhttp3/internal/e/k$a;->symbol:I

    iput v1, p0, Lokhttp3/internal/e/k$a;->terminalBits:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/e/k$a;->dbI:[Lokhttp3/internal/e/k$a;

    iput p1, p0, Lokhttp3/internal/e/k$a;->symbol:I

    and-int/lit8 v0, p2, 0x7

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Lokhttp3/internal/e/k$a;->terminalBits:I

    return-void
.end method
