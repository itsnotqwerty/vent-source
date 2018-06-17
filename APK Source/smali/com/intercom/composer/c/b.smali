.class public final Lcom/intercom/composer/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/intercom/composer/c/c;


# instance fields
.field private final bkU:Lcom/intercom/composer/c/d;

.field public final blN:Landroid/view/Window;

.field private final blP:Landroid/view/WindowManager;

.field public final blQ:Landroid/view/inputmethod/InputMethodManager;

.field private final blR:Landroid/content/SharedPreferences;

.field blS:Lcom/intercom/composer/c/c;

.field blT:Z

.field blU:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/intercom/composer/c/d;)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "keyboard"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/intercom/composer/c/b;-><init>(Landroid/view/Window;Landroid/view/WindowManager;Landroid/view/inputmethod/InputMethodManager;Landroid/content/SharedPreferences;Lcom/intercom/composer/c/d;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Window;Landroid/view/WindowManager;Landroid/view/inputmethod/InputMethodManager;Landroid/content/SharedPreferences;Lcom/intercom/composer/c/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intercom/composer/c/b;->blN:Landroid/view/Window;

    iput-object p2, p0, Lcom/intercom/composer/c/b;->blP:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/intercom/composer/c/b;->blQ:Landroid/view/inputmethod/InputMethodManager;

    iput-object p4, p0, Lcom/intercom/composer/c/b;->blR:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/intercom/composer/c/b;->bkU:Lcom/intercom/composer/c/d;

    iget-object v0, p0, Lcom/intercom/composer/c/b;->blN:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private vY()I
    .locals 4

    iget-object v0, p0, Lcom/intercom/composer/c/b;->blN:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/intercom/composer/c/b;->blP:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v3, :cond_0

    sub-int/2addr v0, v3

    :goto_0
    sub-int v0, v1, v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/c/b;->bkU:Lcom/intercom/composer/c/d;

    invoke-virtual {v0}, Lcom/intercom/composer/c/d;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/c/b;->blR:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "keyboard_height_portrait"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final dk(I)I
    .locals 3

    iget-object v0, p0, Lcom/intercom/composer/c/b;->blN:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget v1, Lcom/intercom/composer/g$c;->intercom_composer_keyboard_portrait_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/intercom/composer/c/b;->blR:Landroid/content/SharedPreferences;

    const-string v2, "keyboard_height_portrait"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v1, Lcom/intercom/composer/g$c;->intercom_composer_keyboard_landscape_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 4

    invoke-direct {p0}, Lcom/intercom/composer/c/b;->vY()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/intercom/composer/c/b;->bkU:Lcom/intercom/composer/c/d;

    invoke-virtual {v2}, Lcom/intercom/composer/c/d;->getOrientation()I

    move-result v2

    iget-boolean v3, p0, Lcom/intercom/composer/c/b;->blT:Z

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/intercom/composer/c/b;->blU:I

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/intercom/composer/c/b;->blT:Z

    iput v2, p0, Lcom/intercom/composer/c/b;->blU:I

    invoke-virtual {p0, v0, v1}, Lcom/intercom/composer/c/b;->a(ZI)V

    iget-object v2, p0, Lcom/intercom/composer/c/b;->blS:Lcom/intercom/composer/c/c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/intercom/composer/c/b;->blS:Lcom/intercom/composer/c/c;

    invoke-interface {v2, v0, v1}, Lcom/intercom/composer/c/c;->a(ZI)V

    goto :goto_1
.end method

.method public final vZ()Z
    .locals 1

    invoke-direct {p0}, Lcom/intercom/composer/c/b;->vY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
