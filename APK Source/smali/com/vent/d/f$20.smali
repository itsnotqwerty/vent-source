.class final Lcom/vent/d/f$20;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;IIILcom/vent/d/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bXe:Landroid/app/Activity;

.field final synthetic cbv:Lcom/vent/a/x;

.field final synthetic cln:Lcom/vent/d/c$b;

.field final synthetic cnZ:Lcom/vent/a/k;

.field final synthetic cob:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;Lcom/vent/a/k;Lcom/vent/a/x;Lcom/vent/d/c$b;)V
    .locals 0

    iput p1, p0, Lcom/vent/d/f$20;->cob:I

    iput-object p2, p0, Lcom/vent/d/f$20;->bXe:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vent/d/f$20;->cnZ:Lcom/vent/a/k;

    iput-object p4, p0, Lcom/vent/d/f$20;->cbv:Lcom/vent/a/x;

    iput-object p5, p0, Lcom/vent/d/f$20;->cln:Lcom/vent/d/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "role"

    iget v1, p0, Lcom/vent/d/f$20;->cob:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/vent/d/f$20$1;

    iget-object v2, p0, Lcom/vent/d/f$20;->bXe:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "api/v1/groups/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vent/d/f$20;->cnZ:Lcom/vent/a/k;

    iget-object v3, v3, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/user/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vent/d/f$20;->cbv:Lcom/vent/a/x;

    iget-object v3, v3, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PATCH"

    iget-object v1, p0, Lcom/vent/d/f$20;->cln:Lcom/vent/d/c$b;

    if-eqz v1, :cond_0

    const v6, 0x7f0f00e1

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vent/d/f$20$1;-><init>(Lcom/vent/d/f$20;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
