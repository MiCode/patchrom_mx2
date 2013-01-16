.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/meizu/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/meizu/internal/policy/impl/LockControllerMonitor;Lcom/meizu/internal/policy/impl/LockViewBaseSe$DragCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$4;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mMusicView:Lcom/meizu/internal/policy/impl/LockMusicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 208
    :cond_0
    return-void
.end method
