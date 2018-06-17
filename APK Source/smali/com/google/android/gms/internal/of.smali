.class public final Lcom/google/android/gms/internal/of;
.super Ljava/lang/Object;


# static fields
.field private static final AT:Ljava/lang/Object;

.field private static bbk:Lcom/google/android/gms/internal/of;


# instance fields
.field private final bbl:Lcom/google/android/gms/internal/w;

.field private final bbm:Lcom/google/android/gms/internal/nx;

.field private final bbn:Ljava/lang/String;

.field private final bbo:Lcom/google/android/gms/internal/qs;

.field private final bbp:Lcom/google/android/gms/internal/qt;

.field private final bbq:Lcom/google/android/gms/internal/qu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/of;->AT:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/of;

    invoke-direct {v0}, Lcom/google/android/gms/internal/of;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/of;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/of;->bbk:Lcom/google/android/gms/internal/of;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/w;

    invoke-direct {v0}, Lcom/google/android/gms/internal/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->bbl:Lcom/google/android/gms/internal/w;

    new-instance v0, Lcom/google/android/gms/internal/nx;

    new-instance v1, Lcom/google/android/gms/internal/nq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nq;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/np;

    invoke-direct {v2}, Lcom/google/android/gms/internal/np;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/qe;

    invoke-direct {v3}, Lcom/google/android/gms/internal/qe;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/tb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/tb;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/l;

    invoke-direct {v5}, Lcom/google/android/gms/internal/l;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/uo;

    invoke-direct {v6}, Lcom/google/android/gms/internal/uo;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/tc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/tc;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/nx;-><init>(Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/qe;Lcom/google/android/gms/internal/tb;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/uo;Lcom/google/android/gms/internal/tc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->bbm:Lcom/google/android/gms/internal/nx;

    invoke-static {}, Lcom/google/android/gms/internal/w;->oT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->bbn:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/qs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->bbo:Lcom/google/android/gms/internal/qs;

    new-instance v0, Lcom/google/android/gms/internal/qt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->bbp:Lcom/google/android/gms/internal/qt;

    new-instance v0, Lcom/google/android/gms/internal/qu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/of;->bbq:Lcom/google/android/gms/internal/qu;

    return-void
.end method

.method private static ti()Lcom/google/android/gms/internal/of;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/of;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/of;->bbk:Lcom/google/android/gms/internal/of;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static tj()Lcom/google/android/gms/internal/w;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/of;->ti()Lcom/google/android/gms/internal/of;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/of;->bbl:Lcom/google/android/gms/internal/w;

    return-object v0
.end method

.method public static tk()Lcom/google/android/gms/internal/nx;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/of;->ti()Lcom/google/android/gms/internal/of;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/of;->bbm:Lcom/google/android/gms/internal/nx;

    return-object v0
.end method
