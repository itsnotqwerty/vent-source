.class public final Lc/a/a/e;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final Lr()[B
    .locals 1

    iget-object v0, p0, Lc/a/a/e;->buf:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lc/a/a/e;->count:I

    return v0
.end method
