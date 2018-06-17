.class final Landroid/support/v4/app/a$e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/ag$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/a$e;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wg:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

.field final synthetic wh:Landroid/support/v4/app/a$e;


# direct methods
.method constructor <init>(Landroid/support/v4/app/a$e;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/a$e$1;->wh:Landroid/support/v4/app/a$e;

    iput-object p2, p0, Landroid/support/v4/app/a$e$1;->wg:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedElementsReady()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/a$e$1;->wg:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
