.class public final Lcom/google/android/gms/internal/hp;
.super Ljava/lang/Object;


# instance fields
.field aUb:Z

.field synthetic aUc:Lcom/google/android/gms/internal/hl;

.field private final aUi:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/hp;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/hp;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hp;->aUi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cp(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hp;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/le;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hp;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hp;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hp;->value:Ljava/lang/String;

    goto :goto_0
.end method
