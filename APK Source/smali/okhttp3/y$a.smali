.class public final Lokhttp3/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public cWq:Lokhttp3/u;

.field public cWs:Lokhttp3/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cZr:Lokhttp3/p$a;

.field public cZt:Lokhttp3/w;

.field public cZu:Lokhttp3/z;

.field cZv:Lokhttp3/y;

.field cZw:Lokhttp3/y;

.field public cZx:Lokhttp3/y;

.field public code:I

.field public message:Ljava/lang/String;

.field public receivedResponseAtMillis:J

.field public sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/y$a;->code:I

    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0}, Lokhttp3/p$a;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->cZr:Lokhttp3/p$a;

    return-void
.end method

.method constructor <init>(Lokhttp3/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/y$a;->code:I

    iget-object v0, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iput-object v0, p0, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    iget-object v0, p1, Lokhttp3/y;->cWq:Lokhttp3/u;

    iput-object v0, p0, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    iget v0, p1, Lokhttp3/y;->code:I

    iput v0, p0, Lokhttp3/y$a;->code:I

    iget-object v0, p1, Lokhttp3/y;->message:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/y$a;->message:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/y;->cWs:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/y$a;->cWs:Lokhttp3/o;

    iget-object v0, p1, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-virtual {v0}, Lokhttp3/p;->MA()Lokhttp3/p$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->cZr:Lokhttp3/p$a;

    iget-object v0, p1, Lokhttp3/y;->cZu:Lokhttp3/z;

    iput-object v0, p0, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    iget-object v0, p1, Lokhttp3/y;->cZv:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/y$a;->cZv:Lokhttp3/y;

    iget-object v0, p1, Lokhttp3/y;->cZw:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/y$a;->cZw:Lokhttp3/y;

    iget-object v0, p1, Lokhttp3/y;->cZx:Lokhttp3/y;

    iput-object v0, p0, Lokhttp3/y$a;->cZx:Lokhttp3/y;

    iget-wide v0, p1, Lokhttp3/y;->sentRequestAtMillis:J

    iput-wide v0, p0, Lokhttp3/y$a;->sentRequestAtMillis:J

    iget-wide v0, p1, Lokhttp3/y;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lokhttp3/y$a;->receivedResponseAtMillis:J

    return-void
.end method

.method private static a(Ljava/lang/String;Lokhttp3/y;)V
    .locals 3

    iget-object v0, p1, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lokhttp3/y;->cZv:Lokhttp3/y;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Lokhttp3/y;->cZw:Lokhttp3/y;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lokhttp3/y;->cZx:Lokhttp3/y;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public final MJ()Lokhttp3/y;
    .locals 3

    iget-object v0, p0, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lokhttp3/y$a;->code:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/y$a;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/y$a;->message:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lokhttp3/y;

    invoke-direct {v0, p0}, Lokhttp3/y;-><init>(Lokhttp3/y$a;)V

    return-object v0
.end method

.method public final aa(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;
    .locals 1

    iget-object v0, p0, Lokhttp3/y$a;->cZr:Lokhttp3/p$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/p$a;->X(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;

    return-object p0
.end method

.method public final b(Lokhttp3/y;)Lokhttp3/y$a;
    .locals 1
    .param p1    # Lokhttp3/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lokhttp3/y$a;->a(Ljava/lang/String;Lokhttp3/y;)V

    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->cZv:Lokhttp3/y;

    return-object p0
.end method

.method public final c(Lokhttp3/p;)Lokhttp3/y$a;
    .locals 1

    invoke-virtual {p1}, Lokhttp3/p;->MA()Lokhttp3/p$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->cZr:Lokhttp3/p$a;

    return-object p0
.end method

.method public final c(Lokhttp3/y;)Lokhttp3/y$a;
    .locals 1
    .param p1    # Lokhttp3/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lokhttp3/y$a;->a(Ljava/lang/String;Lokhttp3/y;)V

    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->cZw:Lokhttp3/y;

    return-object p0
.end method
