.class public final Lcom/google/android/gms/common/internal/aw;
.super Lcom/google/android/gms/common/internal/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/am;"
    }
.end annotation


# instance fields
.field private synthetic aIr:Lcom/google/android/gms/common/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/al;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/aw;->aIr:Lcom/google/android/gms/common/internal/al;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/am;-><init>(Lcom/google/android/gms/common/internal/al;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final k(Lcom/google/android/gms/common/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/aw;->aIr:Lcom/google/android/gms/common/internal/al;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/al;->aId:Lcom/google/android/gms/common/internal/ar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/ar;->d(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/aw;->aIr:Lcom/google/android/gms/common/internal/al;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method protected final ot()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/aw;->aIr:Lcom/google/android/gms/common/internal/al;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/al;->aId:Lcom/google/android/gms/common/internal/ar;

    sget-object v1, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/ar;->d(Lcom/google/android/gms/common/a;)V

    const/4 v0, 0x1

    return v0
.end method
