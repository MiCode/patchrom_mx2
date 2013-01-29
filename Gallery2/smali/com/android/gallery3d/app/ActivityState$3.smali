.class Lcom/android/gallery3d/app/ActivityState$3;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ActivityState;->deleteSelectedObject(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ActivityState;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ActivityState;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$3;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 425
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$3;->val$context:Landroid/content/Context;

    check-cast v1, Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState$3;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 426
    .local v0, menuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    const v1, 0x7f0d0192

    const v2, 0x7f0a0147

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 427
    return-void
.end method
