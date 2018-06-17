.class public Lc/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final bKG:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/c;-><init>(BZ)V

    return-void
.end method

.method public constructor <init>(BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lc/a/a/a/c;->bKG:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/a/c;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/a/c;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lc/a/a/a/c;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, Lc/a/a/a/c;->bKG:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/a/c;->a:Z

    iput-object p1, p0, Lc/a/a/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/a/c;->d:Z

    return-void
.end method
