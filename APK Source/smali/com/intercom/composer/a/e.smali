.class public final Lcom/intercom/composer/a/e;
.super Ljava/lang/Object;


# instance fields
.field public final background:Landroid/view/View;

.field final blo:Landroid/widget/ImageView;

.field public final blp:Lcom/intercom/composer/a/g;

.field public final blq:Lcom/intercom/composer/a/d;

.field public blr:Landroid/animation/ObjectAnimator;

.field public bls:Landroid/animation/ObjectAnimator;

.field public blt:Landroid/animation/AnimatorSet;

.field public final blu:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Lcom/intercom/composer/a/g;Lcom/intercom/composer/a/d;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/intercom/composer/a/e$1;

    invoke-direct {v0, p0}, Lcom/intercom/composer/a/e$1;-><init>(Lcom/intercom/composer/a/e;)V

    iput-object v0, p0, Lcom/intercom/composer/a/e;->blu:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/intercom/composer/a/e;->background:Landroid/view/View;

    iput-object p2, p0, Lcom/intercom/composer/a/e;->blo:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/intercom/composer/a/e;->blp:Lcom/intercom/composer/a/g;

    iput-object p4, p0, Lcom/intercom/composer/a/e;->blq:Lcom/intercom/composer/a/d;

    new-array v0, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "scaleX"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/a/e;->blr:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/intercom/composer/a/e;->blr:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-array v0, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "scaleX"

    new-array v2, v4, [F

    fill-array-data v2, :array_4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/composer/a/e;->bls:Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method
