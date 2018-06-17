.class final synthetic Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# instance fields
.field private final aLk:I

.field private final aLl:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ac;->aLk:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ac;->aLl:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/JsonWriter;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ac;->aLk:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->aLl:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/aa;->a(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
