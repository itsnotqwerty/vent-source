.class final Lcom/google/android/gms/common/api/internal/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aEm:Lcom/google/android/gms/common/api/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m;->aEm:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m;->aEm:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/m;->L(Landroid/content/Context;)V

    return-void
.end method
