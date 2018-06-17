.class Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomSheetActivity;->showSubmitActionError(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

.field final synthetic val$payload:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    iput-object p2, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;->val$payload:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;->val$payload:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->onSubmitSheetAction(Ljava/util/Map;)V

    return-void
.end method
