.class Lcom/google/android/gms/common/w;
.super Ljava/lang/Object;


# static fields
.field private static final aJX:Lcom/google/android/gms/common/w;


# instance fields
.field final aJY:Z

.field private aJZ:Ljava/lang/String;

.field final cause:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/common/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/w;->aJX:Lcom/google/android/gms/common/w;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/w;->aJY:Z

    iput-object p2, p0, Lcom/google/android/gms/common/w;->aJZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/w;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/x;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/x;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZB)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/w;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static bl(Ljava/lang/String;)Lcom/google/android/gms/common/w;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static oP()Lcom/google/android/gms/common/w;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/w;->aJX:Lcom/google/android/gms/common/w;

    return-object v0
.end method


# virtual methods
.method oQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/w;->aJZ:Ljava/lang/String;

    return-object v0
.end method
