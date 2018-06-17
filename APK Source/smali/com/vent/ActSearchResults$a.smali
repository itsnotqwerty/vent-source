.class final Lcom/vent/ActSearchResults$a;
.super Landroid/support/v4/app/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ActSearchResults;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;Lcom/vent/ActSearchResults;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/n;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ActSearchResults$a;->bUM:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ac(I)Landroid/support/v4/app/i;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v2

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "api/v2/vents/search.json?q="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vent/ActSearchResults$a;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActSearchResults;

    iget-object v0, v0, Lcom/vent/ActSearchResults;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0f00d4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const-wide/16 v8, 0x0

    move v7, v3

    invoke-static/range {v1 .. v9}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/vent/au;->DV()Lcom/vent/au;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final aw(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/vent/ActSearchResults$a;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActSearchResults;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f0f0162

    invoke-virtual {v0, v1}, Lcom/vent/ActSearchResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0f015e

    invoke-virtual {v0, v1}, Lcom/vent/ActSearchResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
