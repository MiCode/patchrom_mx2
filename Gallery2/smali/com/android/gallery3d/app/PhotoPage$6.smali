.class Lcom/android/gallery3d/app/PhotoPage$6;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/PhotoPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v6, 0x7f0d0194

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 584
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/ui/ActionModeHandler;->findActionView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/SelectionButton;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v5, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2502(Lcom/android/gallery3d/app/PhotoPage;Lcom/meizu/widget/SelectionButton;)Lcom/meizu/widget/SelectionButton;

    .line 585
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 586
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonInActionMode:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$2700(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v2, v5, :cond_0

    move v1, v3

    .line 589
    .local v1, landscape:Z
    :goto_0
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 590
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    if-eqz v1, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 601
    :goto_1
    return v3

    .end local v0           #item:Landroid/view/MenuItem;
    .end local v1           #landscape:Z
    :cond_0
    move v1, v4

    .line 588
    goto :goto_0

    .line 595
    .restart local v0       #item:Landroid/view/MenuItem;
    .restart local v1       #landscape:Z
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setTotalCount(I)V

    .line 596
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$2700(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 598
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSelectionButton:Lcom/meizu/widget/SelectionButton;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/meizu/widget/SelectionButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_1
.end method
