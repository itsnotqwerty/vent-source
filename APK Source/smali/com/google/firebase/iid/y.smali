.class final Lcom/google/firebase/iid/y;
.super Lcom/google/firebase/iid/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/w",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/iid/w;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final l(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/w;->Y(Ljava/lang/Object;)V

    return-void
.end method

.method final uP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
