.class public final Landroid/support/v7/widget/ba;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ba$a;
    }
.end annotation


# instance fields
.field public final Pj:Landroid/support/v7/view/menu/h;

.field private final adt:Landroid/view/View;

.field public final adu:Landroid/support/v7/view/menu/n;

.field public adv:Landroid/support/v7/widget/ba$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;B)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->popupMenuStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ba;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ba;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/widget/ba;->adt:Landroid/view/View;

    new-instance v0, Landroid/support/v7/view/menu/h;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v0, p0, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    new-instance v1, Landroid/support/v7/widget/ba$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ba$1;-><init>(Landroid/support/v7/widget/ba;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    new-instance v0, Landroid/support/v7/view/menu/n;

    iget-object v2, p0, Landroid/support/v7/widget/ba;->Pj:Landroid/support/v7/view/menu/h;

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    iput v4, v0, Landroid/support/v7/view/menu/n;->Rm:I

    iget-object v0, p0, Landroid/support/v7/widget/ba;->adu:Landroid/support/v7/view/menu/n;

    new-instance v1, Landroid/support/v7/widget/ba$2;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ba$2;-><init>(Landroid/support/v7/widget/ba;)V

    iput-object v1, v0, Landroid/support/v7/view/menu/n;->Rw:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/support/v7/view/g;

    iget-object v1, p0, Landroid/support/v7/widget/ba;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
