.class final Lio/branch/referral/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cxF:Lio/branch/referral/l$a;

.field final synthetic cxG:Lio/branch/referral/l$b;

.field final synthetic cxH:Lio/branch/referral/l;


# direct methods
.method constructor <init>(Lio/branch/referral/l;Lio/branch/referral/l$b;Lio/branch/referral/l$a;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/l$2;->cxH:Lio/branch/referral/l;

    iput-object p2, p0, Lio/branch/referral/l$2;->cxG:Lio/branch/referral/l$b;

    iput-object p3, p0, Lio/branch/referral/l$2;->cxF:Lio/branch/referral/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lio/branch/referral/l$2;->cxH:Lio/branch/referral/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/branch/referral/l;->cxy:Z

    iget-object v0, p0, Lio/branch/referral/l$2;->cxH:Lio/branch/referral/l;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/branch/referral/l;->cxE:Landroid/app/Dialog;

    iget-object v0, p0, Lio/branch/referral/l$2;->cxG:Lio/branch/referral/l$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/referral/l$2;->cxH:Lio/branch/referral/l;

    iget-boolean v0, v0, Lio/branch/referral/l;->cxz:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/referral/l$2;->cxG:Lio/branch/referral/l$b;

    iget-object v1, p0, Lio/branch/referral/l$2;->cxF:Lio/branch/referral/l$a;

    iget-object v1, v1, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/branch/referral/l$b;->eA(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/branch/referral/l$2;->cxG:Lio/branch/referral/l$b;

    iget-object v1, p0, Lio/branch/referral/l$2;->cxF:Lio/branch/referral/l$a;

    iget-object v1, v1, Lio/branch/referral/l$a;->cxJ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/branch/referral/l$b;->eB(Ljava/lang/String;)V

    goto :goto_0
.end method
