.class public final Lokhttp3/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/w$a;
    }
.end annotation


# instance fields
.field public final cVX:Lokhttp3/q;

.field public final cZo:Lokhttp3/p;

.field public final cZp:Lokhttp3/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cZq:Lokhttp3/d;

.field public final method:Ljava/lang/String;

.field final tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lokhttp3/w$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/w$a;->cVX:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v0, p1, Lokhttp3/w$a;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/w;->method:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    invoke-virtual {v0}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/w;->cZo:Lokhttp3/p;

    iget-object v0, p1, Lokhttp3/w$a;->cZp:Lokhttp3/x;

    iput-object v0, p0, Lokhttp3/w;->cZp:Lokhttp3/x;

    iget-object v0, p1, Lokhttp3/w$a;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/w$a;->tag:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lokhttp3/w;->tag:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final MF()Lokhttp3/w$a;
    .locals 1

    new-instance v0, Lokhttp3/w$a;

    invoke-direct {v0, p0}, Lokhttp3/w$a;-><init>(Lokhttp3/w;)V

    return-object v0
.end method

.method public final MG()Lokhttp3/d;
    .locals 1

    iget-object v0, p0, Lokhttp3/w;->cZq:Lokhttp3/d;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-static {v0}, Lokhttp3/d;->a(Lokhttp3/p;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/w;->cZq:Lokhttp3/d;

    goto :goto_0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-virtual {v0, p1}, Lokhttp3/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/w;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokhttp3/w;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
