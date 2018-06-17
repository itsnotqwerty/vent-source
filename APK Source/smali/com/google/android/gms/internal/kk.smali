.class final Lcom/google/android/gms/internal/kk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMV:Landroid/content/ComponentName;

.field private synthetic aWQ:Lcom/google/android/gms/internal/ki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ki;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kk;->aWQ:Lcom/google/android/gms/internal/ki;

    iput-object p2, p0, Lcom/google/android/gms/internal/kk;->aMV:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->aWQ:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->aMV:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/ju;Landroid/content/ComponentName;)V

    return-void
.end method
