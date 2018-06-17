.class public final Lcom/vent/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vent/d/c$a;,
        Lcom/vent/d/c$c;,
        Lcom/vent/d/c$b;
    }
.end annotation


# static fields
.field public static final cmG:Lcom/vent/a/m;

.field public static final cmH:Ljava/lang/CharSequence;

.field private static final cmI:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final cmJ:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final cmK:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static cmL:Ljava/io/File;

.field static cmM:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vent/a/m;

    const-string v1, "d262e42f-a4cf-3da5-9f4f-7c4ad71d1489"

    invoke-direct {v0, v1}, Lcom/vent/a/m;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/vent/d/c;->cmG:Lcom/vent/a/m;

    const-string v0, "\ud83d\udc51"

    sput-object v0, Lcom/vent/d/c;->cmH:Ljava/lang/CharSequence;

    new-instance v0, Lcom/vent/d/c$1;

    invoke-direct {v0}, Lcom/vent/d/c$1;-><init>()V

    sput-object v0, Lcom/vent/d/c;->cmI:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/vent/d/c$2;

    invoke-direct {v0}, Lcom/vent/d/c$2;-><init>()V

    sput-object v0, Lcom/vent/d/c;->cmJ:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/vent/d/c$3;

    invoke-direct {v0}, Lcom/vent/d/c$3;-><init>()V

    sput-object v0, Lcom/vent/d/c;->cmK:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Fz()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;
    .locals 4

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/n;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/app/i;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/o;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/r;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/vent/d/c;->a(Landroid/support/v4/app/n;ILandroid/support/v4/app/r;I)Landroid/support/v4/app/i;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/g;",
            ">;",
            "Lcom/vent/a/m;",
            ")",
            "Lcom/vent/a/g;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/g;

    if-nez v0, :cond_1

    :cond_0
    sget-object v1, Lcom/vent/bb;->ciP:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a/g;

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/HashMap;Lcom/vent/a/g;)Lcom/vent/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/h;",
            ">;",
            "Lcom/vent/a/g;",
            ")",
            "Lcom/vent/a/h;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vent/a/g;->cjQ:Lcom/vent/a/m;

    invoke-static {p0, v0}, Lcom/vent/d/c;->b(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lt p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vent/d/c;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gtz p1, :cond_2

    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p0, :cond_1

    const-string v0, "No Net"

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    if-eqz p2, :cond_3

    const-string v2, "exception"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "errors"

    invoke-static {p2, v1}, Lcom/vent/d/c;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "error"

    invoke-static {p2, v1}, Lcom/vent/d/c;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    if-lez p1, :cond_4

    if-nez p0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_8

    const-string v0, "Server Error"

    goto/16 :goto_0

    :cond_5
    const-string v2, "exception"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const v2, 0x7f0f0111

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v0, 0x7f0f0112

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_3
.end method

.method public static a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TT1;TT2;>;",
            "Ljava/util/HashMap",
            "<TT1;TT2;>;)",
            "Ljava/util/HashMap",
            "<TT1;TT2;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/vent/d/c;->l(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Lcom/vent/d/c$b;)V
    .locals 7

    const/16 v6, 0x20

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    aget-object v0, v3, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v3, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    aget-object v0, v3, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_4

    move v0, v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_5

    aget-object v0, v3, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_5

    aget-object v0, v3, v1

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_5

    move v0, v1

    :cond_1
    :goto_2
    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p3, Lcom/vent/d/c$b;->cmT:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/vent/d/c$b;->run()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    aget-object v0, v3, v1

    new-instance v1, Lcom/vent/d/c$4;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/vent/d/c$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/support/design/widget/TextInputLayout;Lcom/vent/d/c$b;)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_3
.end method

