.class public final Lcom/google/android/gms/common/stats/b;
.super Ljava/lang/Object;


# static fields
.field private static LOG_LEVEL_OFF:I

.field public static final aJf:Landroid/content/ComponentName;

.field private static aJg:I

.field private static aJh:I

.field private static aJi:I

.field private static aJj:I

.field private static aJk:I

.field private static aJl:I

.field private static aJm:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/b;->aJf:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/b;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/b;->aJg:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/b;->aJh:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/b;->aJi:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/b;->aJj:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/b;->aJk:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/b;->aJl:I

    sput v3, Lcom/google/android/gms/common/stats/b;->aJm:I

    return-void
.end method
