.class final Lio/intercom/a/a/a/c/b/b/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/b/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final cMd:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/i$b;->cMd:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final IF()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$b;->cMd:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public final IG()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/b/i$b;->cMd:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
