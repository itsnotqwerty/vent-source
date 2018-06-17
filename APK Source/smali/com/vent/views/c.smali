.class public abstract Lcom/vent/views/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# instance fields
.field private Hj:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(I)V
    .locals 0

    return-void
.end method

.method public Q(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vent/views/c;->ei(I)V

    return-void
.end method

.method public final a(IFI)V
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/vent/views/c;->Hj:Z

    if-nez v1, :cond_1

    if-lez p3, :cond_0

    iput-boolean v0, p0, Lcom/vent/views/c;->Hj:Z

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/vent/views/c;->ei(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    if-eqz p3, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/vent/views/c;->Hj:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract ei(I)V
.end method
