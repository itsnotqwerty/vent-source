.class public final Landroid/support/v4/a/f;
.super Landroid/support/v4/a/d;


# static fields
.field private static final BK:Ljava/lang/Class;

.field private static final BL:Ljava/lang/reflect/Constructor;

.field private static final BN:Ljava/lang/reflect/Method;

.field private static final BO:Ljava/lang/reflect/Method;

.field private static final BP:Ljava/lang/reflect/Method;

.field private static final BQ:Ljava/lang/reflect/Method;

.field private static final BR:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const-string v0, "addFontFromAssetManager"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/AssetManager;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v4, v2, v3

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v0, "addFontFromBuffer"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/nio/ByteBuffer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v0, "freeze"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v0, "abortCreation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v0, 0x1

    invoke-static {v7, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const-class v8, Landroid/graphics/Typeface;

    const-string v9, "createFromFamiliesWithDefault"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v0

    const/4 v0, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sput-object v6, Landroid/support/v4/a/f;->BL:Ljava/lang/reflect/Constructor;

    sput-object v7, Landroid/support/v4/a/f;->BK:Ljava/lang/Class;

    sput-object v5, Landroid/support/v4/a/f;->BO:Ljava/lang/reflect/Method;

    sput-object v4, Landroid/support/v4/a/f;->BP:Ljava/lang/reflect/Method;

    sput-object v3, Landroid/support/v4/a/f;->BQ:Ljava/lang/reflect/Method;

    sput-object v2, Landroid/support/v4/a/f;->BR:Ljava/lang/reflect/Method;

    sput-object v0, Landroid/support/v4/a/f;->BN:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "TypefaceCompatApi26Impl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to collect necessary methods for class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/d;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;II)Z
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/a/f;->BO:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/a/f;->BP:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static dc()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/a/f;->BL:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static dd()Z
    .locals 2

    sget-object v0, Landroid/support/v4/a/f;->BO:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "TypefaceCompatApi26Impl"

    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/support/v4/a/f;->BO:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static q(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5

    :try_start_0
    sget-object v0, Landroid/support/v4/a/f;->BK:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v1, Landroid/support/v4/a/f;->BN:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static r(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/a/f;->BQ:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static s(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/a/f;->BR:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {}, Landroid/support/v4/a/f;->dd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/support/v4/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/support/v4/a/f;->dc()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1, p4, v2, v2}, Landroid/support/v4/a/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/support/v4/a/f;->s(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/support/v4/a/f;->r(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/support/v4/a/f;->q(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v4/content/a/a$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/support/v4/a/f;->dd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/d;->a(Landroid/content/Context;Landroid/support/v4/content/a/a$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/support/v4/a/f;->dc()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p2, Landroid/support/v4/content/a/a$b;->Bs:[Landroid/support/v4/content/a/a$c;

    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    iget-object v7, v0, Landroid/support/v4/content/a/a$c;->Bt:Ljava/lang/String;

    iget v8, v0, Landroid/support/v4/content/a/a$c;->Bu:I

    iget-boolean v0, v0, Landroid/support/v4/content/a/a$c;->Bv:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-static {p1, v4, v7, v8, v0}, Landroid/support/v4/a/f;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4}, Landroid/support/v4/a/f;->s(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-static {v4}, Landroid/support/v4/a/f;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-static {v4}, Landroid/support/v4/a/f;->q(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;[Landroid/support/v4/e/b$b;I)Landroid/graphics/Typeface;
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v0, p2

    if-gtz v0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/support/v4/a/f;->dd()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/a/f;->a([Landroid/support/v4/e/b$b;I)Landroid/support/v4/e/b$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Landroid/support/v4/e/b$b;->DD:Landroid/net/Uri;

    const-string v3, "r"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    iget v2, v0, Landroid/support/v4/e/b$b;->Bu:I

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v1

    iget-boolean v0, v0, Landroid/support/v4/e/b$b;->Bv:Z

    invoke-virtual {v1, v0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    :try_start_5
    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_6
    invoke-static {p1, p2}, Landroid/support/v4/e/b;->a(Landroid/content/Context;[Landroid/support/v4/e/b$b;)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Landroid/support/v4/a/f;->dc()Ljava/lang/Object;

    move-result-object v7

    array-length v8, p2

    move v5, v3

    move v1, v3

    :goto_3
    if-ge v5, v8, :cond_9

    aget-object v9, p2, v5

    iget-object v0, v9, Landroid/support/v4/e/b$b;->DD:Landroid/net/Uri;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    iget v10, v9, Landroid/support/v4/e/b$b;->DE:I

    iget v11, v9, Landroid/support/v4/e/b$b;->Bu:I

    iget-boolean v1, v9, Landroid/support/v4/e/b$b;->Bv:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-static {v7, v0, v10, v11, v1}, Landroid/support/v4/a/f;->a(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v7}, Landroid/support/v4/a/f;->s(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    invoke-static {v7}, Landroid/support/v4/a/f;->s(Ljava/lang/Object;)V

    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    invoke-static {v7}, Landroid/support/v4/a/f;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v4

    goto/16 :goto_0

    :cond_b
    invoke-static {v7}, Landroid/support/v4/a/f;->q(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v4

    goto :goto_1

    :cond_c
    move v0, v1

    goto :goto_5
.end method
