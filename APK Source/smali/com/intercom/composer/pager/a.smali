.class public final Lcom/intercom/composer/pager/a;
.super Landroid/support/v4/app/r;


# instance fields
.field private final inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/intercom/composer/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/n;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/n;",
            "Ljava/util/List",
            "<+",
            "Lcom/intercom/composer/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/n;)V

    iput-object p2, p0, Lcom/intercom/composer/pager/a;->inputs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/r;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    iget-object v1, p0, Lcom/intercom/composer/pager/a;->inputs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intercom/composer/b/b;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/intercom/composer/b/b;->setFragmentTag(Ljava/lang/String;)V

    return-object v0
.end method

.method public final ac(I)Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/pager/a;->inputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    invoke-virtual {v0}, Lcom/intercom/composer/b/b;->createFragment()Lcom/intercom/composer/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/intercom/composer/pager/a;->inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
