.class final Landroid/support/v4/content/c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bl:Landroid/support/v4/content/c;


# direct methods
.method constructor <init>(Landroid/support/v4/content/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/c$1;->Bl:Landroid/support/v4/content/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/content/c$1;->Bl:Landroid/support/v4/content/c;

    invoke-static {v0}, Landroid/support/v4/content/c;->a(Landroid/support/v4/content/c;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
