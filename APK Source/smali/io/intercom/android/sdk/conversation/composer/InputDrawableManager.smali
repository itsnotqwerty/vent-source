.class public Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;
.super Ljava/lang/Object;


# static fields
.field private static final STATES:[[I


# instance fields
.field private final colorStateList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v3, [I

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;->STATES:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    sget v2, Lio/intercom/android/sdk/R$color;->intercom_input_default_color:I

    invoke-static {p1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;->STATES:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;->colorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public createDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1, p2}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/composer/InputDrawableManager;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method
