.class final Lcom/vent/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/a$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTL:Lcom/vent/a$a;


# direct methods
.method constructor <init>(Lcom/vent/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/a$a$1;->bTL:Lcom/vent/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/vent/a$a$1;->bTL:Lcom/vent/a$a;

    invoke-virtual {v0}, Lcom/vent/a$a;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    const v1, 0x7f0f0121

    invoke-static {v0, v1}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/a$a$1;->bTL:Lcom/vent/a$a;

    invoke-virtual {v1}, Lcom/vent/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/vent/a$a$1$1;

    invoke-direct {v3, p0, v0}, Lcom/vent/a$a$1$1;-><init>(Lcom/vent/a$a$1;Landroid/support/v7/app/c;)V

    invoke-static {v1, v2, v3}, Lcom/vent/bb;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method
