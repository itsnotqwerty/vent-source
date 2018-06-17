.class public final Lcom/vent/ActMain;
.super Lcom/vent/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/vent/ap;


# static fields
.field public static bWN:Z

.field static bWO:Z

.field static bWP:Z

.field static bWQ:Z

.field private static bWR:Z

.field static bWS:Landroid/content/Intent;

.field public static final bWV:Ljava/lang/String;

.field private static bWX:I

.field private static final bWY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static bWZ:I

.field private static final bWt:I

.field private static final bWu:I


# instance fields
.field bTI:Lcom/vent/views/b;

.field bWA:I

.field bWB:Landroid/graphics/RectF;

.field private bWC:Landroid/graphics/Bitmap;

.field private bWD:Landroid/view/View;

.field bWE:Landroid/widget/ImageView;

.field private bWF:Landroid/view/View;

.field bWG:Landroid/support/design/widget/FloatingActionButton;

.field bWH:Landroid/support/design/widget/FloatingActionButton;

.field bWI:Z

.field bWJ:Z

.field private bWK:Lcom/vent/ba$a;

.field bWL:Landroid/view/View$OnLayoutChangeListener;

.field bWM:Landroid/view/View$OnLayoutChangeListener;

.field private bWT:Landroid/os/Bundle;

.field private bWU:Landroid/content/Intent;

.field private bWW:Landroid/content/BroadcastReceiver;

.field private bWv:Landroid/widget/TabWidget;

.field private bWw:[Landroid/view/ViewGroup;

.field private bWx:Ljava/lang/String;

.field bWy:Lcom/vent/views/MyFragmentTabHost;

.field bWz:I

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/vent/ActMain;->bWt:I

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    :cond_0
    sput v1, Lcom/vent/ActMain;->bWu:I

    sput-boolean v3, Lcom/vent/ActMain;->bWN:Z

    sput-boolean v2, Lcom/vent/ActMain;->bWO:Z

    sput-boolean v3, Lcom/vent/ActMain;->bWP:Z

    sput-boolean v2, Lcom/vent/ActMain;->bWQ:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/vent/ActMain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".GOT_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vent/ActMain;->bWV:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vent/ActMain;->bWY:Ljava/util/Set;

    sput v2, Lcom/vent/ActMain;->bWZ:I

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vent/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vent/ActMain;->bWx:Ljava/lang/String;

    new-instance v0, Lcom/vent/ActMain$9;

    invoke-direct {v0, p0}, Lcom/vent/ActMain$9;-><init>(Lcom/vent/ActMain;)V

    iput-object v0, p0, Lcom/vent/ActMain;->bWW:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private BC()V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/ActMain;->BB()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DZ()Lcom/vent/ba;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/vent/ActMain$2;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$2;-><init>(Lcom/vent/ActMain;)V

    iput-object v1, p0, Lcom/vent/ActMain;->bWK:Lcom/vent/ba$a;

    iget-object v1, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ActMain;->bWK:Lcom/vent/ba$a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "chats"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/ai;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/ai;->Dt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private BN()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v1, :cond_1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Lcom/vent/a/h;->bB(Landroid/content/Context;)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Lcom/vent/a/h;->bC(Landroid/content/Context;)I

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    invoke-static {v0}, Lcom/vent/d/c;->g(Lcom/vent/a/m;)Lcom/vent/a/g;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/vent/d/c;->b(Lcom/vent/a/g;)Lcom/vent/a/h;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/high16 v0, -0x1000000

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_2
.end method

.method static BR()V
    .locals 2

    sget v0, Lcom/vent/ActMain;->bWX:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/ActMain;->bWX:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/vent/bb;->ciS:J

    invoke-static {}, Lcom/vent/bb;->ED()V

    invoke-static {}, Lcom/vent/ActMain;->BS()V

    :cond_0
    return-void
.end method

.method private static BS()V
    .locals 2

    sget-object v0, Lcom/vent/ActMain;->bWY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vent/ActMain;->bWY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static BT()V
    .locals 1

    sget v0, Lcom/vent/ActMain;->bWZ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vent/ActMain;->bWZ:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vent/bb;->EA()V

    :cond_0
    return-void
.end method

.method private BU()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private a(IIIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/vent/ActMain;->bWv:Landroid/widget/TabWidget;

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTab()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const v2, 0x7f09021f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-ne v3, v1, :cond_1

    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, p3

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0, p4, p5, p7}, Lcom/vent/ActMain;->k(IIII)V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p4, p5, p7}, Lcom/vent/ActMain;->k(IIII)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    invoke-static {p0, p6}, Lcom/vent/d/c$c;->a(Landroid/app/Activity;I)V

    :cond_4
    invoke-direct {p0}, Lcom/vent/ActMain;->BN()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ciQ:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vent/ActMain$13;

    invoke-direct {v1, p0, p1}, Lcom/vent/ActMain$13;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/vent/ActMain;->b(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Landroid/support/v7/app/d;Z)V
    .locals 6

    sget v0, Lcom/vent/ActMain;->bWZ:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vent/bb;->ciA:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fd()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/vent/ActMain;->bWZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ActMain;->bWZ:I

    new-instance v0, Lcom/vent/ActMain$17;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/users/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    if-eqz p1, :cond_2

    const v4, 0x7f0f00e1

    :goto_0
    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/vent/ActMain$17;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/support/v7/app/d;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    sget v0, Lcom/vent/ActMain;->bWZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ActMain;->bWZ:I

    new-instance v0, Lcom/vent/ActMain$18;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api/v1/users/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v2, v2, Lcom/vent/a/y;->cjy:Lcom/vent/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/received_emotion_category_ids"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/ActMain$18;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/d;ZI)V
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/vent/ActMain$16;

    invoke-direct {v1, p0, p1}, Lcom/vent/ActMain$16;-><init>(Landroid/support/v7/app/d;Z)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;Z)V

    goto :goto_0
