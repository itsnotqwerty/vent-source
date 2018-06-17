.class final Lcom/google/a/b/a/n$19$1;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/a/n$19;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/u",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bjK:Lcom/google/a/u;

.field final synthetic bjL:Lcom/google/a/b/a/n$19;


# direct methods
.method constructor <init>(Lcom/google/a/b/a/n$19;Lcom/google/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/a/n$19$1;->bjL:Lcom/google/a/b/a/n$19;

    iput-object p2, p0, Lcom/google/a/b/a/n$19$1;->bjK:Lcom/google/a/u;

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/n$19$1;->bjK:Lcom/google/a/u;

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lcom/google/a/b/a/n$19$1;->bjK:Lcom/google/a/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
