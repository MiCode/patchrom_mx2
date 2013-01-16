.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$2;
.super Ljava/lang/Object;
.source "FindPhoneUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 158
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$2;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$2;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mCallback:Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 161
    return-void
.end method