.end method

.method private aY(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/vent/FrgProfile;

    const/4 v2, 0x0

    sget-object v3, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    sget-wide v4, Lcom/vent/bb;->ciA:J

    sget-object v6, Lcom/vent/bb;->ciC:Ljava/util/HashMap;

    invoke-virtual/range {v1 .. v6}, Lcom/vent/FrgProfile;->a(ZLcom/vent/a/x;JLjava/util/HashMap;)V

    move-object v1, v0

    check-cast v1, Lcom/vent/FrgProfile;

    invoke-virtual {v1}, Lcom/vent/FrgProfile;->DG()V

    invoke-virtual {v1}, Lcom/vent/FrgProfile;->DE()V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v1}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->Du()V

    :cond_1
    return-void
.end method

.method static b(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/vent/ActMain;->bWY:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    sget v0, Lcom/vent/ActMain;->bWX:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vent/bb;->ciQ:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vent/bb;->ciS:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/vent/ActMain;->bWX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ActMain;->bWX:I

    new-instance v1, Lcom/vent/ActMain$14;

    const-string v2, "api/v1/emotion_categories.json"

    const-string v3, "GET"

    sget-object v0, Lcom/vent/bb;->ciO:Ljava/util/Map;

    if-nez v0, :cond_4

    const v0, 0x7f0f00ab

    :goto_0
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/vent/ActMain$14;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    sget v0, Lcom/vent/ActMain;->bWX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vent/ActMain;->bWX:I

    new-instance v0, Lcom/vent/ActMain$15;

    const-string v1, "api/v2/interaction_types.json"

    const-string v2, "GET"

    invoke-direct {v0, p0, v1, v2}, Lcom/vent/ActMain$15;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_2
    sget v0, Lcom/vent/ActMain;->bWX:I

    if-nez v0, :cond_3

    invoke-static {}, Lcom/vent/ActMain;->BS()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dT(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    instance-of v0, v1, Lcom/vent/an;

    if-eqz v0, :cond_2

    check-cast v1, Lcom/vent/an;

    invoke-virtual {v1}, Lcom/vent/an;->DB()V

    :cond_2
    return-void

    :sswitch_0
    const-string v2, "vents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "discover"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "search"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "notifications"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "chats"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/vent/aw;

    invoke-virtual {v0}, Lcom/vent/aw;->DR()V

    goto :goto_1

    :pswitch_1
    const-string v0, "DiscoverPeople"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/vent/at;

    invoke-virtual {v0}, Lcom/vent/at;->DR()V

    goto :goto_1

    :pswitch_3
    const-string v0, "Activity"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string v0, "Inbox"

    invoke-static {p0, v0}, Lcom/vent/ax;->v(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DR()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_2
        -0x12717657 -> :sswitch_5
        0x5a3d81b -> :sswitch_4
        0x6ae6a5e -> :sswitch_0
        0x104877e9 -> :sswitch_1
        0x4bd694e8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private ek(I)Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/vent/ActMain;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f09021f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method private h(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vent/an;->DE()V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/vent/an;->DC()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v1}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vent/an;->DD()V

    goto :goto_0
.end method

.method private k(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget v2, Lcom/vent/MyApplication;->cgd:I

    invoke-virtual {v1, v2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget v2, Lcom/vent/MyApplication;->cge:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method final BB()V
    .locals 3

    iget-object v0, p0, Lcom/vent/ActMain;->bWK:Lcom/vent/ba$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActMain;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/vent/ba;->chh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vent/ActMain;->bWK:Lcom/vent/ba$a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActMain;->bWK:Lcom/vent/ba$a;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final BD()V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v1, "vents"

    invoke-virtual {v0, v1}, Lcom/vent/views/MyFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final BE()V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Lcom/vent/views/MyFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final BF()V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v1, "chats"

    invoke-virtual {v0, v1}, Lcom/vent/views/MyFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final BG()V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Lcom/vent/views/MyFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final BH()V
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "vents"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vent/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/aw;->bi(Z)Z

    :cond_0
    return-void
.end method

.method final BI()V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain;->bTI:Lcom/vent/views/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/views/b;

    iget-object v1, p0, Lcom/vent/ActMain;->bWT:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/vent/views/b;-><init>(Landroid/support/v7/app/d;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vent/ActMain;->bTI:Lcom/vent/views/b;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActMain;->bWT:Landroid/os/Bundle;

    return-void
.end method

.method final BJ()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActMain;->bTI:Lcom/vent/views/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FC()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain;->bWT:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vent/ActMain;->bTI:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->FD()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vent/ActMain;->bTI:Lcom/vent/views/b;

    return-void
.end method

.method final BK()V
    .locals 1

    sget-boolean v0, Lcom/vent/MyApplication;->cgA:Z

    if-nez v0, :cond_0

    const-string v0, "https://play.google.com/store/apps/details?id=com.vent"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "https://www.amazon.com.au/dp/B01G0ZA062"

    invoke-static {p0, v0}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final BL()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0, v1}, Lcom/vent/views/MyFragmentTabHost;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/vent/bb;->bz(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/vent/bb;->ee(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vent/ActMain;->BC()V

    invoke-static {p0, v2}, Lcom/vent/ActMain;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-string v0, "vents"

    invoke-direct {p0, v0, v1}, Lcom/vent/ActMain;->h(Ljava/lang/String;Z)V

    const-string v0, "discover"

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    const-string v0, "notifications"

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/vent/ActMain;->aY(Z)V

    invoke-virtual {p0, v1}, Lcom/vent/ActMain;->aX(Z)V

    const-string v0, "search"

    invoke-direct {p0, v0, v1}, Lcom/vent/ActMain;->h(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BV()V

    const/4 v0, 0x3

    sget v1, Lcom/vent/bb;->ciF:I

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->aG(II)V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    sget v1, Lcom/vent/bb;->ciG:I

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->aG(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/vent/ActMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActMain;->bWN:Z

    invoke-virtual {p0}, Lcom/vent/ActMain;->BO()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BQ()V

    invoke-direct {p0}, Lcom/vent/ActMain;->BN()V

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.vent-Cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.vent-Cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->h(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final BM()V
    .locals 8

    invoke-virtual {p0}, Lcom/vent/ActMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f06006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f06006a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/16 v3, 0x54

    const/high16 v6, -0x1000000

    move-object v0, p0

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/vent/ActMain;->a(IIIIIII)V

    return-void
.end method

.method public final BO()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/vent/ActMain;->bWN:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vent/d/c;->bE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/vent/ActMain;->bWO:Z

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/vent/ActMain;->bWN:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/vent/ActMain;->bWN:Z

    sput-boolean v2, Lcom/vent/ActMain;->bWO:Z

    new-instance v0, Lcom/vent/ActMain$10;

    const-string v1, "api/v1/my/notifications/notifications_count.json"

    const-string v2, "GET"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/vent/ActMain$10;-><init>(Lcom/vent/ActMain;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    sput-boolean v1, Lcom/vent/ActMain;->bWN:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->el(I)V

    goto :goto_0
.end method

.method final BP()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ActMain;->Bc()Lcom/vent/ba;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/vent/ActMain;->bWQ:Z

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/vent/ActMain;->bWP:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/vent/ActMain;->bWP:Z

    sput-boolean v3, Lcom/vent/ActMain;->bWQ:Z

    const/4 v1, 0x0

    new-instance v2, Lcom/vent/ActMain$11;

    invoke-direct {v2, p0}, Lcom/vent/ActMain$11;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1, v2}, Lcom/vent/ba;->a(Landroid/net/Uri;Lcom/vent/d/c$b;)V

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/vent/ActMain;->bWP:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->em(I)V

    goto :goto_0
.end method

.method public final BQ()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/ActMain;->bWP:Z

    invoke-virtual {p0}, Lcom/vent/ActMain;->BP()V

    return-void
.end method

.method final BV()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget v0, v0, Lcom/vent/a/y;->ckk:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    iget-object v0, v0, Lcom/vent/a/y;->ckO:Lcom/vent/a/m;

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWB:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vent/ActMain;->bWz:I

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vent/ActMain$20;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$20;-><init>(Lcom/vent/ActMain;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vent/ActMain;->bWz:I

    iget v1, p0, Lcom/vent/ActMain;->bWA:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/vent/ActMain;->bWB:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vent/ActMain;->bWC:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object v0, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/vent/MyApplication;->cgg:I

    iget v2, p0, Lcom/vent/ActMain;->bWA:I

    iget-object v3, p0, Lcom/vent/ActMain;->bWB:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/vent/ActMain;->BU()V

    goto/16 :goto_0
.end method

.method public final BW()V
    .locals 3

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aF(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/vent/ActMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    if-nez p2, :cond_0

    :goto_0
    const/16 v3, 0x80

    if-nez p1, :cond_1

    const/high16 v6, -0x1000000

    :goto_1
    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p1

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/vent/ActMain;->a(IIIIIII)V

    return-void

    :cond_0
    move v2, p2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x19000000

    invoke-static {v0, p1}, Landroid/support/v4/a/a;->l(II)I

    move-result v6

    goto :goto_1
.end method

.method public final aG(II)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final aR(Z)Z
    .locals 4

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/vent/ActMain;->bTz:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v0, "profile"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v3, "profile"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->Bx()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "vents"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v3, "vents"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, Lcom/vent/aw;

    iget-object v3, v0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/vent/aw;->bVe:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Lcom/vent/aw;->bi(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_3
    const-string v0, "vents"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/vent/ActMain;->BD()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/vent/ActMain;->finish()V

    goto :goto_0
.end method

.method final aX(Z)V
    .locals 1

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_0

    const-string v0, "chats"

    invoke-virtual {p0, v0, p1}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method final b(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->b(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/vent/ActMain;->BL()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BD()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BH()V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_0

    const-string v0, "vents"

    invoke-direct {p0, v0, v1}, Lcom/vent/ActMain;->h(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/vent/ActMain;->aY(Z)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v0, :cond_0

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vent/a/x;

    invoke-static {p0, v0}, Lcom/vent/ActChat;->a(Lcom/vent/a;Lcom/vent/a/x;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public final clearAll()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "notifications"

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/vent/ActMain;->aY(Z)V

    const-string v0, "vents"

    invoke-direct {p0, v0, v1}, Lcom/vent/ActMain;->h(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/vent/ActMain;->aX(Z)V

    const-string v0, "discover"

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    const-string v0, "search"

    invoke-direct {p0, v0, v1}, Lcom/vent/ActMain;->h(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BO()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BQ()V

    return-void
.end method

.method final el(I)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/vent/bb;->ciF:I

    if-eq p1, v0, :cond_0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/vent/bb;->setUnreadCount(I)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActMain;->aG(II)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    const-string v0, "notifications"

    invoke-virtual {p0, v0, v2}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method final em(I)V
    .locals 2

    sget v0, Lcom/vent/bb;->ciG:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/vent/bb;->eG(I)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/vent/ActMain;->aG(II)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vent/d/c;->bH(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/Intent;)V
    .locals 9

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v8, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v6

    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    move-object v8, v1

    goto :goto_0

    :sswitch_0
    const-string v1, "com.vent.ActMain.CHAT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "com.vent.ActMain.NOTIFICATIONS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/vent/ActMain;->BF()V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/vent/ActMain;->BE()V

    goto :goto_2

    :pswitch_2
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_2
    move v1, v6

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    sput-boolean v4, Lcom/vent/ActMain;->bWN:Z

    invoke-virtual {p0}, Lcom/vent/ActMain;->BO()V

    const-string v0, "notifications"

    invoke-virtual {p0, v0, v5}, Lcom/vent/ActMain;->i(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BE()V

    const-string v0, "notification_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewGift"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vent/bb;->ciA:J

    invoke-static {p0, v4, v5}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V

    goto :goto_2

    :sswitch_3
    const-string v1, "notification"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_4

    :sswitch_4
    const-string v1, "SubscribedUserVent"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_4

    :sswitch_5
    const-string v1, "chats"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_4

    :sswitch_6
    const-string v1, "layer"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_4

    :pswitch_4
    instance-of v1, v0, Lcom/vent/a/m;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/vent/a/z;

    invoke-direct {v1}, Lcom/vent/a/z;-><init>()V

    check-cast v0, Lcom/vent/a/m;

    iput-object v0, v1, Lcom/vent/a/z;->cjy:Lcom/vent/a/m;

    invoke-static {p0, v2, v4, v1}, Lcom/vent/ActVentView;->a(Landroid/app/Activity;Landroid/support/v4/app/i;ZLcom/vent/a/z;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/vent/ActMain;->BQ()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BF()V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/vent/ActMain;->BF()V

    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lcom/vent/bb;->l(Landroid/net/Uri;)Lcom/vent/a/f;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v4

    :goto_5
    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/vent/ActMain;->aX(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/vent/ActMain;->BQ()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_4
    move v0, v5

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45ed2f16 -> :sswitch_2
        -0x3139e479 -> :sswitch_0
        0x7acbe179 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x5a3d81b -> :sswitch_5
        0x61fd551 -> :sswitch_6
        0x237a88eb -> :sswitch_3
        0x468ba1ba -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method final i(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/vent/am;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vent/am;->invalidate()V

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v1}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/vent/am;->Du()V

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/vent/a;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_0
    sget-boolean v0, Lcom/vent/bb;->ciE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActMain;->finish()V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ActMain;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/ActMain;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vent/ActMain;->a(IILandroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/vent/ActMain;->BU()V

    sget-object v0, Lcom/vent/bb;->ciP:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {p0, v3}, Lcom/vent/ActMain;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v3}, Lcom/vent/ActEmotions;->a(Landroid/app/Activity;Lcom/vent/a/z;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->Fg()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/vent/ActAddChat;->l(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00b3

    invoke-virtual {p0, v1}, Lcom/vent/ActMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/vent/ActMain$19;

    invoke-direct {v2, p0}, Lcom/vent/ActMain$19;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/vent/ActMain;->BU()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f090029 -> :sswitch_0
        0x7f09002a -> :sswitch_1
        0x7f09012f -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/vent/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->setContentView(I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/vent/ActMain;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vent/views/MyFragmentTabHost;

    iput-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/content/Context;Landroid/support/v4/app/n;)V

    sget v0, Lcom/vent/ActMain;->bWu:I

    new-array v0, v0, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v2, "vents"

    invoke-virtual {v1, v2}, Lcom/vent/views/MyFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    const v3, 0x7f0800a9

    invoke-direct {p0, v3}, Lcom/vent/ActMain;->ek(I)Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/vent/aw;

    invoke-virtual {v0, v1, v2}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v2, "discover"

    invoke-virtual {v1, v2}, Lcom/vent/views/MyFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    const v3, 0x7f08009c

    invoke-direct {p0, v3}, Lcom/vent/ActMain;->ek(I)Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/vent/aj;

    invoke-virtual {v0, v1, v2}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Lcom/vent/views/MyFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    const v3, 0x7f0800a6

    invoke-direct {p0, v3}, Lcom/vent/ActMain;->ek(I)Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/vent/at;

    invoke-virtual {v0, v1, v2}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v2, "notifications"

    invoke-virtual {v1, v2}, Lcom/vent/views/MyFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    const v3, 0x7f080060

    invoke-direct {p0, v3}, Lcom/vent/ActMain;->ek(I)Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/vent/as;

    invoke-virtual {v0, v1, v2}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v2, "chats"

    invoke-virtual {v1, v2}, Lcom/vent/views/MyFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    const v3, 0x7f0800c3

    invoke-direct {p0, v3}, Lcom/vent/ActMain;->ek(I)Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/vent/ai;

    invoke-virtual {v0, v1, v2}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    :cond_0
    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const-string v2, "profile"

    invoke-virtual {v1, v2}, Lcom/vent/views/MyFragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    sget v3, Lcom/vent/ActMain;->bWt:I

    const v4, 0x7f08012c

    invoke-direct {p0, v4}, Lcom/vent/ActMain;->ek(I)Landroid/view/ViewGroup;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/vent/FrgProfile;

    invoke-virtual {v0, v1, v2}, Lcom/vent/views/MyFragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, v5

    new-instance v1, Lcom/vent/ActMain$1;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$1;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, v6

    new-instance v1, Lcom/vent/ActMain$12;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$12;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, v7

    new-instance v1, Lcom/vent/ActMain$21;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$21;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, v8

    new-instance v1, Lcom/vent/ActMain$22;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$22;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    aget-object v0, v0, v9

    new-instance v1, Lcom/vent/ActMain$23;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$23;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    sget v1, Lcom/vent/ActMain;->bWt:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/vent/ActMain$24;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$24;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    sget v1, Lcom/vent/ActMain;->bWt:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/vent/ActMain$25;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$25;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0, p0}, Lcom/vent/views/MyFragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/vent/ActMain;->bWv:Landroid/widget/TabWidget;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/vent/ActMain;->bWV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/c;->i(Landroid/content/Context;)Landroid/support/v4/content/c;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/ActMain;->bWW:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BD()V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BH()V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vent/MyApplication;

    invoke-virtual {v0}, Lcom/vent/MyApplication;->DZ()Lcom/vent/ba;

    :cond_2
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    iget-object v0, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Lcom/vent/ActMain$26;

    invoke-direct {v0, p0}, Lcom/vent/ActMain$26;-><init>(Lcom/vent/ActMain;)V

    iput-object v0, p0, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    const v0, 0x7f09012e

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    new-instance v0, Lcom/vent/ActMain$27;

    invoke-direct {v0, p0}, Lcom/vent/ActMain$27;-><init>(Lcom/vent/ActMain;)V

    iput-object v0, p0, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/vent/ActMain;->BV()V

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/vent/ActMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ActMain;->bWU:Landroid/content/Intent;

    :cond_6
    invoke-direct {p0}, Lcom/vent/ActMain;->BC()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vent/bb;->cit:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    sget-wide v0, Lcom/vent/bb;->ciu:J

    invoke-static {p0}, Lcom/vent/d/c;->bI(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {p0}, Lcom/vent/bb;->bA(Landroid/content/Context;)V

    :cond_8
    return-void
.end method

.method public final onDestroy()V
    .locals 13

    const/16 v2, 0xb

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/vent/ActMain;->BB()V

    invoke-direct {p0}, Lcom/vent/ActMain;->BU()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v12, p0, Lcom/vent/ActMain;->bWL:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v12, p0, Lcom/vent/ActMain;->bWM:Landroid/view/View$OnLayoutChangeListener;

    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/c;->i(Landroid/content/Context;)Landroid/support/v4/content/c;

    move-result-object v7

    iget-object v8, p0, Lcom/vent/ActMain;->bWW:Landroid/content/BroadcastReceiver;

    iget-object v9, v7, Landroid/support/v4/content/c;->Bh:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v0, v7, Landroid/support/v4/content/c;->Bh:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v12, p0, Lcom/vent/ActMain;->bWW:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0, v12}, Lcom/vent/views/MyFragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->clearAllTabs()V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->FE()V

    iput-object v12, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    iput-object v12, p0, Lcom/vent/ActMain;->bWw:[Landroid/view/ViewGroup;

    iput-object v12, p0, Lcom/vent/ActMain;->bWv:Landroid/widget/TabWidget;

    iput-object v12, p0, Lcom/vent/ActMain;->bWH:Landroid/support/design/widget/FloatingActionButton;

    iput-object v12, p0, Lcom/vent/ActMain;->bWG:Landroid/support/design/widget/FloatingActionButton;

    iput-object v12, p0, Lcom/vent/ActMain;->bWE:Landroid/widget/ImageView;

    iput-object v12, p0, Lcom/vent/ActMain;->bWF:Landroid/view/View;

    iput-object v12, p0, Lcom/vent/ActMain;->bWD:Landroid/view/View;

    iput-object v12, p0, Lcom/vent/ActMain;->inflater:Landroid/view/LayoutInflater;

    invoke-super {p0}, Lcom/vent/a;->onDestroy()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    :goto_1
    if-ltz v6, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/c$b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/content/c$b;->Bp:Z

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    iget-object v2, v1, Landroid/support/v4/content/c$b;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v5, v2, :cond_6

    iget-object v2, v1, Landroid/support/v4/content/c$b;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v7, Landroid/support/v4/content/c;->Bi:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_3
    if-ltz v4, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/content/c$b;

    iget-object v11, v3, Landroid/support/v4/content/c$b;->Bn:Landroid/content/BroadcastReceiver;

    if-ne v11, v8, :cond_3

    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/support/v4/content/c$b;->Bp:Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_5

    iget-object v2, v7, Landroid/support/v4/content/c;->Bi:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_1

    :cond_7
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain;->bWU:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/vent/ActMain;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vent/ActMain;->bWJ:Z

    invoke-super {p0}, Lcom/vent/a;->onPause()V

    return-void
.end method

.method public final onPostResume()V
    .locals 2

    invoke-super {p0}, Lcom/vent/a;->onPostResume()V

    iget-object v0, p0, Lcom/vent/ActMain;->bWU:Landroid/content/Intent;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vent/ActMain;->bWU:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ActMain;->bTv:Landroid/support/v4/app/h;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->g(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/vent/ActMain;->bTw:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 13

    const v12, 0x7f09007a

    const/4 v4, 0x1

    const v11, 0x104000a

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/vent/a;->onResume()V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vent/ActMain;->BI()V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vent/views/MyFragmentTabHost;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/vent/ActMain;->bWI:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vent/ActMain;->bWJ:Z

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/vent/ActMain;->bWJ:Z

    invoke-static {p0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActMain;->BJ()V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0, v2}, Lcom/vent/views/MyFragmentTabHost;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v10}, Lcom/vent/ActMain;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const/16 v0, 0x3e8

    invoke-static {p0, v2, v0}, Lcom/vent/ActMain;->a(Landroid/support/v7/app/d;ZI)V

    invoke-static {}, Lcom/vent/bb;->EJ()V

    iget-object v0, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v0}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vent/ActMain;->dT(Ljava/lang/String;)V

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/vent/ActMain;->bWR:Z

    if-nez v0, :cond_7

    sput-boolean v4, Lcom/vent/ActMain;->bWR:Z

    sget-boolean v0, Lcom/vent/MyApplication;->cgz:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/vent/bb;->cip:Z

    if-nez v0, :cond_2

    const v0, 0x7f0b0073

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v3, Lcom/vent/ActMain$3;

    invoke-direct {v3, p0}, Lcom/vent/ActMain$3;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f008e

    invoke-virtual {v0, v3}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v3, 0x7f0f00b4

    invoke-virtual {v0, v3}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setView(Landroid/view/View;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget-boolean v1, Lcom/vent/MyApplication;->cgy:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/vent/ActMain$4;

    invoke-direct {v1, p0}, Lcom/vent/ActMain$4;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v11, v1}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    :goto_2
    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_2
    :goto_3
    sget-boolean v0, Lcom/vent/bb;->cin:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "com.cleanmaster.mguard"

    aput-object v0, v3, v2

    const-string v0, "com.cleanmaster.mguard_x86"

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v1, "com.cmcm.lite"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "com.cleanmaster.boost"

    aput-object v1, v3, v0

    invoke-virtual {p0}, Lcom/vent/ActMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move v1, v2

    :goto_4
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3

    aget-object v0, v3, v1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0b0073

    const/4 v6, 0x0

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f09007a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v7, Lcom/vent/ActMain$5;

    invoke-direct {v7, p0}, Lcom/vent/ActMain$5;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f008e

    invoke-virtual {v0, v7}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v7, 0x7f0f0014

    invoke-virtual {p0, v7}, Lcom/vent/ActMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/c$a;->setView(Landroid/view/View;)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    sget-boolean v0, Lcom/vent/bb;->cio:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/vent/ActMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b0073

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v2, Lcom/vent/ActMain$6;

    invoke-direct {v2, p0}, Lcom/vent/ActMain$6;-><init>(Lcom/vent/ActMain;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p0}, Lcom/vent/d/c;->bG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f008e

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v2, 0x7f0f004f

    invoke-virtual {p0, v2}, Lcom/vent/ActMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setView(Landroid/view/View;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/vent/ActMain;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vent/ActMain;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x6400000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    :cond_6
    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Lcom/vent/ActMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vent/d/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_5
    sget-wide v0, Lcom/vent/bb;->cix:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    new-instance v0, Lcom/vent/ActMain$7;

    const-string v1, "api/v1/settings/android.json"

    const-string v2, "GET"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/vent/ActMain$7;-><init>(Lcom/vent/ActMain;Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vent/d/c;->b(Landroid/os/AsyncTask;)V

    :cond_8
    invoke-static {p0}, Lcom/vent/t;->aE(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0, v11, v10}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    goto/16 :goto_2

    :cond_a
    sget-boolean v0, Lcom/vent/bb;->cip:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/vent/bb;->cip:Z

    invoke-static {}, Lcom/vent/bb;->EB()V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/vent/a;->onStart()V

    const/4 v0, 0x3

    sget v1, Lcom/vent/bb;->ciF:I

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->aG(II)V

    invoke-virtual {p0}, Lcom/vent/ActMain;->BO()V

    sget-boolean v0, Lcom/vent/bb;->chO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/vent/bb;->ciG:I

    invoke-virtual {p0, v0, v1}, Lcom/vent/ActMain;->aG(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ActMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/vent/ActMain;->bWS:Landroid/content/Intent;

    if-eq v1, v0, :cond_1

    sput-object v1, Lcom/vent/ActMain;->bWS:Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vent/ActMain;->bWI:Z

    sget-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    if-nez v0, :cond_2

    const v0, 0x7f0f00e1

    invoke-static {p0, v0}, Lcom/vent/d/c;->v(Landroid/content/Context;I)Landroid/support/v7/app/c;

    move-result-object v0

    :goto_0
    invoke-static {}, Lio/branch/referral/d;->Gt()Lio/branch/referral/d;

    move-result-object v2

    new-instance v3, Lcom/vent/ActMain$8;

    invoke-direct {v3, p0, v0}, Lcom/vent/ActMain$8;-><init>(Lcom/vent/ActMain;Landroid/support/v7/app/c;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, p0}, Lio/branch/referral/d;->a(Landroid/net/Uri;Landroid/app/Activity;)Z

    invoke-virtual {v2, v3, p0}, Lio/branch/referral/d;->a(Lio/branch/referral/d$e;Landroid/app/Activity;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/vent/ActMain;->BJ()V

    invoke-super {p0}, Lcom/vent/a;->onStop()V

    return-void
.end method

.method public final onTabChanged(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vent/ActMain;->bWx:Ljava/lang/String;

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/vent/bb;->cik:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/vent/as;

    iget-object v1, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/n;

    iget-object v1, v1, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/n;

    iget-object v1, v1, Lcom/vent/n;->cbg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vent/a/s;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/vent/a/s;->read:Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/vent/as;->ceE:Lcom/vent/l;

    check-cast v1, Lcom/vent/n;

    invoke-virtual {v1}, Lcom/vent/n;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {v0, v4, v4}, Lcom/vent/as;->h(ZZ)V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/vent/ActMain;->bWx:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vent/ActMain;->dT(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/vent/ActMain;->bWx:Ljava/lang/String;

    const-string v1, "discover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "discover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const-string v1, "discover"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/vent/aj;

    invoke-virtual {v0}, Lcom/vent/aj;->invalidate()V

    goto :goto_1
.end method

.method public final p(Landroid/support/v4/app/i;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/vent/ActMain;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/ActMain;->bWy:Lcom/vent/views/MyFragmentTabHost;

    invoke-virtual {v1}, Lcom/vent/views/MyFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->w(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
