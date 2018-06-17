.class final Lcom/vent/n$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/n$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic cbq:Lcom/vent/a/h;

.field final synthetic cbr:Lcom/vent/n$b;


# direct methods
.method constructor <init>(Lcom/vent/n$b;Lcom/vent/a/h;Landroid/support/v7/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/n$b$1;->cbr:Lcom/vent/n$b;

    iput-object p2, p0, Lcom/vent/n$b$1;->cbq:Lcom/vent/a/h;

    iput-object p3, p0, Lcom/vent/n$b$1;->bXk:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/vent/a/z;->Fn()Lcom/vent/a/z;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/n$b$1;->cbq:Lcom/vent/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/n$b$1;->cbq:Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/n$b$1;->cbq:Lcom/vent/a/h;

    iget-object v0, v0, Lcom/vent/a/h;->cjT:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/m;

    iput-object v0, v1, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    :cond_0
    iget-object v0, p0, Lcom/vent/n$b$1;->bXk:Landroid/support/v7/app/d;

    invoke-static {v0, v1}, Lcom/vent/ActEmotions;->a(Landroid/app/Activity;Lcom/vent/a/z;)V

    return-void
.end method
