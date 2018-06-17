.class public final Lcom/davemorrissey/labs/subscaleview/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field avv:F

.field private centerX:F

.field private centerY:F

.field orientation:I


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/b;->avv:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/b;->centerX:F

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/b;->centerY:F

    iput p3, p0, Lcom/davemorrissey/labs/subscaleview/b;->orientation:I

    return-void
.end method
