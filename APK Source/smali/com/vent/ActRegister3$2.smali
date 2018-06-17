.class final Lcom/vent/ActRegister3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister3;->f(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTp:Z

.field final synthetic bTq:Z

.field final synthetic bXy:Lcom/vent/ActRegister3;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister3;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iput-boolean p2, p0, Lcom/vent/ActRegister3$2;->bTp:Z

    iput-boolean p3, p0, Lcom/vent/ActRegister3$2;->bTq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/vent/ActRegister3$2;->bTp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-boolean v1, v1, Lcom/vent/j;->bZp:Z

    if-nez v1, :cond_2

    :cond_0
    move v5, v0

    :goto_0
    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-boolean v1, v1, Lcom/vent/j;->bZp:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0}, Lcom/vent/j;->CH()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iput-boolean v0, v1, Lcom/vent/j;->cbc:Z

    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iput-boolean v0, v1, Lcom/vent/j;->bZp:Z

    if-eqz v5, :cond_4

    iget-object v1, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v1, v1, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v1, v0}, Lcom/vent/j;->bb(Z)V

    iget-object v0, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    invoke-virtual {v0}, Lcom/vent/j;->CB()V

    :cond_4
    iget-object v0, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    iget-object v0, v0, Lcom/vent/ActRegister3;->bXx:Lcom/vent/j;

    iget-boolean v1, p0, Lcom/vent/ActRegister3$2;->bTq:Z

    invoke-virtual {v0, v5, v1}, Lcom/vent/j;->g(ZZ)V

    const-string v3, "api/v1/suggested_groups.json?per_page=30"

    new-instance v0, Lcom/vent/ActRegister3$2$1;

    iget-object v2, p0, Lcom/vent/ActRegister3$2;->bXy:Lcom/vent/ActRegister3;

    const-string v4, "GET"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActRegister3$2$1;-><init>(Lcom/vent/ActRegister3$2;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_1
.end method
