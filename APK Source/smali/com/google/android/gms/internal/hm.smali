.class public final Lcom/google/android/gms/internal/hm;
.super Ljava/lang/Object;


# instance fields
.field final aUa:Z

.field aUb:Z

.field synthetic aUc:Lcom/google/android/gms/internal/hl;

.field final key:Ljava/lang/String;

.field value:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/hm;->key:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hm;->aUa:Z

    return-void
.end method


# virtual methods
.method public final set(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hm;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hm;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hm;->value:Z

    return-void
.end method
