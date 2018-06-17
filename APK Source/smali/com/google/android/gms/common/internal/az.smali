.class public final Lcom/google/android/gms/common/internal/az;
.super Ljava/lang/Object;


# instance fields
.field public aCI:Landroid/accounts/Account;

.field private aCL:I

.field public aCN:Ljava/lang/String;

.field public aCO:Ljava/lang/String;

.field public aIA:Landroid/support/v4/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/b",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private aIy:Lcom/google/android/gms/internal/mb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/az;->aCL:I

    sget-object v0, Lcom/google/android/gms/internal/mb;->aZb:Lcom/google/android/gms/internal/mb;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/az;->aIy:Lcom/google/android/gms/internal/mb;

    return-void
.end method


# virtual methods
.method public final ov()Lcom/google/android/gms/common/internal/ay;
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/common/internal/ay;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/az;->aCI:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/az;->aIA:Landroid/support/v4/g/b;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/gms/common/internal/az;->aCN:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/internal/az;->aCO:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/internal/az;->aIy:Lcom/google/android/gms/internal/mb;

    move-object v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/ay;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mb;)V

    return-object v0
.end method