.method public static a(Landroid/app/Dialog;I)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v2, 0x1

    int-to-float v3, p1

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/vent/d/c;->b(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/h;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/h;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/support/design/widget/CollapsingToolbarLayout;Lcom/vent/a/h;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_7

    invoke-virtual {p3, p0}, Lcom/vent/a/h;->bB(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    :goto_1
    if-eqz p3, :cond_8

    invoke-virtual {p3, p0}, Lcom/vent/a/h;->bC(Landroid/content/Context;)I

    move-result v0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/high16 v0, 0x19000000

    invoke-static {v0, v1}, Landroid/support/v4/a/a;->l(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/vent/d/c$c;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_7
    const/high16 v0, -0x1000000

    move v1, v0

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/view/Menu;Lcom/vent/a/h;)V
    .locals 6

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3, p0}, Lcom/vent/a/h;->bC(Landroid/content/Context;)I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/vent/d/c$5;

    invoke-direct {v1, p1, p2, v0}, Lcom/vent/d/c$5;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/view/Menu;I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/d;Landroid/view/Menu;Lcom/vent/a/h;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-static {p0, v0, p1, p2}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/view/Menu;Lcom/vent/a/h;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/d;Lcom/vent/a/h;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/vent/d/c;->a(Landroid/support/v7/app/d;Landroid/support/v7/widget/Toolbar;Landroid/support/design/widget/CollapsingToolbarLayout;Lcom/vent/a/h;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/l;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/app/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/l;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/k;Lcom/vent/CachedImageView;II)V
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/a/k;->cki:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vent/d/c;->a(Ljava/lang/String;Lcom/vent/CachedImageView;IIII)V

    goto :goto_0
.end method

.method public static a(Lcom/vent/a/x;Lcom/vent/CachedImageView;II)V
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/a/x;->ckN:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/vent/d/c;->a(Ljava/lang/String;Lcom/vent/CachedImageView;IIII)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-static {v0}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/vent/CachedImageView;IIII)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/vent/CachedImageView;->cdR:Ljava/lang/Object;

    instance-of v0, v0, Lcom/vent/d/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vent/CachedImageView;->cdR:Ljava/lang/Object;

    check-cast v0, Lcom/vent/d/c$a;

    iput-object v7, v0, Lcom/vent/d/c$a;->cdT:Lcom/vent/CachedImageView;

    iput-object v7, p1, Lcom/vent/CachedImageView;->cdR:Ljava/lang/Object;

    :cond_0
    if-nez p0, :cond_2

    invoke-virtual {p1, v7}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2, p3}, Lcom/vent/d/c;->aJ(II)[I

    move-result-object v0

    aget v2, v0, v4

    aget v6, v0, v8

    if-eqz v6, :cond_5

    invoke-static {p0, v2, v6}, Lcom/vent/d/c;->j(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p1, Lcom/vent/CachedImageView;->cdO:Lcom/vent/ae$c;

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/vent/CachedImageView;->cdP:I

    if-ne v0, v2, :cond_3

    iget v3, p1, Lcom/vent/CachedImageView;->cdQ:I

    if-eqz v6, :cond_6

    move v0, v6

    :goto_2
    if-ne v3, v0, :cond_3

    iget-object v0, p1, Lcom/vent/CachedImageView;->cdM:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {p1}, Lcom/vent/CachedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/vent/d/c$a;

    invoke-direct {v5, v4}, Lcom/vent/d/c$a;-><init>(B)V

    iput-object p1, v5, Lcom/vent/d/c$a;->cdT:Lcom/vent/CachedImageView;

    iput-object v5, p1, Lcom/vent/CachedImageView;->cdR:Ljava/lang/Object;

    if-eqz v6, :cond_7

    move v3, v6

    :goto_3
    invoke-static/range {v0 .. v5}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IIZLcom/vent/ae$a;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-static {p4, p5}, Lcom/vent/d/c;->aJ(II)[I

    move-result-object v1

    aget v3, v1, v4

    aget v1, v1, v8

    if-eqz v1, :cond_8

    :goto_4
    mul-int v5, v3, v1

    if-eqz v6, :cond_9

    :goto_5
    mul-int v2, v3, v6

    sget v1, Lcom/vent/MyApplication;->cgn:I

    if-eq v2, v1, :cond_b

    sget v1, Lcom/vent/MyApplication;->cgn:I

    if-lt v5, v1, :cond_b

    sget v1, Lcom/vent/MyApplication;->cgm:I

    invoke-static {p0, v1}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/vent/MyApplication;->cgm:I

    sget v4, Lcom/vent/MyApplication;->cgm:I

    invoke-static {v0, v1, v3, v4, p1}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IILcom/vent/ae$a;)I

    move-result v4

    move v1, v4

    :goto_6
    if-nez v1, :cond_4

    sget v3, Lcom/vent/MyApplication;->cgp:I

    sget v4, Lcom/vent/MyApplication;->cgn:I

    if-eq v3, v4, :cond_4

    sget v3, Lcom/vent/MyApplication;->cgp:I

    if-eq v2, v3, :cond_4

    sget v3, Lcom/vent/MyApplication;->cgp:I

    if-lt v5, v3, :cond_4

    sget v1, Lcom/vent/MyApplication;->cgo:I

    invoke-static {p0, v1}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/vent/MyApplication;->cgo:I

    sget v4, Lcom/vent/MyApplication;->cgo:I

    invoke-static {v0, v1, v3, v4, p1}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IILcom/vent/ae$a;)I

    move-result v1

    :cond_4
    if-nez v1, :cond_a

    sget v3, Lcom/vent/MyApplication;->cgl:I

    sget v4, Lcom/vent/MyApplication;->cgn:I

    if-eq v3, v4, :cond_a

    sget v3, Lcom/vent/MyApplication;->cgl:I

    sget v4, Lcom/vent/MyApplication;->cgp:I

    if-eq v3, v4, :cond_a

    sget v3, Lcom/vent/MyApplication;->cgl:I

    if-eq v2, v3, :cond_a

    sget v2, Lcom/vent/MyApplication;->cgl:I

    if-lt v5, v2, :cond_a

    sget v1, Lcom/vent/MyApplication;->cgk:I

    invoke-static {p0, v1}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/vent/MyApplication;->cgk:I

    sget v3, Lcom/vent/MyApplication;->cgk:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/vent/ae;->a(Landroid/content/Context;Ljava/lang/String;IILcom/vent/ae$a;)I

    move-result v0

    :goto_7
    if-nez v0, :cond_1

    invoke-virtual {p1, v7}, Lcom/vent/CachedImageView;->setCachedImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p0, v2}, Lcom/vent/d/c;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :cond_7
    move v3, v2

    goto/16 :goto_3

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    move v6, v2

    goto :goto_5

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    move v1, v4

    goto :goto_6
