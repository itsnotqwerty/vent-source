.class final Lcom/vent/at$a;
.super Landroid/support/v4/app/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final caZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/ah;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;Lcom/vent/ah;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/n;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/at$a;->caZ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ac(I)Landroid/support/v4/app/i;
    .locals 10

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "api/v2/vents/most_discussed.json"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0f00d4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v1, "api/v2/vents/on_the_rise.json"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0f00d4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;

    move-result-object v0

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

    iget-object v0, p0, Lcom/vent/at$a;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ah;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Lcom/vent/ah;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0f0145

    invoke-virtual {v0, v1}, Lcom/vent/ah;->getString(I)Ljava/lang/String;

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
