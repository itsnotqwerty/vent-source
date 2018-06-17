.class public final Landroid/support/v4/app/p;
.super Ljava/lang/Object;


# instance fields
.field final ys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/i;",
            ">;"
        }
    .end annotation
.end field

.field final yt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/p;",
            ">;"
        }
    .end annotation
.end field

.field final yu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/i;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/p;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/p;->ys:Ljava/util/List;

    iput-object p2, p0, Landroid/support/v4/app/p;->yt:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/app/p;->yu:Ljava/util/List;

    return-void
.end method
