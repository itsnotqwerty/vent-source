.class final Lcom/vent/ActSubscriptions$a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActSubscriptions$a$a;-><init>(Lcom/vent/ActSubscriptions$a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYJ:Lcom/vent/ActSubscriptions$a;

.field final synthetic bYK:Lcom/vent/ActSubscriptions$a$a;


# direct methods
.method constructor <init>(Lcom/vent/ActSubscriptions$a$a;Lcom/vent/ActSubscriptions$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActSubscriptions$a$a$1;->bYK:Lcom/vent/ActSubscriptions$a$a;

    iput-object p2, p0, Lcom/vent/ActSubscriptions$a$a$1;->bYJ:Lcom/vent/ActSubscriptions$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActSubscriptions$a$a$1;->bYK:Lcom/vent/ActSubscriptions$a$a;

    iget-object v0, v0, Lcom/vent/ActSubscriptions$a$a;->bYI:Lcom/vent/ActSubscriptions$a;

    iget-object v0, v0, Lcom/vent/ActSubscriptions$a;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActSubscriptions;

    iget-object v0, v0, Lcom/vent/ActSubscriptions;->bYD:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vent/ActSubscriptions$a$a$1;->bYK:Lcom/vent/ActSubscriptions$a$a;

    invoke-virtual {v1}, Lcom/vent/ActSubscriptions$a$a;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/w;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/vent/a/w;->ckM:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
