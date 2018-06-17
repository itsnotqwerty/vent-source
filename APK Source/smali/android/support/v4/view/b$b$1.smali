.class final Landroid/support/v4/view/b$b$1;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/b$b;->a(Landroid/support/v4/view/b;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EZ:Landroid/support/v4/view/b;

.field final synthetic Fb:Landroid/support/v4/view/b$b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/b$b;Landroid/support/v4/view/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/b$b$1;->Fb:Landroid/support/v4/view/b$b;

    iput-object p2, p0, Landroid/support/v4/view/b$b$1;->EZ:Landroid/support/v4/view/b;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/view/b;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/b$b$1;->EZ:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/b$b$1;->EZ:Landroid/support/v4/view/b;

    invoke-static {p2}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/b$b$1;->EZ:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/b;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/b;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/b;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
