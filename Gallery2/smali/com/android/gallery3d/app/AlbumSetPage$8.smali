.class Lcom/android/gallery3d/app/AlbumSetPage$8;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$finalItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$finalItem:Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 979
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 980
    const/4 v1, 0x0

    .line 981
    .local v1, deleteOriginal:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 982
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mRemoveFileDlg:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f0d0170

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 983
    .local v0, cb:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 988
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->removeCustomFolder(Z)Z
    invoke-static {v3, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2500(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    .line 989
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 990
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 991
    .local v2, executor:Lcom/android/gallery3d/ui/MenuExecutor;
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->val$finalItem:Landroid/view/MenuItem;

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 994
    .end local v1           #deleteOriginal:Z
    .end local v2           #executor:Lcom/android/gallery3d/ui/MenuExecutor;
    :cond_1
    return-void
.end method
