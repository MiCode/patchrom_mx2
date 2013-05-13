.class Lcom/android/gallery3d/ui/MenuExecutor$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->onActionShare(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;

.field final synthetic val$selectedItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$selectedItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$selectedItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->getShareIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 621
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$context:Landroid/content/Context;

    const v3, 0x7f0a0154

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$dlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 625
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mGettingRotatedUri:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1002(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    .line 628
    :cond_0
    return-void

    .line 623
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$dlg:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 625
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mGettingRotatedUri:Z
    invoke-static {v2, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1002(Lcom/android/gallery3d/ui/MenuExecutor;Z)Z

    :cond_1
    throw v1
.end method
