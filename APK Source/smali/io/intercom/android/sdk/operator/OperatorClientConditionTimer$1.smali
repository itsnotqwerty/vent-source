.class Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lio/intercom/android/sdk/views/ClientConditionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;

.field final synthetic val$condition:Ljava/lang/String;

.field final synthetic val$conversationId:Ljava/lang/String;

.field final synthetic val$listener:Lio/intercom/android/sdk/views/ClientConditionListener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;Lio/intercom/android/sdk/views/ClientConditionListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->this$0:Lio/intercom/android/sdk/operator/OperatorClientConditionTimer;

    iput-object p2, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->val$listener:Lio/intercom/android/sdk/views/ClientConditionListener;

    iput-object p3, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->val$conversationId:Ljava/lang/String;

    iput-object p4, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->val$condition:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->val$listener:Lio/intercom/android/sdk/views/ClientConditionListener;

    iget-object v1, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->val$conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/operator/OperatorClientConditionTimer$1;->val$condition:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lio/intercom/android/sdk/views/ClientConditionListener;->conditionSatisfied(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
