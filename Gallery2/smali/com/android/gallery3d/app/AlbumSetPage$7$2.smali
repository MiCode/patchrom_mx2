.class Lcom/android/gallery3d/app/AlbumSetPage$7$2;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/ActionMode$OnActionItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage$7;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage$7;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 2
    .parameter "event"
    .parameter "menuItem"

    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 796
    :goto_0
    return-void

    .line 776
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 777
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d01b0

    if-ne v0, v1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->setDragingState(I)V

    goto :goto_0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->setDragingState(I)V

    goto :goto_0

    .line 784
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage$DragAlbumBuilder;->setDragingState(I)V

    goto :goto_0

    .line 789
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onDragEnd()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)V

    goto :goto_0

    .line 792
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getDragItemPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 793
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7$2;->this$1:Lcom/android/gallery3d/app/AlbumSetPage$7;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 774
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
