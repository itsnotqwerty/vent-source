.class final Lcom/vent/FrgProfile$1;
.super Lcom/vent/views/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgProfile$1;->cfr:Lcom/vent/FrgProfile;

    invoke-direct {p0}, Lcom/vent/views/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/views/c;->Q(I)V

    iget-object v0, p0, Lcom/vent/FrgProfile$1;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DR()V

    return-void
.end method

.method public final ei(I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/FrgProfile$1;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0, p1}, Lcom/vent/FrgProfile;->ei(I)V

    return-void
.end method
