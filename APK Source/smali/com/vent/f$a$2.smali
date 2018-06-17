.class final Lcom/vent/f$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/f$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZR:Lcom/vent/f$a;

.field final synthetic bZS:Lcom/vent/a/e;

.field final synthetic bZT:Lcom/vent/a/f;


# direct methods
.method constructor <init>(Lcom/vent/f$a;Lcom/vent/a/e;Lcom/vent/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/f$a$2;->bZR:Lcom/vent/f$a;

    iput-object p2, p0, Lcom/vent/f$a$2;->bZS:Lcom/vent/a/e;

    iput-object p3, p0, Lcom/vent/f$a$2;->bZT:Lcom/vent/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/vent/f$a$2;->bZR:Lcom/vent/f$a;

    iget-object v0, v0, Lcom/vent/f$a;->bZO:Lcom/vent/f;

    iget-object v0, v0, Lcom/vent/f;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    new-instance v1, Lcom/vent/f$a$2$1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/my/conversations/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/f$a$2;->bZS:Lcom/vent/a/e;

    iget-object v3, v3, Lcom/vent/a/e;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DELETE"

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/vent/f$a$2$1;-><init>(Lcom/vent/f$a$2;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method
