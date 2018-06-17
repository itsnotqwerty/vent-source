.class public final Lio/intercom/a/a/a/c/b/b/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final cLV:I


# instance fields
.field private cLW:Landroid/app/ActivityManager;

.field private cLX:Lio/intercom/a/a/a/c/b/b/i$c;

.field private cLY:F

.field private cLZ:F

.field private cMa:F

.field private cMb:F

.field private cMc:I

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lio/intercom/a/a/a/c/b/b/i$a;->cLV:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLY:F

    sget v0, Lio/intercom/a/a/a/c/b/b/i$a;->cLV:I

    int-to-float v0, v0

    iput v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLZ:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cMa:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cMb:F

    const/high16 v0, 0x400000

    iput v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cMc:I

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/i$a;->context:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLW:Landroid/app/ActivityManager;

    new-instance v0, Lio/intercom/a/a/a/c/b/b/i$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/b/b/i$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLX:Lio/intercom/a/a/a/c/b/b/i$c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLW:Landroid/app/ActivityManager;

    invoke-static {v0}, Lio/intercom/a/a/a/c/b/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLZ:F

    :cond_0
    return-void
.end method

.method static synthetic a(Lio/intercom/a/a/a/c/b/b/i$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lio/intercom/a/a/a/c/b/b/i$a;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLW:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic c(Lio/intercom/a/a/a/c/b/b/i$a;)I
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cMc:I

    return v0
.end method

.method static synthetic d(Lio/intercom/a/a/a/c/b/b/i$a;)F
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cMa:F

    return v0
.end method

.method static synthetic e(Lio/intercom/a/a/a/c/b/b/i$a;)F
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cMb:F

    return v0
.end method

.method static synthetic f(Lio/intercom/a/a/a/c/b/b/i$a;)Lio/intercom/a/a/a/c/b/b/i$c;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLX:Lio/intercom/a/a/a/c/b/b/i$c;

    return-object v0
.end method

.method static synthetic g(Lio/intercom/a/a/a/c/b/b/i$a;)F
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLZ:F

    return v0
.end method

.method static synthetic h(Lio/intercom/a/a/a/c/b/b/i$a;)F
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/c/b/b/i$a;->cLY:F

    return v0
.end method
