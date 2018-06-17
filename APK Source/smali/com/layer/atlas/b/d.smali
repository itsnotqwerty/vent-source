.class public final Lcom/layer/atlas/b/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/atlas/b/d$a;
    }
.end annotation


# instance fields
.field public boA:Landroid/graphics/Typeface;

.field public final boB:I

.field public final boC:I

.field public final boD:I

.field public final boE:F

.field public boF:Landroid/graphics/Typeface;

.field public final bow:I

.field public final box:I

.field public final boy:I

.field public final boz:F


# direct methods
.method private constructor <init>(Lcom/layer/atlas/b/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/layer/atlas/b/d$a;->myBubbleColor:I

    iput v0, p0, Lcom/layer/atlas/b/d;->bow:I

    iget v0, p1, Lcom/layer/atlas/b/d$a;->myTextColor:I

    iput v0, p0, Lcom/layer/atlas/b/d;->box:I

    iget v0, p1, Lcom/layer/atlas/b/d$a;->myTextStyle:I

    iput v0, p0, Lcom/layer/atlas/b/d;->boy:I

    iget v0, p1, Lcom/layer/atlas/b/d$a;->boG:F

    iput v0, p0, Lcom/layer/atlas/b/d;->boz:F

    iget-object v0, p1, Lcom/layer/atlas/b/d$a;->boH:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/layer/atlas/b/d;->boA:Landroid/graphics/Typeface;

    iget v0, p1, Lcom/layer/atlas/b/d$a;->boI:I

    iput v0, p0, Lcom/layer/atlas/b/d;->boB:I

    iget v0, p1, Lcom/layer/atlas/b/d$a;->boJ:I

    iput v0, p0, Lcom/layer/atlas/b/d;->boC:I

    iget v0, p1, Lcom/layer/atlas/b/d$a;->boK:I

    iput v0, p0, Lcom/layer/atlas/b/d;->boD:I

    iget v0, p1, Lcom/layer/atlas/b/d$a;->boL:F

    iput v0, p0, Lcom/layer/atlas/b/d;->boE:F

    iget-object v0, p1, Lcom/layer/atlas/b/d$a;->boM:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/layer/atlas/b/d;->boF:Landroid/graphics/Typeface;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/layer/atlas/b/d$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/atlas/b/d;-><init>(Lcom/layer/atlas/b/d$a;)V

    return-void
.end method
