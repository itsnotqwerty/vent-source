.class final Lio/branch/referral/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/m;->a(Landroid/content/Context;Lio/branch/referral/m$a;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic cxP:Ljava/lang/Class;

.field final synthetic cxQ:Lio/branch/referral/m$a;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lio/branch/referral/m$a;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/m$1;->cxP:Ljava/lang/Class;

    iput-object p2, p0, Lio/branch/referral/m$1;->cxQ:Lio/branch/referral/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onDeferredAppLinkDataFetched"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p3, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/m$1;->cxP:Ljava/lang/Class;

    aget-object v2, p3, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lio/branch/referral/m$1;->cxP:Ljava/lang/Class;

    const-string v3, "getArgumentBundle"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/os/Bundle;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lio/branch/referral/m$1;->cxQ:Lio/branch/referral/m$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/branch/referral/m$1;->cxQ:Lio/branch/referral/m$a;

    invoke-interface {v2, v0}, Lio/branch/referral/m$a;->eD(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    iget-object v0, p0, Lio/branch/referral/m$1;->cxQ:Lio/branch/referral/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/m$1;->cxQ:Lio/branch/referral/m$a;

    invoke-interface {v0, v1}, Lio/branch/referral/m$a;->eD(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
