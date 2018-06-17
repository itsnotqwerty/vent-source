.class final Lcom/vent/ActVent$a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActVent$a$a;->AZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZq:Lcom/vent/ActVent$a$a;


# direct methods
.method constructor <init>(Lcom/vent/ActVent$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    iget-boolean v0, v0, Lcom/vent/ActVent$a$a;->bZp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    iget-object v0, v0, Lcom/vent/ActVent$a$a;->bVA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/h;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent$a$a$1;->bZq:Lcom/vent/ActVent$a$a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/vent/ActVent$a$a;->bZp:Z

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/my/groups.json?q%5bslim%5d=true&per_page=15&from%5border%5d=asc&from%5bfield%5d=name&from%5bvalue%5d="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/vent/a/k;->cjP:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/vent/ActVent$a$a$1$1;

    const-string v3, "GET"

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/vent/ActVent$a$a$1$1;-><init>(Lcom/vent/ActVent$a$a$1;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    sget-object v2, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method
