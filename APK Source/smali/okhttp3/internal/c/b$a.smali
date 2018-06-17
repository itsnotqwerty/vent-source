.class final Lokhttp3/internal/c/b$a;
.super Ld/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Ld/r;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/g;-><init>(Ld/r;)V

    return-void
.end method


# virtual methods
.method public final b(Ld/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ld/g;->b(Ld/c;J)V

    iget-wide v0, p0, Lokhttp3/internal/c/b$a;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/internal/c/b$a;->successfulCount:J

    return-void
.end method
