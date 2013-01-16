.class Lcom/android/internal/policy/impl/KeyguardViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field final synthetic val$lastActivityScreenshotView:Landroid/view/View;

.field final synthetic val$lastStatusbarScreenshotView:Landroid/view/View;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastActivityScreenshotView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastStatusbarScreenshotView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->cleanUp()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardScreenshot:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastActivityScreenshotView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->val$lastStatusbarScreenshotView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
