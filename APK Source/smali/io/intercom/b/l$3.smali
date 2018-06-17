.class final Lio/intercom/b/l$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/b/l;->KM()Lio/intercom/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    sget-object v0, Lio/intercom/b/t;->NONE:Lio/intercom/b/t;

    return-object v0
.end method

.method public final write(Lio/intercom/b/c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lio/intercom/b/c;->ah(J)V

    return-void
.end method
