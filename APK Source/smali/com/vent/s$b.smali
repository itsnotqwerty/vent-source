.class final Lcom/vent/s$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final cce:Lcom/vent/s$g;

.field final synthetic ccf:Lcom/vent/s;


# direct methods
.method constructor <init>(Lcom/vent/s;Lcom/vent/s$g;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/s$b;->ccf:Lcom/vent/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    iget-object v1, p0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    iget-object v1, v1, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    new-instance v2, Lcom/vent/s$b$1;

    invoke-direct {v2, p0}, Lcom/vent/s$b$1;-><init>(Lcom/vent/s$b;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/x;Lcom/vent/d/f$a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f09010b
        :pswitch_0
    .end packed-switch
.end method
