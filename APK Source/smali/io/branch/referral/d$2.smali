.class final Lio/branch/referral/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/branch/referral/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/d;->GC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cwx:Lio/branch/referral/d;


# direct methods
.method constructor <init>(Lio/branch/referral/d;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/d$2;->cwx:Lio/branch/referral/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final GG()V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/d$2;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->b(Lio/branch/referral/d;)Lio/branch/referral/z;

    move-result-object v0

    sget-object v1, Lio/branch/referral/r$a;->cBh:Lio/branch/referral/r$a;

    invoke-virtual {v0, v1}, Lio/branch/referral/z;->b(Lio/branch/referral/r$a;)V

    iget-object v0, p0, Lio/branch/referral/d$2;->cwx:Lio/branch/referral/d;

    invoke-static {v0}, Lio/branch/referral/d;->c(Lio/branch/referral/d;)V

    return-void
.end method
