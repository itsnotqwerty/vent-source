.class public final Lcom/google/android/gms/internal/hd;
.super Ljava/lang/Object;


# instance fields
.field private synthetic aTo:Lcom/google/android/gms/internal/hb;

.field private final aTp:Z

.field private final aTq:Z

.field private final priority:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hb;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hd;->aTo:Lcom/google/android/gms/internal/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/hd;->priority:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/hd;->aTp:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hd;->aTq:Z

    return-void
.end method


# virtual methods
.method public final bq(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->aTo:Lcom/google/android/gms/internal/hb;

    iget v1, p0, Lcom/google/android/gms/internal/hd;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hd;->aTp:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hd;->aTq:Z

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/hb;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->aTo:Lcom/google/android/gms/internal/hb;

    iget v1, p0, Lcom/google/android/gms/internal/hd;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hd;->aTp:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hd;->aTq:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/hb;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->aTo:Lcom/google/android/gms/internal/hb;

    iget v1, p0, Lcom/google/android/gms/internal/hd;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hd;->aTp:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hd;->aTq:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/hb;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->aTo:Lcom/google/android/gms/internal/hb;

    iget v1, p0, Lcom/google/android/gms/internal/hd;->priority:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/hd;->aTp:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hd;->aTq:Z

    move-object v4, p1

    move-object v5, p2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/hb;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
