.class abstract Lcom/google/android/gms/common/internal/am;
.super Lcom/google/android/gms/common/internal/aq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/aq",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private aIq:Landroid/os/Bundle;

.field private synthetic aIr:Lcom/google/android/gms/common/internal/al;

.field private statusCode:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/al;ILandroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/am;->aIr:Lcom/google/android/gms/common/internal/al;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/aq;-><init>(Lcom/google/android/gms/common/internal/al;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/am;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/am;->aIq:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final synthetic P(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/am;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/gms/common/internal/am;->statusCode:I

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/am;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/am;->aIq:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/am;->aIq:Landroid/os/Bundle;

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_2
    new-instance v1, Lcom/google/android/gms/common/a;

    iget v2, p0, Lcom/google/android/gms/common/internal/am;->statusCode:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/am;->k(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/am;->ot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/am;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;I)V

    new-instance v1, Lcom/google/android/gms/common/a;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/am;->k(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/am;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/al;I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract k(Lcom/google/android/gms/common/a;)V
.end method

.method protected abstract ot()Z
.end method
