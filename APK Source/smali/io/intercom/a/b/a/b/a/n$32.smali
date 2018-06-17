.class final Lio/intercom/a/b/a/b/a/n$32;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method

.method private static g(Lio/intercom/a/b/a/d/a;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->Kh()Lio/intercom/a/b/a/d/b;

    move-result-object v0

    sget-object v1, Lio/intercom/a/b/a/d/b;->cTE:Lio/intercom/a/b/a/d/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/intercom/a/b/a/d/a;->nextInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/p;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/a/b/a/b/a/n$32;->g(Lio/intercom/a/b/a/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p1, p2}, Lio/intercom/a/b/a/d/c;->b(Ljava/lang/Number;)Lio/intercom/a/b/a/d/c;

    return-void
.end method
