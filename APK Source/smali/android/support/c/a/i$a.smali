.class final Landroid/support/c/a/i$a;
.super Landroid/support/c/a/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/c/a/i$d;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/c/a/i$d;-><init>(Landroid/support/c/a/i$d;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/support/c/a/i$a;->rw:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/a/b;->y(Ljava/lang/String;)[Landroid/support/v4/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i$a;->rv:[Landroid/support/v4/a/b$b;

    :cond_1
    return-void
.end method

.method public final cf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