.end method

.method public static a(Ljava/lang/ref/WeakReference;Landroid/view/Menu;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Landroid/view/Menu;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/x;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vent/a/r;",
            ">;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/a;

    invoke-virtual {v0}, Lcom/vent/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {v10, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v9}, Lcom/vent/d/e;->a(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;IILjava/lang/Object;Ljava/util/Map;ZZI)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    const/16 v0, 0x64

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-boolean v3, Lcom/vent/bb;->cij:Z

    if-nez v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.google.android.apps.translate.QuickTranslateActivity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "org.wikipedia"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "org.wikipedia.beta"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.google.android.apps.gsa.assist.LaunchNowOnTapActivity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v5, v6, v2, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.PROCESS_TEXT_READONLY"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v2, v3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_3

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0122

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f015d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static aI(II)[I
    .locals 3

    const v1, 0x7fffffff

    const/16 v2, 0x640

    const/16 v0, 0x1e0

    if-lt p0, v1, :cond_0

    if-ge p1, v1, :cond_1

    :cond_0
    if-le p0, v2, :cond_3

    mul-int/lit16 v1, p1, 0x640

    div-int/2addr v1, p0

    :goto_0
    if-le v1, v0, :cond_2

    mul-int/lit16 v2, v2, 0x1e0

    div-int v1, v2, v1

    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/vent/d/c;->eS(I)I

    move-result p0

    invoke-static {v0}, Lcom/vent/d/c;->eS(I)I

    move-result p1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, p1

    move v2, p0

    goto :goto_0
.end method

.method public static aJ(II)[I
    .locals 3

    if-lez p1, :cond_0

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/vent/d/c;->eR(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/vent/d/c;->aI(II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/vent/a/g;)Lcom/vent/a/h;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/h;",
            ">;",
            "Lcom/vent/a/m;",
            ")",
            "Lcom/vent/a/h;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/vent/a/h;->a(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v1, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/vent/a/h;->a(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/h;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/os/AsyncTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static b(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/support/design/widget/TextInputLayout;Landroid/widget/EditText;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0094

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return v1

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v3, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v3, v4

    :goto_2
    if-nez v2, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move v2, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0096

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0095

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v1, v4

    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x4000

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static bD(Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/vent/d/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vent/d/c;->cmL:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    const-string v3, "log.txt"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/vent/d/c;->cmL:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vent/d/c;->cmL:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/d/c;->cmL:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static bE(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static bF(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static bG(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/vent/a;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/vent/a;

    iget-boolean v0, p0, Lcom/vent/a;->bTy:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static bH(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/vent/AppWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/vent/AppWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/vent/d/c;->cmM:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p0}, Lme/leolin/shortcutbadger/c;->ce(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vent/d/c;->cmM:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/vent/d/c;->cmM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/vent/bb;->ciF:I

    sget v1, Lcom/vent/bb;->ciG:I

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lme/leolin/shortcutbadger/c;->w(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget v0, Lcom/vent/bb;->cig:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget v0, Lcom/vent/bb;->cig:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    sget v0, Lcom/vent/bb;->ciF:I

    if-nez v0, :cond_3

    sget v0, Lcom/vent/bb;->ciG:I

    if-nez v0, :cond_3

    :try_start_2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static bI(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static bJ(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;II)I
    .locals 4

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x30

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    add-int/lit8 v1, v1, -0x30

    goto :goto_0

    :cond_1
    mul-int/2addr v0, v1

    return v0
.end method

.method public static d(Landroid/content/Context;II)V
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0901aa

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0, p2}, Lcom/vent/d/c;->b(Landroid/view/View;Ljava/lang/CharSequence;I)V

    return-void

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static d([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    array-length v0, p0

    if-gtz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/vent/d/c;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0
.end method

.method public static e(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/vent/d/c;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static eR(I)I
    .locals 2

    const v0, 0x7fffffff

    if-ge p0, v0, :cond_0

    const/16 v0, 0xb4

    if-ge p0, v0, :cond_1

    const/16 v0, 0x78

    :goto_0
    const/16 v1, 0x168

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    add-int/lit8 v0, p0, 0x3c

    div-int/lit8 v0, v0, 0x78

    mul-int/lit8 v0, v0, 0x78

    goto :goto_0
.end method

.method private static eS(I)I
    .locals 1

    const/16 v0, 0x4b

    if-ge p0, v0, :cond_0

    const/16 v0, 0x3c

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x3c

    div-int/lit8 v0, v0, 0x78

    mul-int/lit8 v0, v0, 0x78

    goto :goto_0
.end method

.method public static eo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x4d

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2

    const/16 v4, 0x6d

    if-gt v3, v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0xd

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x4e

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_3
    const/16 v4, 0x6e

    if-lt v3, v4, :cond_5

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0xd

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static et(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/vent/d/c;->cmJ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-static {p0, v2, v3}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-static {p0, v3, v4}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-static {p0, v4, v5}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-static {p0, v5, v6}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-static {p0, v6, v7}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/16 v2, 0x14

    const/16 v3, 0x17

    invoke-static {p0, v2, v3}, Lcom/vent/d/c;->d(Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/vent/d/c;->cmI:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static eu(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/vent/d/c;->h(ILjava/lang/String;)V

    return-void
.end method

.method public static ev(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v1, "http://res.cloudinary.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "https://res.cloudinary.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "/http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "://thumbor.ventfeed.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "https:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static f(Ljava/util/Collection;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Lcom/vent/a/m;)Lcom/vent/a/g;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    instance-of v2, p0, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    check-cast p0, Lorg/json/JSONArray;

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ". "

    invoke-static {v2, v3}, Lcom/vent/d/c;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, ", "

    invoke-static {v0, v4}, Lcom/vent/d/c;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static h(Lcom/vent/a/m;)Lcom/vent/a/h;
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vent/d/c;->a(Ljava/util/HashMap;Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v0

    return-object v0
.end method

.method private static h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ". "

    invoke-static {v1, v2}, Lcom/vent/d/c;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "exception"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public static h(ILjava/lang/String;)V
    .locals 13

    const/16 v12, 0x20

    const/4 v1, 0x0

    const/4 v11, -0x1

    const/16 v5, 0x30

    const/16 v10, 0xa

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/vent/d/c;->cmK:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v10, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v10, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v10, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v10, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v10, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v1, v11, :cond_c

    if-nez v0, :cond_b

    move-object v0, p1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_7

    const-string v3, "Vent"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/vent/d/c;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/vent/d/c;->cmL:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    :try_start_1
    sget-object v4, Lcom/vent/d/c;->cmL:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/vent/d/c;->cmL:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x10000

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    new-instance v6, Ljava/io/FileInputStream;

    sget-object v7, Lcom/vent/d/c;->cmL:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const v7, 0xc000

    new-array v7, v7, [B

    const-wide/32 v8, 0xc000

    sub-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/vent/d/c;->cmL:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_2
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/vent/d/c;->cmL:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    if-eq v1, v11, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static h(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/vent/d/c;->h(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed delete file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed delete dir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vent/d/c;->eu(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static i(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [C

    invoke-virtual {v0, v1}, Ljava/io/FileReader;->read([C)I

    move-result v2

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/util/Set;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageEmulated(Ljava/io/File;)Z
    .locals 2

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/io/File;)Landroid/os/Parcel;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    const/4 v4, 0x0

    :try_start_2
    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    invoke-static {v2}, Lcom/vent/d/c;->c(Ljava/io/Closeable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static j(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/vent/d/c;->eR(I)I

    move-result v0

    invoke-static {p0, v0, v0}, Lcom/vent/d/c;->k(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Lcom/vent/d/c;->aI(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {p0, v1, v0}, Lcom/vent/d/c;->k(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    const v1, 0x7fffffff

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lt p1, v1, :cond_0

    if-ge p2, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://res.cloudinary.com/vent/image/fetch/c_fill,f_auto,h_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",q_70,w_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/util/Date;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x3a

    const/16 v3, 0x2d

    const/16 v5, 0x30

    const/16 v4, 0xa

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vent/d/c;->cmJ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v4, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v4, :cond_7

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x64

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static l(Ljava/util/Map;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Landroid/support/v4/app/i;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->t(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static t(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;I)Landroid/support/v7/app/c;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0065

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setView(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setCancelable(Z)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/support/v7/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_1
    const/16 v0, 0xf0

    invoke-static {v2, v0}, Lcom/vent/d/c;->a(Landroid/app/Dialog;I)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/support/v7/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v1, "Vent"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static w(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
