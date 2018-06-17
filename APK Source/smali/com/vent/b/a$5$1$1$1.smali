.class final Lcom/vent/b/a$5$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/b/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a$5$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clw:Lcom/vent/b/a$5$1$1;


# direct methods
.method constructor <init>(Lcom/vent/b/a$5$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vent/b/d;Lcom/vent/b/f;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x7

    iget v2, p1, Lcom/vent/b/d;->cmc:I

    if-nez p2, :cond_0

    if-ne v2, v4, :cond_0

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v3, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v3, v3, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v3, v3, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v3, v3, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/f;

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->clr:Lcom/vent/b/a$a;

    iput v2, v0, Lcom/vent/b/a$a;->cly:I

    iget-object v0, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->clr:Lcom/vent/b/a$a;

    iput-object p2, v0, Lcom/vent/b/a$a;->clx:Lcom/vent/b/f;

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_3

    const/16 v0, -0x3ed

    if-eq v2, v0, :cond_5

    iget-object v0, p1, Lcom/vent/b/d;->cmd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v2, 0x7f0f01f6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v2, v2, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Lcom/vent/b/a$5$1;->el(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (6."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vent/b/d;->cmc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v1, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v1, v1, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v1, v1, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v1, v1, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    sget-object v0, Lcom/vent/b/a;->clh:Ljava/util/Map;

    iget-object v1, p2, Lcom/vent/b/f;->cmi:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1;->clt:Lcom/vent/b/a$5;

    iget-object v0, v0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/b/a;->f(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/vent/b/a$5$1$1$1;->clw:Lcom/vent/b/a$5$1$1;

    iget-object v0, v0, Lcom/vent/b/a$5$1$1;->clv:Lcom/vent/b/a$5$1;

    invoke-virtual {v0}, Lcom/vent/b/a$5$1;->Ft()V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
