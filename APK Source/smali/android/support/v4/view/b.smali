.class public Landroid/support/v4/view/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/b$a;,
        Landroid/support/v4/view/b$b;
    }
.end annotation


# static fields
.field private static final EW:Landroid/support/v4/view/b$b;

.field private static final EX:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final EY:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/b$a;

    invoke-direct {v0}, Landroid/support/v4/view/b$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/b;->EW:Landroid/support/v4/view/b$b;

    :goto_0
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/b$b;

    invoke-direct {v0}, Landroid/support/v4/view/b$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/b;->EW:Landroid/support/v4/view/b$b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/b;->EW:Landroid/support/v4/view/b$b;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/b$b;->a(Landroid/support/v4/view/b;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/b;->EY:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public static F(Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 2

    sget-object v0, Landroid/support/v4/view/b;->EW:Landroid/support/v4/view/b$b;

    sget-object v1, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/view/b$b;->a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public static sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Landroid/support/v4/view/a/a;->HB:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/b;->EW:Landroid/support/v4/view/b$b;

    sget-object v1, Landroid/support/v4/view/b;->EX:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/view/b$b;->a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
