.class final Lcom/vent/at$1;
.super Lcom/vent/views/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/at;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfC:Lcom/vent/at;


# direct methods
.method constructor <init>(Lcom/vent/at;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/at$1;->cfC:Lcom/vent/at;

    invoke-direct {p0}, Lcom/vent/views/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/views/c;->Q(I)V

    iget-object v0, p0, Lcom/vent/at$1;->cfC:Lcom/vent/at;

    invoke-virtual {v0}, Lcom/vent/at;->DR()V

    return-void
.end method

.method public final ei(I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/at$1;->cfC:Lcom/vent/at;

    invoke-virtual {v0, p1}, Lcom/vent/at;->ei(I)V

    return-void
.end method
