.class public Lio/intercom/android/sdk/views/AdminIsTypingView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_MS:I = 0x64

.field private static final ANIMATION_DURATION_MS:I = 0xc8

.field private static final FADED_ALPHA:F = 0.7f

.field private static final IS_TYPING_DURATION_SECONDS:I = 0xa

.field private static final SMALL_SCALE:F = 0.4f


# instance fields
.field final animateDots:Ljava/lang/Runnable;

.field animating:Z

.field final dots:[Landroid/widget/ImageView;

.field final dotsAnimations:[Landroid/animation/Animator;

.field final endAnimation:Ljava/lang/Runnable;

.field private listener:Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v10, [Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dots:[Landroid/widget/ImageView;

    new-array v0, v10, [Landroid/animation/Animator;

    iput-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dotsAnimations:[Landroid/animation/Animator;

    iput-boolean v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->animating:Z

    new-instance v0, Lio/intercom/android/sdk/views/AdminIsTypingView$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/views/AdminIsTypingView$1;-><init>(Lio/intercom/android/sdk/views/AdminIsTypingView;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->animateDots:Ljava/lang/Runnable;

    new-instance v0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/views/AdminIsTypingView$2;-><init>(Lio/intercom/android/sdk/views/AdminIsTypingView;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->endAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_admin_is_typing:I

    invoke-static {v0, v2, p0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v2, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dots:[Landroid/widget/ImageView;

    sget v0, Lio/intercom/android/sdk/R$id;->dot1:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dots:[Landroid/widget/ImageView;

    sget v0, Lio/intercom/android/sdk/R$id;->dot2:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v9

    iget-object v2, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dots:[Landroid/widget/ImageView;

    sget v0, Lio/intercom/android/sdk/R$id;->dot3:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v8

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v0, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move v0, v1

    :goto_0
    iget-object v5, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dotsAnimations:[Landroid/animation/Animator;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dots:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v6, v1

    aput-object v2, v6, v9

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v6, v0, 0x64

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v6, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->dotsAnimations:[Landroid/animation/Animator;

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->setupEndCondition()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/views/AdminIsTypingView;)Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->listener:Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;

    return-object v0
.end method

.method private setupEndCondition()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->endAnimation:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lio/intercom/android/sdk/views/AdminIsTypingView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public beginAnimation()V
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->animating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->animating:Z

    iget-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->animateDots:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public cancelTypingAnimation()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->endAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public renewTypingAnimation()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->endAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->setupEndCondition()V

    return-void
.end method

.method public setListener(Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView;->listener:Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;

    return-void
.end method
