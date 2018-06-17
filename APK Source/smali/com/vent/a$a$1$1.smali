.class final Lcom/vent/a$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/a$a$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTM:Landroid/support/v7/app/c;

.field final synthetic bTN:Lcom/vent/a$a$1;


# direct methods
.method constructor <init>(Lcom/vent/a$a$1;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/a$a$1$1;->bTN:Lcom/vent/a$a$1;

    iput-object p2, p0, Lcom/vent/a$a$1$1;->bTM:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/a$a$1$1;->bTM:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/a$a$1$1;->bTN:Lcom/vent/a$a$1;

    iget-object v0, v0, Lcom/vent/a$a$1;->bTL:Lcom/vent/a$a;

    invoke-virtual {v0}, Lcom/vent/a$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/a;->Bb()V

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method
