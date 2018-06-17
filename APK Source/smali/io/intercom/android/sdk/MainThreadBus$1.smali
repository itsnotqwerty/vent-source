.class Lio/intercom/android/sdk/MainThreadBus$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/MainThreadBus;->post(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/MainThreadBus;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/MainThreadBus;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/MainThreadBus$1;->this$0:Lio/intercom/android/sdk/MainThreadBus;

    iput-object p2, p0, Lio/intercom/android/sdk/MainThreadBus$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/MainThreadBus$1;->this$0:Lio/intercom/android/sdk/MainThreadBus;

    iget-object v1, p0, Lio/intercom/android/sdk/MainThreadBus$1;->val$event:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/MainThreadBus;->access$001(Lio/intercom/android/sdk/MainThreadBus;Ljava/lang/Object;)V

    return-void
.end method
