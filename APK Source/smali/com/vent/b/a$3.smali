.class public final Lcom/vent/b/a$3;
.super Lcom/vent/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clo:Lcom/vent/b/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/vent/b/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$3;->clo:Lcom/vent/b/a;

    iput-object p2, p0, Lcom/vent/b/a$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/vent/b/a$b;-><init>(Lcom/vent/b/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/vent/b/a;->clg:Z

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/vent/b/a;->cli:Z

    iget-object v0, p0, Lcom/vent/b/a$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0f01f8

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/vent/b/a;->clj:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/vent/b/a;->Fs()V

    iget-object v0, p0, Lcom/vent/b/a$3;->clo:Lcom/vent/b/a;

    iget-object v0, v0, Lcom/vent/b/a;->cll:Lcom/vent/b/c;

    new-instance v1, Lcom/vent/b/a$3$1;

    invoke-direct {v1, p0}, Lcom/vent/b/a$3$1;-><init>(Lcom/vent/b/a$3;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/vent/b/c;->a(ZLjava/util/List;Ljava/util/List;Lcom/vent/b/c$f;)V
    :try_end_0
    .catch Lcom/vent/b/c$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vent/b/a$3;->clo:Lcom/vent/b/a;

    iget-object v0, p0, Lcom/vent/b/a$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    goto :goto_0
.end method
