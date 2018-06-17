.class public final Lcom/vent/ActVent;
.super Lcom/vent/a;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/ActVent$a;
    }
.end annotation


# static fields
.field static bZd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vent/a/k;",
            ">;"
        }
    .end annotation
.end field

.field static bZe:Z

.field static final bZg:Lcom/vent/a/m;

.field static final bZh:Lcom/vent/a/m;

.field static final bZi:Lcom/vent/a/m;

.field private static final bZj:[Ljava/lang/String;


# instance fields
.field private bUS:I

.field private bUT:I

.field bVh:Lcom/vent/a/z;

.field bYS:Lcom/vent/a/g;

.field bYT:Landroid/widget/MultiAutoCompleteTextView;

.field bYU:Z

.field private bYV:Z

.field private bYW:Landroid/widget/ImageButton;

.field bYX:Landroid/widget/TextView;

.field bYY:Lcom/google/android/gms/common/api/f;

.field bYZ:Landroid/location/Location;

.field private final bYb:[Z

.field bZa:Landroid/location/LocationManager;

.field private bZb:Landroid/widget/ImageView;

.field private bZc:Landroid/widget/TextView;

.field private bZf:I

.field private bZk:Lcom/google/android/gms/location/c;

.field private bZl:Landroid/location/LocationListener;

.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/vent/ActVent;->bZe:Z

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "00000000-0000-0000-0000-000000000001"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/ActVent;->bZg:Lcom/vent/a/m;

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "00000000-0000-0000-0000-000000000002"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/ActVent;->bZh:Lcom/vent/a/m;

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "00000000-0000-0000-0000-000000000003"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/ActVent;->bZi:Lcom/vent/a/m;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nsfw"

    aput-object v2, v0, v1

    const-string v1, "nfsw"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vent/ActVent;->bZj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    iput v0, p0, Lcom/vent/ActVent;->orientation:I

    iput v0, p0, Lcom/vent/ActVent;->bUS:I

    iput v0, p0, Lcom/vent/ActVent;->bUT:I

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    new-instance v0, Lcom/vent/ActVent$3;

    invoke-direct {v0, p0}, Lcom/vent/ActVent$3;-><init>(Lcom/vent/ActVent;)V

    iput-object v0, p0, Lcom/vent/ActVent;->bZk:Lcom/google/android/gms/location/c;

    new-instance v0, Lcom/vent/ActVent$6;

    invoke-direct {v0, p0}, Lcom/vent/ActVent$6;-><init>(Lcom/vent/ActVent;)V

    iput-object v0, p0, Lcom/vent/ActVent;->bZl:Landroid/location/LocationListener;

    return-void
.end method

.method public static Cm()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActVent;->bZe:Z

    return-void
.end method

.method private Cn()V
    .locals 8

    const/4 v4, 0x0

    const v0, 0x7f090182

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    sget-object v1, Lcom/vent/bb;->ciR:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/vent/bb;->ciR:Ljava/util/Map;

    iget-object v2, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    iget-object v2, v2, Lcom/vent/a/g;->cjy:Lcom/vent/a/m;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    move v3, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vent/a/m;

    invoke-static {v2}, Lcom/vent/a/o;->e(Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v2

    sget-object v5, Lcom/vent/a/o;->cky:Lcom/vent/a/o;

    iget-object v5, v5, Lcom/vent/a/o;->cjy:Lcom/vent/a/m;

    invoke-static {v2, v5}, Lcom/vent/a/b;->a(Lcom/vent/a/b;Lcom/vent/a/m;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Landroid/support/v7/widget/r;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v5, 0x7f0800a7

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v5, p0, Lcom/vent/ActVent;->bZf:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcom/vent/s;->cbJ:I

    const/4 v7, -0x1

    invoke-direct {v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    :goto_2
    iput v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Lcom/vent/ActVent;->bZf:I

    iget v6, p0, Lcom/vent/ActVent;->bZf:I

    invoke-static {p0, v5, v6}, Lcom/vent/d/a;->c(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v5, p0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v6, Lcom/vent/MyApplication;->cgr:I

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget v6, p0, Lcom/vent/ActVent;->bZf:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v2, :cond_1

    const-string v2, "???"

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vent/a/o;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_2
    sget v5, Lcom/vent/MyApplication;->cge:I

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/support/v7/widget/r;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/r;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f08007a

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p0, Lcom/vent/ActVent;->bZf:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v1, Lcom/vent/MyApplication;->cgs:I

    sget v3, Lcom/vent/MyApplication;->cgs:I

    invoke-virtual {v2, v4, v1, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/vent/s;->cbJ:I

    const/4 v5, -0x2

    invoke-direct {v3, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_4
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/vent/ActVent;->bZf:I

    iget v3, p0, Lcom/vent/ActVent;->bZf:I

    invoke-static {p0, v1, v3}, Lcom/vent/d/a;->c(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {v1}, Lcom/vent/a/z;->Fl()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_4
    sget v1, Lcom/vent/MyApplication;->cge:I

    goto :goto_4

    :cond_5
    const/4 v4, 0x4

    goto :goto_5
.end method

.method private Co()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/vent/ActVent;->bYV:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    const v1, 0x7f0f0073

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v3, v3, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vent/ActVent;->bYW:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vent/ActVent;->bYW:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/vent/ActVent;->bYV:Z

    if-eqz v0, :cond_6

    const v0, 0x7f08010f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/vent/ActVent;->ep(I)V

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/vent/ActVent;->bYV:Z

    iput-object v1, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v1, v0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const v0, 0x7f08010e

    goto :goto_1
.end method

.method private Cp()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/f$b;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/f$c;)V

    :try_start_0
    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Cq()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0}, Lcom/vent/ActVent;->Cr()V

    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/d;->bdA:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    const v1, 0x7f0f0077

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/google/android/gms/location/d;->bdA:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->uc()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    const/16 v3, 0x66

    iput v3, v2, Lcom/google/android/gms/location/LocationRequest;->zD:I

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->ue()V

    iput-wide v8, v2, Lcom/google/android/gms/location/LocationRequest;->bdr:J

    iget-boolean v3, v2, Lcom/google/android/gms/location/LocationRequest;->bdt:Z

    if-nez v3, :cond_0

    iget-wide v4, v2, Lcom/google/android/gms/location/LocationRequest;->bdr:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, v2, Lcom/google/android/gms/location/LocationRequest;->bds:J

    :cond_0
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->ue()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/location/LocationRequest;->bdt:Z

    iput-wide v8, v2, Lcom/google/android/gms/location/LocationRequest;->bds:J

    iget-object v3, p0, Lcom/vent/ActVent;->bZk:Lcom/google/android/gms/location/c;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)Lcom/google/android/gms/common/api/g;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ActVent SecurityException getting FusedLocationApi"

    invoke-static {v0}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ActVent;->Cs()V

    goto :goto_1
.end method

.method private Cu()V
    .locals 2

    iget-object v1, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f08007b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const v0, 0x7f08007a

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/z;)V
    .locals 3

    const/16 v2, 0x9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vent/ActVent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/k;)V
    .locals 2

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    new-instance v1, Lcom/vent/ActVent$1;

    invoke-direct {v1}, Lcom/vent/ActVent$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Lcom/vent/a/k;)V
    .locals 1

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private ep(I)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    aput-boolean v2, v0, p1

    invoke-direct {p0, p1}, Lcom/vent/ActVent;->er(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private er(I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/vent/ActVent;->ep(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->et(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/f$a;

    invoke-virtual {p0}, Lcom/vent/ActVent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f$a;->b(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f$a;->c(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/d;->aYZ:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a;->nc()Lcom/google/android/gms/common/api/f;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->connect()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/vent/ActVent;->Cq()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final Cr()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/d;->bdA:Lcom/google/android/gms/location/a;

    iget-object v1, p0, Lcom/vent/ActVent;->bYY:Lcom/google/android/gms/common/api/f;

    iget-object v2, p0, Lcom/vent/ActVent;->bZk:Lcom/google/android/gms/location/c;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/c;)Lcom/google/android/gms/common/api/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final Cs()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    sput-object v0, Lcom/vent/bb;->ciy:Landroid/location/Location;

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    const v1, 0x7f0f00ae

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/vent/ActVent$4;

    invoke-direct {v0, p0}, Lcom/vent/ActVent$4;-><init>(Lcom/vent/ActVent;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    return-void
.end method

.method final Ct()V
    .locals 5

    const v0, 0x7f080114

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v1, :cond_1

    const v1, 0x7f0f00ec

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vent/ActVent;->bZc:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/vent/ActVent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vent/ActVent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/vent/ActVent;->bZc:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget v1, v1, Lcom/vent/a/z;->clc:I

    invoke-static {v1}, Lcom/vent/a/z;->eO(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget v2, v2, Lcom/vent/a/z;->clc:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v2, v2, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v2, v2, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v1, v0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    sget-object v0, Lcom/vent/ActVent;->bZd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/k;

    iget-object v3, v0, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-static {v3, v1}, Lcom/vent/a/m;->b(Lcom/vent/a/m;Lcom/vent/a/m;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v0, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    :cond_3
    const v0, 0x7f080111

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    invoke-virtual {v1}, Lcom/vent/a/k;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const v0, 0x7f080112

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f080113

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final Cv()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/vent/ActVent;->bZl:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method final a(IZLjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vent"

    iget-object v2, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "backLongPress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/vent/ActVent;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vent/ActVent;->finish()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 8

    invoke-direct {p0}, Lcom/vent/ActVent;->Cp()V

    invoke-virtual {p0}, Lcom/vent/ActVent;->Cv()V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iput-object v0, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    invoke-virtual {p0}, Lcom/vent/ActVent;->Cs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1
    iget-object v0, p0, Lcom/vent/ActVent;->bZa:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1388

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/vent/ActVent;->bZl:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ActVent;->Cv()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final aR(Z)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iput-object v0, v1, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/vent/bb;->ea(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/vent/ActVent;->aT(Z)V

    :goto_1
    return v3

    :cond_1
    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->body:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f004b

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x7f0f0049

    new-instance v2, Lcom/vent/ActVent$5;

    invoke-direct {v2, p0}, Lcom/vent/ActVent$5;-><init>(Lcom/vent/ActVent;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v4}, Lcom/vent/bb;->ea(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    goto :goto_0
.end method

.method public final aT(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "cancel"

    invoke-virtual {p0, v0, p1, v1}, Lcom/vent/ActVent;->a(IZLjava/lang/String;)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/vent/ActVent;->supportInvalidateOptionsMenu()V

    iget v0, p0, Lcom/vent/ActVent;->bUS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/vent/ActVent;->bUT:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget v1, p0, Lcom/vent/ActVent;->bUS:I

    iget v2, p0, Lcom/vent/ActVent;->bUT:I

    invoke-static {v0, p0, p1, v1, v2}, Lcom/vent/d/e;->a(Landroid/widget/EditText;Landroid/text/TextWatcher;Ljava/lang/CharSequence;II)V

    :cond_0
    iput v3, p0, Lcom/vent/ActVent;->bUT:I

    iput v3, p0, Lcom/vent/ActVent;->bUS:I

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final cG(I)V
    .locals 0

    return-void
.end method

.method final et(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActVent;->bYV:Z

    invoke-direct {p0}, Lcom/vent/ActVent;->Co()V

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/vent/ActVent;->Cq()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v2, p0, Lcom/vent/ActVent;->bYV:Z

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/vent/ActVent;->bYV:Z

    iget-boolean v0, p0, Lcom/vent/ActVent;->bYV:Z

    invoke-static {p0, v0}, Lcom/vent/ax;->f(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/vent/ActVent;->Co()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {v3}, Lcom/vent/a/z;->Fl()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/vent/a/z;->bp(Z)V

    invoke-direct {p0}, Lcom/vent/ActVent;->Cu()V

    invoke-direct {p0}, Lcom/vent/ActVent;->Cn()V

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f0030

    :goto_3
    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    const v0, 0x7f0f002f

    goto :goto_3

    :sswitch_2
    iget-boolean v0, p0, Lcom/vent/ActVent;->bTz:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActVent;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/ActVent$a;->b(Landroid/support/v4/app/n;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090088 -> :sswitch_1
        0x7f090121 -> :sswitch_2
        0x7f0901c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/vent/ActVent;->orientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vent/ActVent;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/vent/ActVent;->orientation:I

    invoke-virtual {p0}, Lcom/vent/ActVent;->recreate()V

    :cond_1
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v3, -0x1000000

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->setContentView(I)V

    const v1, 0x7f0902b5

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/vent/ActVent;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/vent/ActVent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "vent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vent/a/z;

    iput-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz p1, :cond_0

    const-string v1, "vent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vent/a/z;

    iput-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    :cond_0
    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v1, :cond_3

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    iget-object v1, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    invoke-static {v1}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v6

    const v1, 0x7f090232

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vent/CachedImageView;

    sget v2, Lcom/vent/MyApplication;->cgm:I

    sget v5, Lcom/vent/MyApplication;->cgm:I

    invoke-virtual {v1, v2, v5}, Lcom/vent/CachedImageView;->aH(II)V

    const v2, 0x7f08012b

    invoke-virtual {v1, v2}, Lcom/vent/CachedImageView;->setDefaultImage(I)V

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    sget v5, Lcom/vent/MyApplication;->cgm:I

    sget v7, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v2, v1, v5, v7}, Lcom/vent/d/c;->a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V

    const v1, 0x7f0902d5

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/vent/d/e;->cmW:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090186

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/vent/d/e;->cmZ:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    invoke-virtual {v2}, Lcom/vent/a/g;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/vent/d/e;->cmU:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-static {p0}, Lcom/vent/MyApplication;->br(Landroid/content/Context;)Z

    move-result v7

    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Lcom/vent/a/h;->bm(Z)I

    move-result v2

    move v5, v2

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Lcom/vent/a/h;->bn(Z)I

    move-result v2

    :goto_3
    iput v2, p0, Lcom/vent/ActVent;->bZf:I

    if-eqz v6, :cond_7

    invoke-virtual {v6, v7}, Lcom/vent/a/h;->bo(Z)I

    move-result v2

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p0, v6}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Lcom/vent/a/h;)V

    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/vent/d/e;->FA()V

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    sget-object v2, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Lcom/vent/d/e$b;

    invoke-virtual {p0}, Lcom/vent/ActVent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/vent/ActVent;->bZf:I

    invoke-direct {v2, v3, v5}, Lcom/vent/d/e$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, Lcom/vent/d/e$c;

    invoke-direct {v2}, Lcom/vent/d/e$c;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v8}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    invoke-virtual {p0}, Lcom/vent/ActVent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v9, :cond_1

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getImeOptions()I

    move-result v2

    const v3, -0x10000001

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setImeOptions(I)V

    :cond_1
    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v2

    const v3, -0x10001

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v2, v1, Lcom/vent/a/z;->body:Ljava/lang/String;

    const v3, 0x7fffffff

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v5, v1, Lcom/vent/a/z;->cjC:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v6, v1, Lcom/vent/a/z;->cjE:Ljava/util/HashMap;

    move-object v1, v0

    move v7, v4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(II)V

    :cond_2
    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vent/ActVent;->bZf:I

    iget v2, p0, Lcom/vent/ActVent;->bZf:I

    invoke-static {p0, v1, v2}, Lcom/vent/d/a;->c(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vent/ActVent;->bZf:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/vent/ActVent;->Cu()V

    const v0, 0x7f0901c8

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vent/ActVent;->bYW:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/vent/ActVent;->bYW:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/vent/ActVent;->bZf:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActVent;->bYW:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    :goto_5
    iput-boolean v8, p0, Lcom/vent/ActVent;->bYV:Z

    invoke-direct {p0}, Lcom/vent/ActVent;->Co()V

    const v0, 0x7f090121

    invoke-virtual {p0, v0}, Lcom/vent/ActVent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vent/ActVent;->bZc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vent/ActVent;->bZc:Landroid/widget/TextView;

    sget-object v1, Lcom/vent/d/e;->cmX:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bZc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vent/ActVent;->Ct()V

    invoke-direct {p0}, Lcom/vent/ActVent;->Cn()V

    iget-object v0, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/vent/s;->cbJ:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v1}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f0f005d

    invoke-virtual {p0, v2}, Lcom/vent/ActVent;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    move v5, v3

    goto/16 :goto_2

    :cond_6
    move v2, v3

    goto/16 :goto_3

    :cond_7
    const/4 v2, -0x1

    goto/16 :goto_4

    :cond_8
    move v8, v4

    goto :goto_5
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActVent;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    if-eqz v0, :cond_0

    const v0, 0x7f0c0010

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0c0012

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iput-object v1, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    :cond_0
    iput-object v1, p0, Lcom/vent/ActVent;->bYW:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/vent/ActVent;->bZc:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vent/ActVent;->bZb:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vent/ActVent;->bYX:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vent/ActVent;->Cr()V

    invoke-direct {p0}, Lcom/vent/ActVent;->Cp()V

    iput-object v1, p0, Lcom/vent/ActVent;->bZk:Lcom/google/android/gms/location/c;

    invoke-virtual {p0}, Lcom/vent/ActVent;->Cv()V

    iput-object v1, p0, Lcom/vent/ActVent;->bZl:Landroid/location/LocationListener;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/vent/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :cond_0
    :goto_0
    return v8

    :sswitch_0
    iget-boolean v0, p0, Lcom/vent/ActVent;->bYU:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x2710

    if-le v2, v4, :cond_2

    invoke-static {p0}, Lcom/vent/d/c;->bF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0160

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/e;->ew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_3
    if-ltz v5, :cond_7

    const/16 v2, 0xc8

    if-ge v5, v2, :cond_7

    sget-object v7, Lcom/vent/ActVent;->bZj:[Ljava/lang/String;

    array-length v9, v7

    move v4, v6

    move v2, v3

    :goto_2
    if-ge v4, v9, :cond_4

    aget-object v2, v7, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v2

    if-ltz v4, :cond_7

    if-ge v4, v5, :cond_7

    add-int/lit8 v2, v4, -0x1

    :goto_3
    if-ltz v2, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v6

    :goto_4
    if-eqz v2, :cond_b

    add-int/lit8 v2, v4, 0x4

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1b

    :goto_6
    if-ltz v2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n\n\n\n\n\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v3, :cond_e

    move-object v7, v1

    :goto_8
    if-eqz v7, :cond_8

    const-string v3, "id"

    invoke-virtual {v7}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v3, :cond_9

    const-string v3, "emotion_id"

    iget-object v4, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v4, v4, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v3, "body"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    if-eqz v0, :cond_f

    const-string v0, "city"

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v3, v3, Lcom/vent/a/z;->ckY:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_9
    iget-object v0, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    if-eqz v0, :cond_a

    const-string v0, "longitude"

    iget-object v3, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "latitude"

    iget-object v3, p0, Lcom/vent/ActVent;->bYZ:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_a
    if-nez v7, :cond_12

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_10

    move-object v0, v1

    :goto_a
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/vent/a/h;->EV()Z

    move-result v3

    if-eqz v3, :cond_11

    const v0, 0x7f0f0263

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->d(Landroid/content/Context;II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v4, v5, 0x1

    move v2, v8

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_c

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_c
    :pswitch_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1b

    move v2, v5

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    :pswitch_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    const-string v0, ""

    goto/16 :goto_7

    :cond_e
    :try_start_1
    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v7, v3, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    goto/16 :goto_8

    :cond_f
    const-string v0, "city"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->ckX:Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/d/c;->h(Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v0

    goto :goto_a

    :cond_11
    iget-object v3, v0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Lcom/vent/b/a;->clh:Ljava/util/Map;

    sget-boolean v4, Lcom/vent/b/a;->cle:Z

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/vent/b/a;->Fo()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/b/f;

    if-eqz v0, :cond_12

    iget-object v3, v0, Lcom/vent/b/f;->cmm:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "emotion_category_receipt"

    iget-object v4, v0, Lcom/vent/b/f;->cmm:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subscription"

    iget-object v0, v0, Lcom/vent/b/f;->cmg:Ljava/lang/String;

    const-string v4, "subs"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_12
    const-string v3, "comment_setting"

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {v0}, Lcom/vent/a/z;->Fl()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_13
    const-string v0, "comments_enabled"

    :goto_d
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/a/z;->eN(I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_e
    :pswitch_3
    const-string v3, "privacy_setting"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "group_id"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "vent"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActVent;->bYU:Z

    new-instance v0, Lcom/vent/ActVent$2;

    if-eqz v7, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/my/vents/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_f
    if-eqz v7, :cond_19

    const-string v4, "PUT"

    :goto_10
    if-eqz v7, :cond_1a

    const v6, 0x7f0f0108

    :goto_11
    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/vent/ActVent$2;-><init>(Lcom/vent/ActVent;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/vent/a/m;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, v0, Lcom/vent/a/h;->cjZ:Ljava/lang/String;

    goto/16 :goto_c

    :cond_16
    const-string v0, "comments_disabled"

    goto :goto_d

    :cond_17
    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget v0, v0, Lcom/vent/a/z;->clc:I

    invoke-static {v0}, Lcom/vent/a/z;->eN(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget v3, v3, Lcom/vent/a/z;->clc:I

    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v3, v3, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v3, v3, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v3, v3, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    if-eqz v3, :cond_14

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v1, v1, Lcom/vent/a/z;->bYM:Lcom/vent/a/k;

    iget-object v1, v1, Lcom/vent/a/k;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1}, Lcom/vent/a/m;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_18
    const-string v3, "api/v1/my/vents.json"

    goto :goto_f

    :cond_19
    const-string v4, "POST"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :cond_1a
    const v6, 0x7f0f0161

    goto :goto_11

    :cond_1b
    move v2, v3

    goto/16 :goto_6

    :cond_1c
    move v2, v8

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x7f090254 -> :sswitch_0
        0x7f0902d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/vent/ActVent;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/bb;->ea(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_0
    invoke-super {p0}, Lcom/vent/a;->onPause()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    iget-object v0, v0, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    if-eqz v0, :cond_0

    const v0, 0x7f090254

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVent;->bYT:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/vent/ActVent;->bYS:Lcom/vent/a/g;

    invoke-static {v0}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/view/Menu;Lcom/vent/a/h;)V

    invoke-super {p0, p1}, Lcom/vent/a;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0902d9

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/vent/ActVent;->er(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/ActVent;->bYb:[Z

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "PostVent"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vent/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "vent"

    iget-object v1, p0, Lcom/vent/ActVent;->bVh:Lcom/vent/a/z;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput p2, p0, Lcom/vent/ActVent;->bUS:I

    iput p4, p0, Lcom/vent/ActVent;->bUT:I

    return-void
.end method
