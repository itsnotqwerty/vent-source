.class final Lcom/vent/q$b;
.super Lcom/vent/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic cbz:Lcom/vent/q;


# direct methods
.method constructor <init>(Lcom/vent/q;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/q$b;->cbz:Lcom/vent/q;

    invoke-direct {p0, p1, p2}, Lcom/vent/o$a;-><init>(Lcom/vent/o;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final CR()Lcom/vent/a/x;
    .locals 2

    invoke-virtual {p0}, Lcom/vent/q$b;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/vent/q$b;->cbz:Lcom/vent/q;

    invoke-virtual {v1}, Lcom/vent/q;->CL()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/vent/q$b;->cbz:Lcom/vent/q;

    invoke-virtual {v1}, Lcom/vent/q;->CS()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vent/q$b;->cbz:Lcom/vent/q;

    iget-object v1, v1, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/vent/q$b;->cbz:Lcom/vent/q;

    iget-object v1, v1, Lcom/vent/q;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    goto :goto_0
.end method
