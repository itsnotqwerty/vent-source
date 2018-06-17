.class final Ld/t$1;
.super Ld/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final aE(J)Ld/t;
    .locals 0

    return-object p0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Ld/t;
    .locals 0

    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
