.class public final Lokhttp3/internal/e/n;
.super Ljava/io/IOException;


# instance fields
.field public final dbz:Lokhttp3/internal/e/b;


# direct methods
.method public constructor <init>(Lokhttp3/internal/e/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stream was reset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/e/n;->dbz:Lokhttp3/internal/e/b;

    return-void
.end method
