.class final Lokhttp3/c$b$1;
.super Ld/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/c$b;-><init>(Lokhttp3/internal/a/d$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cWn:Lokhttp3/internal/a/d$c;

.field final synthetic cWo:Lokhttp3/c$b;


# direct methods
.method constructor <init>(Lokhttp3/c$b;Ld/s;Lokhttp3/internal/a/d$c;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/c$b$1;->cWo:Lokhttp3/c$b;

    iput-object p3, p0, Lokhttp3/c$b$1;->cWn:Lokhttp3/internal/a/d$c;

    invoke-direct {p0, p2}, Ld/h;-><init>(Ld/s;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c$b$1;->cWn:Lokhttp3/internal/a/d$c;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$c;->close()V

    invoke-super {p0}, Ld/h;->close()V

    return-void
.end method
