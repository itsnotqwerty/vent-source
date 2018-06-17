.class final Lcom/vent/FrgProfile$a;
.super Landroid/support/v4/app/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/FrgProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final cfv:[I


# instance fields
.field final cfu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/FrgProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vent/FrgProfile$a;->cfv:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f0162
        0x7f0f00ea
        0x7f0f0090
    .end array-data
.end method

.method constructor <init>(Landroid/support/v4/app/n;Lcom/vent/FrgProfile;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/n;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/FrgProfile$a;->cfu:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ac(I)Landroid/support/v4/app/i;
    .locals 14

    const v4, 0x7f0f00d4

    const/4 v10, 0x6

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vent/FrgProfile$a;->cfu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    iget-boolean v5, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v5, :cond_3

    if-lez p1, :cond_3

    add-int/lit8 v0, p1, 0x1

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/FrgProfile$a;->cfu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/vent/FrgProfile;->a(Lcom/vent/FrgVentsList;I)V

    return-object v1

    :pswitch_0
    if-eqz v5, :cond_0

    move v5, v6

    :goto_2
    iget-wide v8, v0, Lcom/vent/FrgProfile;->bWj:J

    move-object v2, v1

    move v7, v3

    invoke-static/range {v1 .. v9}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;

    move-result-object v1

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_2

    :pswitch_1
    const v4, 0x7f0f00e9

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    :goto_3
    iget-wide v8, v0, Lcom/vent/FrgProfile;->bWj:J

    move-object v2, v1

    move v7, v3

    invoke-static/range {v1 .. v9}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;

    move-result-object v1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_3

    :pswitch_2
    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v9, v10

    :goto_4
    const-wide/16 v12, 0x0

    move-object v5, v1

    move-object v6, v1

    move v8, v4

    move v11, v3

    invoke-static/range {v5 .. v13}, Lcom/vent/FrgVentsList;->a(Ljava/lang/String;Lcom/vent/a/m;IIIIZJ)Lcom/vent/FrgVentsList;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v9, v3

    goto :goto_4

    :cond_3
    move v2, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final aw(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgProfile$a;->cfu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    iget-boolean v0, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgProfile$a;->cfu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/vent/FrgProfile$a;->cfv:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/vent/FrgProfile;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/vent/FrgProfile$a;->cfu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/FrgProfile;

    iget-boolean v0, v0, Lcom/vent/FrgProfile;->bYQ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
