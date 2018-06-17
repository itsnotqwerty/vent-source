.class final Lcom/vent/b/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vent/b/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a;->a(Landroid/content/Context;Lcom/vent/b/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic clo:Lcom/vent/b/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vent/b/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$4;->clo:Lcom/vent/b/a;

    iput-object p2, p0, Lcom/vent/b/a$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/vent/b/d;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/vent/b/d;->mQ()Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/vent/b/a;->clf:Z

    sput-boolean v1, Lcom/vent/b/a;->clg:Z

    iget-object v1, p1, Lcom/vent/b/d;->cmd:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/b/a$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/vent/b/a;->e(Landroid/app/Application;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/vent/b/a$4;->clo:Lcom/vent/b/a;

    invoke-virtual {v1, v0}, Lcom/vent/b/a;->ej(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vent/b/a$4;->clo:Lcom/vent/b/a;

    iget-object v0, p0, Lcom/vent/b/a$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/vent/b/a;->h(Landroid/app/Application;)V

    return-void

    :cond_0
    sput-boolean v1, Lcom/vent/b/a;->clf:Z

    sput-boolean v2, Lcom/vent/b/a;->clg:Z

    const/4 v0, 0x0

    goto :goto_0
.end method
