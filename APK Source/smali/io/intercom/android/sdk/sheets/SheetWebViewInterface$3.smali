.class Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->handleAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

.field final synthetic val$payload:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;->this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    iput-object p2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;->val$payload:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;->this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    invoke-static {v0}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->access$000(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;)Lio/intercom/android/sdk/sheets/SheetListener;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;->val$payload:Ljava/util/Map;

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/sheets/SheetListener;->onSubmitSheetAction(Ljava/util/Map;)V

    return-void
.end method
