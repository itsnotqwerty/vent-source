.class final Landroid/support/v7/app/i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic MX:Landroid/support/v7/app/i;

.field MY:Landroid/support/v7/app/p;

.field MZ:Z

.field Na:Landroid/content/BroadcastReceiver;

.field Nb:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>(Landroid/support/v7/app/i;Landroid/support/v7/app/p;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/i$b;->MX:Landroid/support/v7/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/i$b;->MY:Landroid/support/v7/app/p;

    invoke-virtual {p2}, Landroid/support/v7/app/p;->eI()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/i$b;->MZ:Z

    return-void
.end method


# virtual methods
.method final cleanup()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/i$b;->Na:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/i$b;->MX:Landroid/support/v7/app/i;

    iget-object v0, v0, Landroid/support/v7/app/i;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/i$b;->Na:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/i$b;->Na:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
