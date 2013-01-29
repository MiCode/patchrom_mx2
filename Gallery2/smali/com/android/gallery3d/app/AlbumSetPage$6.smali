.class Lcom/android/gallery3d/app/AlbumSetPage$6;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    const v2, 0x7f0d0194

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->findActionView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1802(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 736
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 737
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$6$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$6$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage$6;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1800(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$6;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 751
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$6$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$6$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage$6;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V

    .line 778
    const/4 v0, 0x1

    return v0
.end method
