.class public final Lcom/google/android/gms/internal/hn;
.super Ljava/lang/Object;


# instance fields
.field private aUb:Z

.field private synthetic aUc:Lcom/google/android/gms/internal/hl;

.field private final aUd:J

.field private final key:Ljava/lang/String;

.field private value:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/hn;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/hn;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/hn;->aUd:J

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hn;->aUb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hn;->aUb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hn;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/hn;->aUd:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/hn;->value:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/hn;->value:J

    return-wide v0
.end method

.method public final set(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hn;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/hn;->value:J

    return-void
.end method
