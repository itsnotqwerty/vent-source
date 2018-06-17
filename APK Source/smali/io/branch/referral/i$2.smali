.class final Lio/branch/referral/i$2;
.super Lio/branch/referral/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cxf:Lio/branch/referral/i$b;

.field final synthetic cxg:Lio/branch/referral/i;

.field final synthetic cxh:Ljava/lang/reflect/Method;

.field final synthetic cxi:Ljava/lang/reflect/Method;

.field final synthetic cxj:Landroid/net/Uri;

.field final synthetic cxk:Ljava/lang/reflect/Method;

.field final synthetic cxl:Lio/branch/referral/q;


# direct methods
.method constructor <init>(Lio/branch/referral/i;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Landroid/net/Uri;Ljava/lang/reflect/Method;Lio/branch/referral/q;Lio/branch/referral/i$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iput-object p2, p0, Lio/branch/referral/i$2;->cxh:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lio/branch/referral/i$2;->cxi:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lio/branch/referral/i$2;->cxj:Landroid/net/Uri;

    iput-object p5, p0, Lio/branch/referral/i$2;->cxk:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lio/branch/referral/i$2;->cxl:Lio/branch/referral/q;

    iput-object p7, p0, Lio/branch/referral/i$2;->cxf:Lio/branch/referral/i$b;

    invoke-direct {p0, p1}, Lio/branch/referral/i$a;-><init>(Lio/branch/referral/i;)V

    return-void
.end method


# virtual methods
.method public final am(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v1, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v1, v1, Lio/branch/referral/i;->cxa:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/branch/referral/i;->cwV:Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v0, v0, Lio/branch/referral/i;->cwV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/branch/referral/i$2;->cxh:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v1, v1, Lio/branch/referral/i;->cwV:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/referral/i$2;->cxi:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v1, v1, Lio/branch/referral/i;->cwV:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BranchSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Strong match request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/branch/referral/i$2;->cxj:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/branch/referral/i$2;->cxk:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/branch/referral/i$2;->cxj:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "bnc_branch_strong_match_time"

    invoke-static {v2, v0, v1}, Lio/branch/referral/q;->setLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/branch/referral/i;->cwZ:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iput-object v5, v0, Lio/branch/referral/i;->cwV:Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v1, p0, Lio/branch/referral/i$2;->cxf:Lio/branch/referral/i$b;

    iget-object v2, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-boolean v2, v2, Lio/branch/referral/i;->cwZ:Z

    invoke-static {v0, v1, v2}, Lio/branch/referral/i;->a(Lio/branch/referral/i;Lio/branch/referral/i$b;Z)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/branch/referral/i;->cwV:Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-object v1, p0, Lio/branch/referral/i$2;->cxf:Lio/branch/referral/i$b;

    iget-object v2, p0, Lio/branch/referral/i$2;->cxg:Lio/branch/referral/i;

    iget-boolean v2, v2, Lio/branch/referral/i;->cwZ:Z

    invoke-static {v0, v1, v2}, Lio/branch/referral/i;->a(Lio/branch/referral/i;Lio/branch/referral/i$b;Z)V

    return-void
.end method
