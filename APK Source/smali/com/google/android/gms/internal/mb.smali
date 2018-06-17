.class public final Lcom/google/android/gms/internal/mb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$e;


# static fields
.field public static final aZb:Lcom/google/android/gms/internal/mb;


# instance fields
.field final aZc:Z

.field final aZd:Z

.field final aZe:Ljava/lang/String;

.field final aZf:Z

.field final aZg:Ljava/lang/String;

.field final aZh:Z

.field final aZi:Ljava/lang/Long;

.field final aZj:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mc;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mb;->aZb:Lcom/google/android/gms/internal/mb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mb;->aZc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mb;->aZd:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/mb;->aZe:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mb;->aZf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mb;->aZh:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/mb;->aZg:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/mb;->aZi:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/mb;->aZj:Ljava/lang/Long;

    return-void
.end method
