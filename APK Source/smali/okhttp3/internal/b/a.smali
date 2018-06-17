.class public final Lokhttp3/internal/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/r;


# instance fields
.field public final cgQ:Lokhttp3/t;


# direct methods
.method public constructor <init>(Lokhttp3/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/b/a;->cgQ:Lokhttp3/t;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/r$a;)Lokhttp3/y;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/c/g;

    iget-object v2, v0, Lokhttp3/internal/c/g;->cZt:Lokhttp3/w;

    iget-object v3, v0, Lokhttp3/internal/c/g;->dak:Lokhttp3/internal/b/g;

    iget-object v1, v2, Lokhttp3/w;->method:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lokhttp3/internal/b/a;->cgQ:Lokhttp3/t;

    invoke-virtual {v3, v4, p1, v1}, Lokhttp3/internal/b/g;->a(Lokhttp3/t;Lokhttp3/r$a;Z)Lokhttp3/internal/c/c;

    move-result-object v1

    invoke-virtual {v3}, Lokhttp3/internal/b/g;->MR()Lokhttp3/internal/b/c;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lokhttp3/internal/c/g;->a(Lokhttp3/w;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;)Lokhttp3/y;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
