.class Lio/intercom/android/sdk/ResetManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/ResetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/ResetManager;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/ResetManager;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/ResetManager$1;->this$0:Lio/intercom/android/sdk/ResetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/ResetManager$1;->this$0:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->hardReset()V

    return-void
.end method
