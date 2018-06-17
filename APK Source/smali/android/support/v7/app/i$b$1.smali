.class final Landroid/support/v7/app/i$b$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Nc:Landroid/support/v7/app/i$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/i$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/i$b$1;->Nc:Landroid/support/v7/app/i$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/i$b$1;->Nc:Landroid/support/v7/app/i$b;

    iget-object v1, v0, Landroid/support/v7/app/i$b;->MY:Landroid/support/v7/app/p;

    invoke-virtual {v1}, Landroid/support/v7/app/p;->eI()Z

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/app/i$b;->MZ:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, v0, Landroid/support/v7/app/i$b;->MZ:Z

    iget-object v0, v0, Landroid/support/v7/app/i$b;->MX:Landroid/support/v7/app/i;

    invoke-virtual {v0}, Landroid/support/v7/app/i;->ew()Z

    :cond_0
    return-void
.end method
