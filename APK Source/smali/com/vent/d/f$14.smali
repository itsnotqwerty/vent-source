.class final Lcom/vent/d/f$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic cln:Lcom/vent/d/c$b;

.field final synthetic cnS:Lcom/vent/a/k;

.field final synthetic cnT:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/vent/a/k;ZLcom/vent/d/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d/f$14;->bXe:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vent/d/f$14;->cnS:Lcom/vent/a/k;

    iput-boolean p3, p0, Lcom/vent/d/f$14;->cnT:Z

    iput-object p4, p0, Lcom/vent/d/f$14;->cln:Lcom/vent/d/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v0, Lcom/vent/d/f$14$1;

    iget-object v2, p0, Lcom/vent/d/f$14;->bXe:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/groups/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/d/f$14;->cnS:Lcom/vent/a/k;

    iget-object v3, v3, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/listen.json?from_suggested_groups="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/vent/d/f$14;->cnT:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    iget-object v1, p0, Lcom/vent/d/f$14;->cln:Lcom/vent/d/c$b;

    if-eqz v1, :cond_0

    const v5, 0x7f0f00a7

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/d/f$14$1;-><init>(Lcom/vent/d/f$14;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method