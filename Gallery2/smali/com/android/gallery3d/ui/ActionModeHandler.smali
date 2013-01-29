.class public Lcom/android/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActive:Z

.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mTitle:Ljava/lang/String;

.field private mViewId:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "title"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 77
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 81
    const v0, 0x7f110001

    iput v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mViewId:I

    .line 82
    iput-object p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method


# virtual methods
.method public findActionView(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 408
    :cond_0
    return-object v0
.end method

.method public findMenuItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "id"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 118
    :cond_0
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 131
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v6

    .line 132
    .local v6, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 139
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v7, :cond_0

    .line 140
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v7, p2}, Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 141
    .local v5, result:Z
    if-eqz v5, :cond_0

    .line 189
    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 191
    .end local v5           #result:Z
    :goto_0
    return v5

    .line 146
    :cond_0
    const/4 v3, 0x0

    .line 147
    .local v3, listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v1, 0x0

    .line 148
    .local v1, confirmMsg:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/SelectionManager;->getDragItemPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 149
    .local v2, dragItemPath:Lcom/android/gallery3d/data/Path;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 150
    .local v0, action:I
    const v7, 0x7f0d01a4

    if-ne v0, v7, :cond_5

    .line 151
    new-instance v3, Lcom/android/gallery3d/ui/ImportCompleteListener;

    .end local v3           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v3, v7}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    .line 176
    .restart local v3       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v7, p2, v1, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 177
    const v7, 0x7f0d0190

    if-eq v0, v7, :cond_2

    const v7, 0x7f0d0191

    if-eq v0, v7, :cond_2

    const v7, 0x7f0d0193

    if-ne v0, v7, :cond_3

    .line 180
    :cond_2
    if-eqz v2, :cond_3

    .line 181
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/SelectionManager;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 184
    :cond_3
    const v7, 0x7f0d01b1

    if-ne v0, v7, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_4
    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 191
    const/4 v5, 0x1

    goto :goto_0

    .line 152
    :cond_5
    :try_start_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f0d0192

    if-ne v7, v8, :cond_1

    .line 153
    if-nez v2, :cond_6

    .line 154
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f10

    iget-object v9, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 157
    :cond_6
    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 158
    .local v4, obj:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v4, :cond_7

    instance-of v7, v4, Lcom/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_7

    .line 159
    iget-object v7, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f10

    iget-object v9, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_7
    new-instance v3, Lcom/android/gallery3d/ui/ActionModeHandler$1;

    .end local v3           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v3       #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    goto :goto_1

    .line 189
    .end local v0           #action:I
    .end local v1           #confirmMsg:Ljava/lang/String;
    .end local v2           #dragItemPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #listener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :catchall_0
    move-exception v7

    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v7
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 216
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 217
    .local v0, inflater:Landroid/view/MenuInflater;
    iget v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mViewId:I

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    invoke-static {p2}, Lcom/android/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 220
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v2, :cond_0

    .line 221
    new-instance v1, Lcom/android/gallery3d/ui/ActionModeHandler$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/ActionModeHandler$2;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V

    .line 228
    .local v1, listener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 230
    .end local v1           #listener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    :cond_0
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 231
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    .line 232
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 235
    :cond_1
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    .line 245
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 386
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    if-eqz v0, :cond_1

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActive:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->finishActionMode()V

    .line 390
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 395
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    .line 397
    :cond_0
    return-void
.end method

.method public setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mListener:Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .line 127
    return-void
.end method

.method public setViewId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 400
    iput p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mViewId:I

    .line 401
    return-void
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 89
    .local v0, a:Landroid/app/Activity;
    monitor-enter p0

    .line 90
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 91
    .local v1, actionMode:Landroid/view/ActionMode;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionMode:Landroid/view/ActionMode;

    .line 110
    return-object v1

    .line 91
    .end local v1           #actionMode:Landroid/view/ActionMode;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateSupportedOperation()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method
