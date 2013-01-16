.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$4;
.super Ljava/lang/Object;
.source "FindPhoneUnlockScreen.java"

# interfaces
.implements Landroid/widget/EditText$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$4;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 183
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
