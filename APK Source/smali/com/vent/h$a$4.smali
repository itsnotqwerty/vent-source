.class final Lcom/vent/h$a$4;
.super Lcom/vent/h$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/h$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic caC:Lcom/vent/a/x;

.field final synthetic caD:Lcom/vent/h$a;


# direct methods
.method constructor <init>(Lcom/vent/h$a;Lcom/vent/a/x;Landroid/support/v7/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/h$a$4;->caD:Lcom/vent/h$a;

    iput-object p2, p0, Lcom/vent/h$a$4;->caC:Lcom/vent/a/x;

    iput-object p3, p0, Lcom/vent/h$a$4;->bXk:Landroid/support/v7/app/d;

    invoke-direct {p0, p1}, Lcom/vent/h$a$a;-><init>(Lcom/vent/h$a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-super {p0}, Lcom/vent/h$a$a;->run()V

    iget-boolean v0, p0, Lcom/vent/h$a$4;->cog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/h$a$4;->caC:Lcom/vent/a/x;

    invoke-virtual {v0}, Lcom/vent/a/x;->Fh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/h$a$4;->bXk:Landroid/support/v7/app/d;

    invoke-static {v0}, Lcom/vent/ax;->bn(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
