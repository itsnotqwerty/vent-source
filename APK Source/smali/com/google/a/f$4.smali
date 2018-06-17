.class final Lcom/google/a/f$4;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/u",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bgN:Lcom/google/a/u;


# direct methods
.method constructor <init>(Lcom/google/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/f$4;->bgN:Lcom/google/a/u;

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

    iget-object v0, p0, Lcom/google/a/f$4;->bgN:Lcom/google/a/u;

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v1
.end method

.method public final synthetic a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lcom/google/a/f$4;->bgN:Lcom/google/a/u;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
