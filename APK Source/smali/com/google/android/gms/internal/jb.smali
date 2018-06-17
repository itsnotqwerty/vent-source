.class final Lcom/google/android/gms/internal/jb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVV:Z

.field private synthetic aVW:Lcom/google/android/gms/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jb;->aVW:Lcom/google/android/gms/internal/ja;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/jb;->aVV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->aVW:Lcom/google/android/gms/internal/ja;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/jb;->aVV:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ja;Z)V

    return-void
.end method
