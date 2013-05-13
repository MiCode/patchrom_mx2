.class Lcom/android/gallery3d/app/AlbumPage$9;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v6, 0x7f0d01b2

    const/16 v5, 0x8

    const/4 v3, 0x1

    .line 841
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2600(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/ui/ActionModeHandler;->findActionView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v4, v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2502(Lcom/android/gallery3d/app/AlbumPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 842
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 844
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$2700(Lcom/android/gallery3d/app/AlbumPage;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 847
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$2700(Lcom/android/gallery3d/app/AlbumPage;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 849
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setCurrentCount(I)V

    .line 852
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 853
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 868
    :goto_0
    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$9$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AlbumPage$9$1;-><init>(Lcom/android/gallery3d/app/AlbumPage$9;)V

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V

    .line 896
    return v3

    .line 855
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$3000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$3000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_4

    move v1, v3

    .line 856
    .local v1, landscape:Z
    :goto_1
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 857
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 858
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    :cond_3
    if-eqz v1, :cond_5

    .line 861
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    .line 855
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v1           #landscape:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 863
    .restart local v0       #item:Landroid/view/MenuItem;
    .restart local v1       #landscape:Z
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 864
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$2800(Lcom/android/gallery3d/app/AlbumPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0
.end method
