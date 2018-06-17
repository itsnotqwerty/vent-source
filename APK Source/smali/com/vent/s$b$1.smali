.class final Lcom/vent/s$b$1;
.super Lcom/vent/d/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/s$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccg:Lcom/vent/s$b;


# direct methods
.method constructor <init>(Lcom/vent/s$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    invoke-direct {p0}, Lcom/vent/d/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v0, v0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v0, v0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v0, v0, Lcom/vent/s$b;->cce:Lcom/vent/s$g;

    iget-object v0, v0, Lcom/vent/s$g;->ccq:Lcom/vent/a/z;

    iget-object v1, p0, Lcom/vent/s$b$1;->ceP:Lcom/vent/a/y;

    iput-object v1, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v0, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v0, v0, Lcom/vent/s$b;->ccf:Lcom/vent/s;

    invoke-virtual {v0}, Lcom/vent/s;->CU()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v0, v0, Lcom/vent/s$b;->ccf:Lcom/vent/s;

    iget-object v0, v0, Lcom/vent/s;->cbT:Lcom/vent/s$a;

    iget-object v0, v0, Lcom/vent/s$a;->ccb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/z;

    iget-object v3, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v4, p0, Lcom/vent/s$b$1;->ceP:Lcom/vent/a/y;

    invoke-static {v3, v4}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vent/s$b$1;->ceP:Lcom/vent/a/y;

    iput-object v3, v0, Lcom/vent/a/z;->bXE:Lcom/vent/a/x;

    iget-object v3, p0, Lcom/vent/s$b$1;->ceP:Lcom/vent/a/y;

    invoke-virtual {v3}, Lcom/vent/a/y;->Fh()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/vent/a/z;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vent/a/z;->flags:I

    :goto_1
    iget-object v0, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v0, v0, Lcom/vent/s$b;->ccf:Lcom/vent/s;

    iget-object v3, p0, Lcom/vent/s$b$1;->ccg:Lcom/vent/s$b;

    iget-object v3, v3, Lcom/vent/s$b;->ccf:Lcom/vent/s;

    invoke-virtual {v3, v1}, Lcom/vent/s;->ey(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/vent/s;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/vent/a/z;->flags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/vent/a/z;->flags:I

    goto :goto_1

    :cond_2
    return-void
.end method
