.class final Lcom/vent/b/a$5;
.super Lcom/vent/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vent/a/x;Lcom/vent/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic bYv:Lcom/vent/a/x;

.field final synthetic clo:Lcom/vent/b/a;

.field final synthetic clq:[Landroid/support/v7/app/c;

.field final synthetic clr:Lcom/vent/b/a$a;

.field final synthetic cls:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vent/b/a;[Landroid/support/v7/app/c;Landroid/app/Activity;Lcom/vent/b/a$a;Ljava/lang/String;Lcom/vent/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iput-object p2, p0, Lcom/vent/b/a$5;->clq:[Landroid/support/v7/app/c;

    iput-object p3, p0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    iput-object p4, p0, Lcom/vent/b/a$5;->clr:Lcom/vent/b/a$a;

    iput-object p5, p0, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    iput-object p6, p0, Lcom/vent/b/a$5;->bYv:Lcom/vent/a/x;

    invoke-direct {p0, p1}, Lcom/vent/b/a$b;-><init>(Lcom/vent/b/a;)V

    return-void
.end method


# virtual methods
.method final ek(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/b/a$5;->clq:[Landroid/support/v7/app/c;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/b/a$5;->clq:[Landroid/support/v7/app/c;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    iget-object v0, p0, Lcom/vent/b/a$5;->clr:Lcom/vent/b/a$a;

    invoke-virtual {v0, v2}, Lcom/vent/b/a$a;->aQ(Z)V

    return-void
.end method

.method public final run()V
    .locals 4

    sget-boolean v0, Lcom/vent/b/a;->clg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iget-object v0, v0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v2, 0x7f0f01f8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (4)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vent/b/a$5;->ek(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/vent/b/a;->Fs()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/vent/b/a$5;->cls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vent/b/a$5;->clo:Lcom/vent/b/a;

    iget-object v1, v1, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    const/4 v2, 0x1

    new-instance v3, Lcom/vent/b/a$5$1;

    invoke-direct {v3, p0}, Lcom/vent/b/a$5$1;-><init>(Lcom/vent/b/a$5;)V

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/vent/b/c;->a(ZLjava/util/List;Ljava/util/List;Lcom/vent/b/c$f;)V
    :try_end_0
    .catch Lcom/vent/b/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vent/b/a$5;->bXe:Landroid/app/Activity;

    const v2, 0x7f0f01f6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (3)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vent/b/a$5;->ek(Ljava/lang/String;)V

    goto :goto_0
.end method
