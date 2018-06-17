.class Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;
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

    iput-object p1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;->this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    iput-object p2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;->val$payload:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;->this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    invoke-static {v0}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->access$000(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;)Lio/intercom/android/sdk/sheets/SheetListener;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;->val$payload:Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/sheets/SheetListener;->onSheetTitleAction(Ljava/lang/String;)V

    return-void
.end method
