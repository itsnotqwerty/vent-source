.class Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener$1;->this$0:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener$1;->this$0:Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;

    iget-object v0, v0, Lio/intercom/android/sdk/views/EndlessRecyclerScrollListener;->endlessScrollListener:Lio/intercom/android/sdk/views/EndlessScrollListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/views/EndlessScrollListener;->onLoadMore()V

    return-void
.end method
