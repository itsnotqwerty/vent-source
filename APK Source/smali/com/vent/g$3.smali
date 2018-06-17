.class final Lcom/vent/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/g;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cab:Lcom/vent/g;


# direct methods
.method constructor <init>(Lcom/vent/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/g$3;->cab:Lcom/vent/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/vent/g$3;->cab:Lcom/vent/g;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vent/g;->ev(I)V

    const/4 v0, 0x1

    return v0
.end method
