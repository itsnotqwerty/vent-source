.class final synthetic Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# instance fields
.field private final aLg:Ljava/lang/String;

.field private final aLh:Ljava/lang/String;

.field private final aLi:Ljava/util/Map;

.field private final aLj:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ab;->aLg:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ab;->aLh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ab;->aLi:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->aLj:[B

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/JsonWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->aLg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->aLh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ab;->aLi:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->aLj:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
