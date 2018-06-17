.class final Lcom/vent/b/a$2;
.super Lcom/vent/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/b/a;->a(Landroid/app/Activity;Lcom/vent/d/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic cln:Lcom/vent/d/c$b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/vent/d/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/b/a$2;->bXe:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vent/b/a$2;->cln:Lcom/vent/d/c$b;

    invoke-direct {p0}, Lcom/vent/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final aQ(Z)V
    .locals 2

    iget-object v0, p0, Lcom/vent/b/a$2;->bXe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/b/a;->f(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/vent/b/a$2;->cln:Lcom/vent/d/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/b/a$2;->cln:Lcom/vent/d/c$b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vent/d/c$b;->cmT:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vent/b/a$2;->cln:Lcom/vent/d/c$b;

    invoke-virtual {v0}, Lcom/vent/d/c$b;->run()V

    :cond_0
    return-void
.end method
