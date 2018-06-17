.class Lio/intercom/android/sdk/sheets/SheetWebViewInterface$2;
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


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$2;->this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$2;->this$0:Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    invoke-static {v0}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->access$000(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;)Lio/intercom/android/sdk/sheets/SheetListener;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/sheets/SheetListener;->onCloseSheetAction()V

    return-void
.end method
