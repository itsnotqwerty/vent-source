.class final Lcom/vent/ActReport1$a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActReport1$a$a;-><init>(Lcom/vent/ActReport1$a;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXJ:Lcom/vent/ActReport1$a;

.field final synthetic bXK:Lcom/vent/ActReport1$a$a;


# direct methods
.method constructor <init>(Lcom/vent/ActReport1$a$a;Lcom/vent/ActReport1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActReport1$a$a$1;->bXK:Lcom/vent/ActReport1$a$a;

    iput-object p2, p0, Lcom/vent/ActReport1$a$a$1;->bXJ:Lcom/vent/ActReport1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActReport1$a$a$1;->bXK:Lcom/vent/ActReport1$a$a;

    iget-object v0, v0, Lcom/vent/ActReport1$a$a;->bXI:Lcom/vent/ActReport1$a;

    iget-object v0, v0, Lcom/vent/ActReport1$a;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ActReport1;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vent/ActReport1;->bXB:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActReport1$a$a$1;->bXK:Lcom/vent/ActReport1$a$a;

    invoke-virtual {v1}, Lcom/vent/ActReport1$a$a;->getAdapterPosition()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/vent/ActReport1;->bXB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/vent/ActReport1;->bXB:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/u;

    iget-object v2, v0, Lcom/vent/ActReport1;->bXE:Lcom/vent/a/x;

    iget-object v3, v0, Lcom/vent/ActReport1;->bXD:Landroid/os/Parcelable;

    invoke-static {v0, v1, v2, v3}, Lcom/vent/ActReport2;->a(Landroid/app/Activity;Lcom/vent/a/u;Lcom/vent/a/x;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
