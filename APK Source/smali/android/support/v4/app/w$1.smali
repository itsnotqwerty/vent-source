.class final Landroid/support/v4/app/w$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/w;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tT:Ljava/util/ArrayList;

.field final synthetic yR:Ljava/util/ArrayList;

.field final synthetic za:I

.field final synthetic zb:Ljava/util/ArrayList;

.field final synthetic zc:Ljava/util/ArrayList;

.field final synthetic zd:Landroid/support/v4/app/w;


# direct methods
.method constructor <init>(Landroid/support/v4/app/w;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/w$1;->zd:Landroid/support/v4/app/w;

    iput p2, p0, Landroid/support/v4/app/w$1;->za:I

    iput-object p3, p0, Landroid/support/v4/app/w$1;->tT:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/w$1;->zb:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/w$1;->yR:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/w$1;->zc:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v0, p0, Landroid/support/v4/app/w$1;->za:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/w$1;->tT:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/w$1;->zb:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/w$1;->yR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/w$1;->zc:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
