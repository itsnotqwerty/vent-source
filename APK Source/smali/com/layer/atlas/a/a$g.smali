.class Lcom/layer/atlas/a/a$g;
.super Landroid/support/v7/widget/RecyclerView$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field public static final bop:I


# instance fields
.field protected final boq:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/layer/atlas/b$g;->atlas_message_item_footer:I

    sput v0, Lcom/layer/atlas/a/a$g;->bop:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    sget v0, Lcom/layer/atlas/b$f;->swipeable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/layer/atlas/a/a$g;->boq:Landroid/view/ViewGroup;

    return-void
.end method
