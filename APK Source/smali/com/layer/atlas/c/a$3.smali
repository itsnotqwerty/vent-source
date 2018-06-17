.class final Lcom/layer/atlas/c/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bpn:Lcom/layer/atlas/c/a;


# direct methods
.method constructor <init>(Lcom/layer/atlas/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/c/a$3;->bpn:Lcom/layer/atlas/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
