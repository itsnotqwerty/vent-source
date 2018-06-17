.class final Lcom/amazonaws/util/TimingInfoUnmodifiable;
.super Lcom/amazonaws/util/TimingInfo;


# direct methods
.method constructor <init>(JLjava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final kj()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
