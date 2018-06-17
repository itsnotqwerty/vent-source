.class public final Lcom/google/android/gms/common/api/internal/cs;
.super Lcom/google/android/gms/common/api/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Lcom/google/android/gms/common/api/e",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private final aCV:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;"
        }
    .end annotation
.end field

.field private final aDG:Lcom/google/android/gms/common/internal/ay;

.field private final aFl:Lcom/google/android/gms/common/api/a$f;

.field private final aHe:Lcom/google/android/gms/common/api/internal/cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/cn;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/cn;",
            "Lcom/google/android/gms/common/internal/ay;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/cs;->aFl:Lcom/google/android/gms/common/api/a$f;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/cs;->aHe:Lcom/google/android/gms/common/api/internal/cn;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/cs;->aDG:Lcom/google/android/gms/common/internal/ay;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/cs;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cs;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/aj;)Lcom/google/android/gms/common/api/a$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/aj",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cs;->aHe:Lcom/google/android/gms/common/api/internal/cn;

    iput-object p2, v0, Lcom/google/android/gms/common/api/internal/cn;->aGS:Lcom/google/android/gms/common/api/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cs;->aFl:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/bm;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/internal/bm;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cs;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cs;->aCV:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/common/api/internal/bm;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;)V

    return-object v0
.end method
