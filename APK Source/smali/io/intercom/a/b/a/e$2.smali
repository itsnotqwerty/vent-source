.class final Lio/intercom/a/b/a/e$2;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic cRq:Lio/intercom/a/b/a/e;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/e$2;->cRq:Lio/intercom/a/b/a/e;

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
    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lio/intercom/a/b/a/e;->b(D)V

    invoke-virtual {p1, p2}, Lio/intercom/a/b/a/d/c;->b(Ljava/lang/Number;)Lio/intercom/a/b/a/d/c;

    goto :goto_0
.end method
