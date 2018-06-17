.class final Lcom/vent/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clO:Lcom/vent/b/c$e;

.field final synthetic clP:Lcom/vent/b/c;


# direct methods
.method constructor <init>(Lcom/vent/b/c;Lcom/vent/b/c$e;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iput-object p2, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iget-boolean v2, v2, Lcom/vent/b/c;->clB:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    invoke-static {p2}, Lcom/android/a/a/a$a;->d(Landroid/os/IBinder;)Lcom/android/a/a/a;

    move-result-object v3

    iput-object v3, v2, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    iget-object v2, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iget-object v2, v2, Lcom/vent/b/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iget-object v3, v3, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v2, v5}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    new-instance v1, Lcom/vent/b/d;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {v1, v3, v2}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vent/b/c$e;->b(Lcom/vent/b/d;)V

    :cond_2
    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/b/c;->clD:Z

    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/b/c;->clE:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    new-instance v2, Lcom/vent/b/d;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vent/b/c$e;->b(Lcom/vent/b/d;)V

    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iget-object v3, v3, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v4, 0x5

    const-string v5, "subs"

    invoke-interface {v3, v4, v2, v5}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    if-nez v3, :cond_5

    :goto_1
    iput-boolean v0, v4, Lcom/vent/b/c;->clE:Z

    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iget-boolean v0, v0, Lcom/vent/b/c;->clE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vent/b/c;->clD:Z

    :goto_2
    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vent/b/c;->clA:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b/c$1;->clO:Lcom/vent/b/c$e;

    new-instance v2, Lcom/vent/b/d;

    const-string v3, "Setup successful."

    invoke-direct {v2, v1, v3}, Lcom/vent/b/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vent/b/c$e;->b(Lcom/vent/b/d;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    iget-object v0, v0, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    const/4 v3, 0x3

    const-string v4, "subs"

    invoke-interface {v0, v3, v2, v4}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vent/b/c;->clD:Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/vent/b/c;->clD:Z

    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/vent/b/c;->clE:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/b/c$1;->clP:Lcom/vent/b/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vent/b/c;->clI:Lcom/android/a/a/a;

    return-void
.end method
