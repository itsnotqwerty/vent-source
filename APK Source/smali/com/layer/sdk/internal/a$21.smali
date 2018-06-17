.class final Lcom/layer/sdk/internal/a$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/StringBuilder;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Could not find receiver for the `com.layer.sdk.PUSH` action.  Please ensure it is declared in the <application> </application> section of AndroidManifest.xml:\n    <application>\n        <receiver android:name=YOUR_PUSH_RECEIVER_CLASSNAME>\n            <intent-filter>\n                <action android:name=\"com.layer.sdk.PUSH\" />\n                <category android:name=\"${applicationId}\" />\n            </intent-filter>\n        </receiver>\n    </application>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
