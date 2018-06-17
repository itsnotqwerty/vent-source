.class public Lcom/vent/ad;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final bYn:Lorg/json/JSONObject;

.field bYq:[[Ljava/lang/String;

.field final ccT:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected ccU:I

.field public ccV:Lorg/json/JSONObject;

.field private ccW:Landroid/support/v7/app/c;

.field private final ccX:Z

.field public ccY:I

.field private final ccZ:Z

.field cda:Lcom/vent/az$a;

.field final cdb:Ljava/lang/CharSequence;

.field private final method:Ljava/lang/String;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/vent/ad;-><init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ad;->ccT:Ljava/lang/ref/WeakReference;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ad;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/vent/ad;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vent/ad;->ccX:Z

    iput-object p4, p0, Lcom/vent/ad;->method:Ljava/lang/String;

    iput-object p5, p0, Lcom/vent/ad;->bYn:Lorg/json/JSONObject;

    iput-boolean p7, p0, Lcom/vent/ad;->ccZ:Z

    iget-boolean v0, p0, Lcom/vent/ad;->ccX:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->bYq:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/d/c;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/vent/ad;->bYq:[[Ljava/lang/String;

    :cond_0
    if-eqz p6, :cond_1

    invoke-static {p2, p6}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ad;->ccW:Landroid/support/v7/app/c;

    :cond_1
    iput-object p1, p0, Lcom/vent/ad;->cdb:Ljava/lang/CharSequence;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v1, p0, Lcom/vent/ad;->method:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/vent/ad;->ccX:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vent/bb;->Er()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vent/ad;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/vent/ad;->bYq:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/vent/ad;->bYn:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2, v3}, Lcom/vent/az;->a(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Lorg/json/JSONObject;)Lcom/vent/az$a;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ad;->cda:Lcom/vent/az$a;

    iget-object v0, p0, Lcom/vent/ad;->cda:Lcom/vent/az$a;

    iget v0, v0, Lcom/vent/az$a;->bYo:I

    iput v0, p0, Lcom/vent/ad;->ccU:I

    iget-object v0, p0, Lcom/vent/ad;->cda:Lcom/vent/az$a;

    iget-object v0, v0, Lcom/vent/az$a;->bYp:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/vent/ad;->ccV:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vent/ad;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public aQ(Z)V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 4

    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vent/ad;->ccW:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ad;->ccW:Landroid/support/v7/app/c;

    iget v0, p0, Lcom/vent/ad;->ccU:I

    iput v0, p0, Lcom/vent/ad;->ccY:I

    iget-boolean v0, p0, Lcom/vent/ad;->ccZ:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vent/ad;->ccU:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/vent/ad;->ccU:I

    if-le v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/vent/ad;->ccU:I

    :cond_1
    iget v0, p0, Lcom/vent/ad;->ccU:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/vent/ad;->ccU:I

    if-le v0, v2, :cond_8

    :cond_2
    iget v0, p0, Lcom/vent/ad;->ccU:I

    const/16 v1, 0x1f6

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/vent/ad;->ccU:I

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/vent/ad;->ccU:I

    const/16 v1, 0x208

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/vent/ad;->ccU:I

    const/16 v1, 0x20f

    if-gt v0, v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/vent/az;->Ee()V

    :cond_4
    iget v0, p0, Lcom/vent/ad;->ccU:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/vent/ad;->ccU:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual {p0, v3}, Lcom/vent/ad;->aQ(Z)V

    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/vent/ad;->ccT:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vent/ad;->ccT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/vent/ad;->ccU:I

    iget-object v2, p0, Lcom/vent/ad;->ccV:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_7
    invoke-virtual {p0, v3}, Lcom/vent/ad;->aQ(Z)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/ad;->aQ(Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vent/ad;->b(Ljava/lang/Void;)V

    return-void
.end method
