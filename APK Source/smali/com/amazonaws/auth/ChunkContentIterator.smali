.class Lcom/amazonaws/auth/ChunkContentIterator;
.super Ljava/lang/Object;


# instance fields
.field final ans:[B

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->ans:[B

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    iget-object v1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->ans:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
