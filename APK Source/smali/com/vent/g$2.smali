.class final Lcom/vent/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/vent/g$2;->cab:Lcom/vent/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/g$2;->cab:Lcom/vent/g;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vent/g;->ev(I)V

    return-void
.end method
