.class public final Lc/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private final cUW:Ljava/io/ByteArrayOutputStream;

.field private final cUX:Lc/a/a/d/a;

.field private cUY:Lc/a/a/b/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lc/a/a/b/b$a;

    invoke-direct {v0}, Lc/a/a/b/b$a;-><init>()V

    invoke-direct {p0, v0}, Lc/a/a/h;-><init>(Lc/a/a/b/j;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/b/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lc/a/a/h;->cUW:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lc/a/a/d/a;

    iget-object v1, p0, Lc/a/a/h;->cUW:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lc/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lc/a/a/h;->cUX:Lc/a/a/d/a;

    iget-object v0, p0, Lc/a/a/h;->cUX:Lc/a/a/d/a;

    invoke-interface {p1, v0}, Lc/a/a/b/j;->a(Lc/a/a/d/c;)Lc/a/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/h;->cUY:Lc/a/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Lc/a/a/c;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/h;->cUW:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lc/a/a/h;->cUY:Lc/a/a/b/h;

    invoke-interface {p1, v0}, Lc/a/a/c;->b(Lc/a/a/b/h;)V

    iget-object v0, p0, Lc/a/a/h;->cUW:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
