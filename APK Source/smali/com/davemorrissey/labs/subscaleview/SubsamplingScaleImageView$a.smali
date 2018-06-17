.class final Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field avS:F

.field awE:F

.field awF:Landroid/graphics/PointF;

.field awG:Landroid/graphics/PointF;

.field awH:Landroid/graphics/PointF;

.field awI:Landroid/graphics/PointF;

.field awJ:Landroid/graphics/PointF;

.field awK:J

.field awL:Z

.field awM:I

.field awN:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;

.field time:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->awK:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->awL:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->awM:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;->time:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;-><init>()V

    return-void
.end method
