.class final Lcom/vent/ba$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final ccT:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field chF:I

.field final synthetic chs:Lcom/vent/ba;


# direct methods
.method constructor <init>(Lcom/vent/ba;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vent/ba$b;->ccT:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vent/ba$b;->chF:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Eq()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->state:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iget v0, v0, Lcom/vent/ba;->chj:I

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->cgZ:Lcom/layer/sdk/LayerClient;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vent/ba$b;->chF:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vent/ba$b;->chF:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->El()V

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iget-object v0, v0, Lcom/vent/ba;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iput-boolean v2, v0, Lcom/vent/ba;->chc:Z

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BZ()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0, v2}, Lcom/vent/ba;->aZ(Z)V

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    iput v2, v0, Lcom/vent/ba;->chd:I

    sput-object v3, Lcom/vent/bb;->ciL:Ljava/util/HashMap;

    sput-object v3, Lcom/vent/bb;->ciN:Ljava/util/HashMap;

    sput-object v3, Lcom/vent/bb;->ccH:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vent/ba;->invalidate()V

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->BY()V

    iget-object v0, p0, Lcom/vent/ba$b;->chs:Lcom/vent/ba;

    invoke-virtual {v0}, Lcom/vent/ba;->Eh()V

    new-instance v0, Lcom/vent/ba$b$1;

    invoke-direct {v0, p0}, Lcom/vent/ba$b$1;-><init>(Lcom/vent/ba$b;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
