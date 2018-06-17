.class final Lcom/vent/d/f$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/m;Lcom/vent/a/d;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic bZm:Lcom/vent/a/m;

.field final synthetic cnN:Lcom/vent/a/d;

.field final synthetic cnO:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/vent/a/m;Lcom/vent/a/d;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/d/f$9;->bXe:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vent/d/f$9;->bZm:Lcom/vent/a/m;

    iput-object p3, p0, Lcom/vent/d/f$9;->cnN:Lcom/vent/a/d;

    iput-object p4, p0, Lcom/vent/d/f$9;->cnO:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/vent/d/f$9$1;

    iget-object v1, p0, Lcom/vent/d/f$9;->bXe:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/vents/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/d/f$9;->bZm:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/comments/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vent/d/f$9;->cnN:Lcom/vent/a/d;

    iget-object v3, v3, Lcom/vent/a/d;->cjy:Lcom/vent/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DELETE"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vent/d/f$9$1;-><init>(Lcom/vent/d/f$9;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method
