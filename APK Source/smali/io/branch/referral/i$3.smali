.class final Lio/branch/referral/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/i;->a(Lio/branch/referral/i$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cxf:Lio/branch/referral/i$b;

.field final synthetic cxg:Lio/branch/referral/i;


# direct methods
.method constructor <init>(Lio/branch/referral/i;Lio/branch/referral/i$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/i$3;->cxg:Lio/branch/referral/i;

    iput-object p2, p0, Lio/branch/referral/i$3;->cxf:Lio/branch/referral/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/branch/referral/i$3;->cxf:Lio/branch/referral/i$b;

    invoke-interface {v0}, Lio/branch/referral/i$b;->GG()V

    return-void
.end method
