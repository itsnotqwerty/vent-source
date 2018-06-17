.class public final Lio/branch/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/a/b$a;
    }
.end annotation


# static fields
.field private static cuO:Lio/branch/a/b;


# instance fields
.field public cuP:Landroid/os/Handler;

.field public cuQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field cuR:Ljava/lang/String;

.field public cuS:Lorg/json/JSONObject;

.field cuT:I

.field cuU:I

.field private final cuV:Lio/branch/a/b$a;

.field cuW:Lio/branch/a/c;

.field public final cuX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field public cuY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cuZ:Ljava/lang/Runnable;

.field public cva:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field cvb:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lio/branch/a/b;->cuU:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/a/b;->cuY:Ljava/util/ArrayList;

    new-instance v0, Lio/branch/a/b$1;

    invoke-direct {v0, p0}, Lio/branch/a/b$1;-><init>(Lio/branch/a/b;)V

    iput-object v0, p0, Lio/branch/a/b;->cuZ:Ljava/lang/Runnable;

    new-instance v0, Lio/branch/a/b$2;

    invoke-direct {v0, p0}, Lio/branch/a/b$2;-><init>(Lio/branch/a/b;)V

    iput-object v0, p0, Lio/branch/a/b;->cva:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Lio/branch/a/b$3;

    invoke-direct {v0, p0}, Lio/branch/a/b$3;-><init>(Lio/branch/a/b;)V

    iput-object v0, p0, Lio/branch/a/b;->cvb:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    new-instance v0, Lio/branch/a/b$a;

    invoke-direct {v0, p0}, Lio/branch/a/b$a;-><init>(Lio/branch/a/b;)V

    iput-object v0, p0, Lio/branch/a/b;->cuV:Lio/branch/a/b$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/a/b;->cuX:Ljava/util/Map;

    return-void
.end method

.method public static Gq()Lio/branch/a/b;
    .locals 1

    sget-object v0, Lio/branch/a/b;->cuO:Lio/branch/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lio/branch/a/b;

    invoke-direct {v0}, Lio/branch/a/b;-><init>()V

    sput-object v0, Lio/branch/a/b;->cuO:Lio/branch/a/b;

    :cond_0
    sget-object v0, Lio/branch/a/b;->cuO:Lio/branch/a/b;

    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Lorg/json/JSONArray;Landroid/content/res/Resources;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "RecyclerView"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_3

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {v0, p3}, Lio/branch/a/b;->a(Landroid/view/View;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v6, p3}, Lio/branch/a/b;->a(Landroid/view/ViewGroup;Lorg/json/JSONArray;Landroid/content/res/Resources;)V

    :cond_1
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v1, p3}, Lio/branch/a/b;->a(Landroid/view/View;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3}, Lio/branch/a/b;->a(Landroid/view/ViewGroup;Lorg/json/JSONArray;Landroid/content/res/Resources;)V

    goto :goto_4

    :cond_6
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-static {v0, p3}, Lio/branch/a/b;->a(Landroid/view/View;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_7
    return-void
.end method

.method static synthetic a(Lio/branch/a/b;Landroid/view/ViewGroup;Lorg/json/JSONArray;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/branch/a/b;->a(Landroid/view/ViewGroup;Lorg/json/JSONArray;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic a(Lio/branch/a/b;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Landroid/app/Activity;Z)V
    .locals 14

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_9

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_7

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v10, v1, [I

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v11, "id"

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v4, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    instance-of v1, v2, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    move-object v0, v2

    check-cast v0, Landroid/widget/AbsListView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    :goto_3
    const/4 v3, 0x0

    move v4, v3

    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int v12, v4, v1

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    :goto_5
    array-length v12, v10

    if-ge v3, v12, :cond_5

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    aget v13, v10, v3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/TextView;

    if-eqz v13, :cond_3

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p5

    invoke-direct {p0, v12, v0}, Lio/branch/a/b;->h(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4

    :cond_6
    const-string v1, "bnc_esw"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "bnc_esw"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/branch/a/b;->cuX:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v3, p0, Lio/branch/a/b;->cva:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Lio/branch/a/b;->cuX:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    :catch_1
    move-exception v1

    :cond_9
    return-void

    :cond_a
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    move/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lio/branch/a/b;->h(Landroid/view/View;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7
.end method

.method private h(Landroid/view/View;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    iget v3, v3, Lio/branch/a/c;->cvh:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_1

    iget-object v2, p0, Lio/branch/a/b;->cuV:Lio/branch/a/b$a;

    const-string v0, ""

    iget-object v3, v2, Lio/branch/a/b$a;->cvd:Ljava/security/MessageDigest;

    if-eqz v3, :cond_0

    iget-object v0, v2, Lio/branch/a/b$a;->cvd:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, v2, Lio/branch/a/b$a;->cvd:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, v2, Lio/branch/a/b$a;->cvd:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private w(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/a/b;->cuT:I

    iget-object v0, p0, Lio/branch/a/b;->cuY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    iget v1, v1, Lio/branch/a/c;->cvi:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    iget-object v1, p0, Lio/branch/a/b;->cuZ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/branch/a/b;->cuQ:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lio/branch/a/b;->cuP:Landroid/os/Handler;

    iget-object v1, p0, Lio/branch/a/b;->cuZ:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final bO(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    invoke-static {}, Lio/branch/referral/q;->GY()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    iget v3, v3, Lio/branch/a/c;->cvj:I

    if-ge v0, v3, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Lio/branch/a/c;->bP(Landroid/content/Context;)Lio/branch/a/c;

    move-result-object v3

    const-string v4, "mv"

    invoke-virtual {v3}, Lio/branch/a/c;->Gr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v2, "p"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "p"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    sput-object v1, Lio/branch/referral/q;->cAW:Lorg/json/JSONObject;

    const-string v1, "bnc_branch_analytical_data"

    const-string v2, ""

    invoke-static {v1, v2}, Lio/branch/referral/q;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lio/branch/a/c;->bP(Landroid/content/Context;)Lio/branch/a/c;

    move-result-object v0

    iput-object v0, p0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    iput-object p2, p0, Lio/branch/a/b;->cuR:Ljava/lang/String;

    iget-object v0, p0, Lio/branch/a/b;->cuW:Lio/branch/a/c;

    invoke-virtual {v0, p1}, Lio/branch/a/c;->x(Landroid/app/Activity;)Lio/branch/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/branch/a/c$a;->Gs()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/branch/a/b;->w(Landroid/app/Activity;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/branch/a/b;->cuR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/branch/a/b;->w(Landroid/app/Activity;)V

    goto :goto_1
.end method
