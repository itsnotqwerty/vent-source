.class final Lio/intercom/a/b/a/b/a/n$25;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/a/n;->a(Ljava/lang/Class;Lio/intercom/a/b/a/r;)Lio/intercom/a/b/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bjM:Ljava/lang/Class;

.field final synthetic cSi:Lio/intercom/a/b/a/r;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lio/intercom/a/b/a/r;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/n$25;->bjM:Ljava/lang/Class;

    iput-object p2, p0, Lio/intercom/a/b/a/b/a/n$25;->cSi:Lio/intercom/a/b/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lio/intercom/a/b/a/c/a;->bkb:Ljava/lang/Class;

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/n$25;->bjM:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/n$25;->cSi:Lio/intercom/a/b/a/r;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/n$25;->bjM:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/n$25;->cSi:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
