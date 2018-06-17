.class final Lio/intercom/a/b/a/b/a/n$8;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lio/intercom/a/b/a/d/b;->cTD:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/intercom/a/b/a/d/c;->fe(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;

    return-void
.end method
