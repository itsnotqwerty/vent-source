.class public final Lokhttp3/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/y$a;
    }
.end annotation


# instance fields
.field final cWq:Lokhttp3/u;

.field public final cWs:Lokhttp3/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final cZo:Lokhttp3/p;

.field private volatile cZq:Lokhttp3/d;

.field public final cZt:Lokhttp3/w;

.field public final cZu:Lokhttp3/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final cZv:Lokhttp3/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cZw:Lokhttp3/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final cZx:Lokhttp3/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final code:I

.field public final message:Ljava/lang/String;

.field public final receivedResponseAtMillis:J

.field public final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lokhttp3/y$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    iput-object v0, p0, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, p1, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    iput-object v0, p0, Lokhttp3/y;->cWq:Lokhttp3/u;

    iget v0, p1, Lokhttp3/y$a;->code:I

    iput v0, p0, Lokhttp3/y;->code:I

    iget-object v0, p1, Lokhttp3/y$a;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/y;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/y$a;->cWs:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/y;->cWs:Lokhttp3/o;

    iget-object v0, p1, Lokhttp3/y$a;->cZr:Lokhttp3/p$a;

    invoke-virtual {v0}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    iget-object v0, p1, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    iput-object v0, p0, Lokhttp3/y;->cZu:Lokhttp3/z;

    iget-object v0, p1, Lokhttp3/y$a;->cZv:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/y;->cZv:Lokhttp3/y;

    iget-object v0, p1, Lokhttp3/y$a;->cZw:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/y;->cZw:Lokhttp3/y;

    iget-object v0, p1, Lokhttp3/y$a;->cZx:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/y;->cZx:Lokhttp3/y;

    iget-wide v0, p1, Lokhttp3/y$a;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/y;->sentRequestAtMillis:J

    iget-wide v0, p1, Lokhttp3/y$a;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/y;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public final MG()Lokhttp3/d;
    .locals 1

    iget-object v0, p0, Lokhttp3/y;->cZq:Lokhttp3/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-static {v0}, Lokhttp3/d;->a(Lokhttp3/p;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->cZq:Lokhttp3/d;

    goto :goto_0
.end method

.method public final MI()Lokhttp3/y$a;
    .locals 1

    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0, p0}, Lokhttp3/y$a;-><init>(Lokhttp3/y;)V

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v0}, Lokhttp3/z;->close()V

    return-void
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-virtual {v0, p1}, Lokhttp3/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/y;->cWq:Lokhttp3/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/y;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/y;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v1, v1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
