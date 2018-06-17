.class final Lcom/vent/o$b$3;
.super Lcom/vent/o$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/o$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic caC:Lcom/vent/a/x;

.field final synthetic cbt:Lcom/vent/o$b;


# direct methods
.method constructor <init>(Lcom/vent/o$b;Lcom/vent/a/x;Landroid/support/v7/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/o$b$3;->cbt:Lcom/vent/o$b;

    iput-object p2, p0, Lcom/vent/o$b$3;->caC:Lcom/vent/a/x;

    iput-object p3, p0, Lcom/vent/o$b$3;->bXk:Landroid/support/v7/app/d;

    invoke-direct {p0, p1}, Lcom/vent/o$b$a;-><init>(Lcom/vent/o$b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-super {p0}, Lcom/vent/o$b$a;->run()V

    iget-object v0, p0, Lcom/vent/o$b$3;->caC:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->Fj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/o$b$3;->bXk:Landroid/support/v7/app/d;

    invoke-static {v0}, Lcom/vent/ax;->bp(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
