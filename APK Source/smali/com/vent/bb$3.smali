.class final Lcom/vent/bb$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/bb;->a(Landroid/app/Activity;ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic cjo:I

.field final synthetic cjp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/support/v7/app/c;Landroid/app/Activity;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/bb$3;->bUB:Landroid/support/v7/app/c;

    iput-object p2, p0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    iput p3, p0, Lcom/vent/bb$3;->cjo:I

    iput-object p4, p0, Lcom/vent/bb$3;->cjp:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vent/bb$3;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/bb;->cje:Z

    iget-object v0, p0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    instance-of v0, v0, Lcom/vent/ActMain;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->cje:Z

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    iget v2, p0, Lcom/vent/bb$3;->cjo:I

    iget-object v3, p0, Lcom/vent/bb$3;->cjp:Lorg/json/JSONObject;

    invoke-static {v1, v2, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    new-instance v1, Lcom/vent/bb$3$1;

    invoke-direct {v1, p0}, Lcom/vent/bb$3$1;-><init>(Lcom/vent/bb$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/vent/bb;->cje:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    goto :goto_0
.end method
