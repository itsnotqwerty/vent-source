.class final Lb/t$1;
.super Lb/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final aw(J)Lb/t;
    .locals 0

    return-object p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lb/t;
    .locals 0

    return-object p0
.end method

.method public final g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
